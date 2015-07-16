<?php
/**
 * PHP 5.0 以上
 * 
 * @package         Wavephp
 * @author          许萍
 * @copyright       Copyright (c) 2013
 * @link            https://github.com/xpmozong/wavephp
 * @since           Version 1.0
 *
 */

/**
 * Wavephp Application Model Class
 *
 * 数据模型基类
 *
 * @package         Wavephp
 * @author          许萍
 *
 */
class Model
{
    protected static $db;
    public $cache;
    protected $_select              = array();
    protected $_from                = '';
    protected $_join                = array();
    protected $_distinct            = false;
    protected $_where               = array();
    protected $_like                = array();
    protected $_instr               = array();
    protected $_offset              = '';
    protected $_limit               = '';
    protected $_group               = array();
    protected $_order               = array();
    protected $_tableName           = '';

    /**
     * 查询字段
     *
     * @param string $field 字段
     *
     * @return $this 
     *
     */
    public function select($field = '*')
    {
        if( !is_array( $field ) ){
            $field = explode(',', $field);
        }
        foreach( $field as $v ){
            $val = $v;
            $this->_select[] = $val;
        }

        return $this;
    }

    /**
     * 取得某个字段的最大值
     *
     * @access public
     * @param string $field  字段名
     * @param mixed $where  条件
     *
     */
    public function max($field, $alias = 'max')
    {
        $alias = ($alias != '') ? $alias : $field;
        $sql = 'MAX('.$field.') AS '.$alias;
        $this->_select[] = $sql;

        return $this;
    }

    /**
     * 取得某个字段的最小值
     *
     * @access public
     * @param string $field  字段名
     * @param mixed $where  条件
     *
     */
    public function min($field, $alias = 'min')
    {
        $alias = ($alias != '') ? $alias : $field;
        $sql = 'MIN('.$field.') AS '.$alias;
        $this->_select[] = $sql;

        return $this;
    }

    /**
     * 统计某个字段的平均值
     *
     * @access public
     * @param string $field  字段名
     * @param mixed $condition  条件
     *
     */
    public function avg($field, $alias = 'avg')
    {
        $alias = ($alias != '') ? $alias : $field;
        $sql = 'AVG('.$field.') AS '.$alias;
        $this->_select[] = $sql;

        return $this;
    }

    /**
     * 统计某个字段的总和
     *
     * @access public
     * @param string $field  字段名
     * @param mixed $where  条件
     * @return integer
     */
    public function sum($field, $alias = 'sum')
    {
        $alias = ($alias != '') ? $alias : $field;
        $sql = 'SUM('.$field.') AS '.$alias;
        $this->_select[] = $sql;

        return $this;
    }

    /**
     * 查询某表
     *
     * @param string $tableName 表名
     *
     * @return $this 
     *
     */
    public function from($tableName)
    {
        if ($tableName) {
            $this->_from = $tableName;
        }else{
            $this->_from = $this->_tableName;
        }

        return $this;
    }


    /**
     * 连表查询
     *
     * @param string $table         表
     * @param string $conditions    条件
     *
     * @return $this 
     *
     */
    public function join($table, $conditions, $type = 'LEFT')
    {
        $type = strtoupper($type);
        $con = explode('=', $conditions);
        $this->_join[] = $type.' JOIN '.$table.' ON '.$con[0].'='.$con[1];

        return $this;
    }

    /**
     * 是否过滤重复记录
     *
     * @return $this
     *
     */
    public function distinct($val = true)
    {
        $this->_distinct = (is_bool($val)) ? $val : true;
        
        return $this;
    }

    /**
     * IN
     *
     * @param string $conditions 条件
     *
     * @return $this
     *
     */
    public function in($where, $not = false, $type = 'AND')
    {
        if (!empty($where) && is_array($where)) {
            foreach ($where as $k => $v) {
                $prefix = (count($this->_where) == 0) ? '' : $type.' ';
                $not = $not ? ' NOT' : '';
                $arr = array();
                $values = explode(',', $v);
                foreach ($values as $value) {
                    $arr[] = self::$db->escape($value);
                }

                $this->_where[] = $prefix . $k . $not . " IN (" . implode(", ", $arr) . ") ";
            }
        }
        
        return $this;
    }

    /**
     * NOT IN
     *
     * @param string $conditions 条件
     *
     * @return $this
     *
     */
    public function notin($where, $type = 'AND')
    {
        return $this->in($where, true, $type);
    }

