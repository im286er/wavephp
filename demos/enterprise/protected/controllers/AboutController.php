<?php
/**
 * 网站默认入口控制层
 */
class AboutController extends Controller
{
       
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * 公司简介
     */
    public function actionIndex($sid)
    {
        $Common = new Common();
        $data = $Common->getOneData('substance', '*', 'sid', $sid);
        $render = array('data' => $data);

        $links = $Common->getFieldList('links', '*', 'lid desc');
        $this->render('layout/header');
        $this->render('about/index', $render);
        $this->render('layout/footer', array('links'=>$links));
        $this->debuger();
    }

}

?>