    /**
     * 条件查询
     *
     * @param string $conditions 条件 
     *
     * @return $this
     *
     */
    public function where($where, $type = 'AND', $type2 = '')
    {
        if (!empty($where) && is_array($where)) {
            foreach ($where as $k => $v) {
                $prefix = (count($this->_where) == 0) ? '' : $type.' ';
                if ( !self::$db->_parse($k) && is_null($v) ) {
                    $k .= ' IS NULL';
                }
                if ( !self::$db->_parse($k)) {
                    $k .= ' =';
                }
                if (!is_null($v)) {
                    $v = self::$db->escape($v);
                }
                if ( !empty($type2) ){
                    $_where[] = $k.' '.$v;
                }else{
                    $this->_where[] = $prefix.$k.' '.$v;
                }
            }
            if ( !empty($type2) && !empty($_where)){
                $this->_where[] = $prefix .'('.  implode(" $type2 ", $_where) . ') ';
            }
        }

        return $this;
    }


    public function orlike($where, $not = false, $like='all') {
        return $this->like($where, $not, 'OR', $like);
    }

    /**
     * 模糊查询
     *
     * @param array $where      条件数组
     * @param bool $not         是否NOT
     * @param string $type      AND或OR
     * @param string $like      相似范围  
     *
     * @return $this
     *
     */
    public function like($where, $not = false, $type = 'AND', $like = 'all')
    {
        if (!empty($where) && is_array($where)) {
            foreach ( $where as $k => $v ) {
                $prefix = (count($this->_like) == 0) ? '' : $type.' ';
                $not = ($not) ? ' NOT' : '';
                $arr = array();
                $v = str_replace("+", " ", $v);
                $values = explode( ' ', $v );
                foreach ( $values as $value ) {
                    if ( $like == 'left' ) {
                        $keyword = "'%{$value}'";
                    }else if ( $like == 'right' ) {
                        $keyword = "'{$value}%'";
                    }else {
                        $keyword = "'%{$value}%'";
                    }
                    $arr[] =  $k . $not.' LIKE '.$keyword;
                }
                $this->_like[] = $prefix .'('.  implode(" OR ", $arr) . ') ';
            }
        }

        return $this;
    }

    public function orinstr($where) {
        return $this->instr($where, 'OR');
    }

    /**
     * INSTR(字段名, 字符串)
     * 返回字符串在某一个字段的内容中的位置,
     * 没有找到字符串返回0，否则返回位置（从1开始）
     *
     * @param array $where      条件数组
     * @param string $type      AND或OR
     *
     * @return $this
     *
     */
    public function instr($where, $type = 'AND')
    {
        if (!empty($where) && is_array($where)) {
            foreach ( $where as $k => $v )
            {
                $prefix = (count($this->_instr) == 0) ? '' : $type.' ';
                $arr = array();
                $v = str_replace("+", " ", $v);
                $values = explode( ' ', $v );
                foreach ( $values as $value ) {
                    $arr[] =  'INSTR('.$k.', '.self::$db->escape($value).')';
                }
                $this->_instr[] = $prefix .'('.  implode(" OR ", $arr) . ') ';
            }
        }

        return $this;
    }

    /**
     * 查询条数
     *
     * @param int $offset       第几条
     * @param int $limit        多少条数据
     * 
     * @return $this
     *
     */
    public function limit($offset = 0, $limit)
    {
        $this->_limit = $limit;
        $this->_offset = $offset;

        return $this;
    }

    /**
     * GROUP BY
     *
     * @param string $field     字段
     * 
     * @return $this
     *
     */
    public function group($field)
    {
        if (!empty($field)) {
            if (is_string($field)) {
                $field = explode(',', $field);
            }
            foreach ( $field as $v ) {
                $this->_group[] = $v;
            }
        }
        
        return $this;
    }

    /**
     * 排序
     *
     * @param string $orderStr  字段排序
     *
     * @return $this
     *
     */
    public function order($orderStr, $direction = "desc")
    {
        if (!empty($orderStr)) {
            $direction = strtoupper($direction);

            if ($direction == "RAND") {
                $direction = "RAND()";
            }

            $this->_order[] = $orderStr.' '.$direction;
        }

        return $this;
    }

    /**
     * 连接sql语句
     *
     * @return string $sql
     *
     */
    public function compileSelect()
    {
        $sql = ( !$this->_distinct) ? 'SELECT ' : 'SELECT DISTINCT ';
        $sql .= (count($this->_select) == 0) ? '*' 
                : implode(', ', $this->_select);
        $sql .= ' FROM ';
        $sql .= $this->_from;
        $sql .= ' ';
        $sql .= implode(' ', $this->_join);
        if (count($this->_where) > 0 
            OR count($this->_like) > 0 
            OR count($this->_instr) > 0) {
            $sql .= ' WHERE ';
        }
        $sql .= implode(' ', $this->_where);

        if (count($this->_like) > 0) {
            if (count($this->_where) > 0) {
                $sql .= ' AND ';
            }
            $sql .= implode(' ', $this->_like);
        }

        if (count($this->_instr) > 0) {
            if (count($this->_where) > 0 OR count($this->_like) > 0) {
                $sql .= ' AND ';
            }
            $sql .= implode(' ', $this->_instr);
        }

        if (count($this->_group) > 0) {
            $sql .= ' GROUP BY ';
            $sql .= implode(', ', $this->_group);
        }

        if (count($this->_order) > 0) {
            $sql .= ' ORDER BY ';
            $sql .= implode(', ', $this->_order);
        }

        if (is_numeric($this->_limit) && $this->_limit > 0) {
            $sql .= self::$db->limit($this->_offset, $this->_limit);
        }

        $this->resetSelect();

        return $sql;
    }

    /**
     * 重置查询数组
     */
    public function resetSelect()
    {
        $vars = array(
            '_select'   => array(),
            '_from'     => '',
            '_join'     => array(),
            '_where'    => array(),
            '_like'     => array(),
            '_instr'    => array(),
            '_group'    => array(),
            '_order'    => array(),
            '_distinct' => false,
            '_limit'    => false,
            '_offset'   => false
        );

        $this->resetRun($vars);
    }

    /**
     * 重置查询数组 执行
     */
    public function resetRun($vars)
    {
        foreach($vars as $item => $default_value) {
            $this->$item = $default_value;
        }
    }

    /**
     * sql语句执行
     *
     * @param string $sql       sql语句
     *
     * @return bool 
     *
     */
    public function sqlQuery($sql)
    {
        return self::$db->query($sql);
    }

    /**
     * 根据条件获得全部数据
     *
     * @param string $sql       sql语句
     *
     * @return array 
     *
     */
    public function getAll($cache_key = '', $exp = 0)
    {
        if (!empty($cache_key) && is_object($this->cache)) {
            if ($rs = $this->cache->get($cache_key)) {
                $this->resetSelect();
                return $rs;
            }
        }

        self::$db->sql = $this->compileSelect();
        $rs = self::$db->getAll();

        if (!empty($cache_key) && is_object($this->cache)) {
            $this->cache->set($cache_key, $rs, 0, $exp);
        }

        return $rs;
    }

    /**
     * 根据sql获得全部数据
     */
    public function queryAll($sql)
    {
        self::$db->sql = $sql;

        return self::$db->getAll();
    }

    /**
     * 根据条件获得单条数据
     *
     * @param string $sql       sql语句
     *
     * @return array 
     *
     */
    public function getOne($cache_key = '', $exp = 0)
    {
        if (!empty($cache_key) && is_object($this->cache)) {
            if ($rs = $this->cache->get($cache_key)) {
                $this->resetSelect();
                return $rs;
            }
        }

        self::$db->sql = $this->compileSelect();
        $rs = self::$db->getOne();

        if (!empty($cache_key) && is_object($this->cache)) {
            $this->cache->set($cache_key, $rs, 0, $exp);
        }

        return $rs;
    }

    /**
     * 根据sql获得单条数据
     */
    public function queryOne($sql)
    {
        self::$db->sql = $sql;

        return self::$db->getOne();
    }

    /**
     * 插入数据
     *
     * @param string $tableName     表名
     * @param array $data           数据
     *
     * @return bool
     *
     */
    public function insert($tableName, $data)
    {
        return self::$db->insertdb($tableName, $data);
    }

    /**
     * 更新数据
     *
     * @param string $tableName     表名
     * @param array $data           数据
     * @param string $conditions    条件
     *
     * @return bool
     *
     */
    public function update($tableName, $data, $where, $cache_key = '')
    {
        if(!isset($where) || !is_array($where) ) exit('参数错误');
        if (!empty($cache_key) && is_object($this->cache)){
            $this->cache->delete($cache_key);
        }
        $this->where($where);
        $conditions = implode(' ', $this->_where);

        self::$db->updatedb($tableName, $data, $conditions);
        $this->resetSelect();

        return self::$db->affectedRows();
    }

    /**
     * 获得刚插入数据id
     *
     * @return int
     *
     */
    public function insertId()
    {
        return self::$db->insertId();
    }

    /**
     * 删除数据
     *
     * @return bool
     *
     */
    public function delete($table, $where, $cache_key = '')
    {
        if(!isset($where) || !is_array($where) ) exit('参数错误');
        if (!empty($cache_key) && is_object($this->cache)){
            $this->cache->delete($cache_key);
        }
        $this->where($where);
        $conditions = implode(' ', $this->_where);
        self::$db->delete($table, $conditions);
        $this->resetSelect();

        return self::$db->affectedRows();
    }

}
?>