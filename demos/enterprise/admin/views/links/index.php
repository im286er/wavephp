<?php $homeUrl = Wave::app()->homeUrl;?>
<script type="text/javascript">
// 删除
var mdelete = function(id){
    if(window.confirm('确定删除？')){
        $.getJSON("<?php echo $homeUrl.'links/delete/';?>"+id, function(data){
            if(data.success == true){
                window.location.href = "<?php echo $homeUrl.'links';?>";
            }else{
                alert(data.msg);
            }
        })
    }
}

</script>
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">友情链接列表
                <button type="button" class="btn btn-success btn-xs pull-right" onclick="javascript:location.href='<?php echo $homeUrl.'links/modify/0';?>'">
                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 添加链接
                </button>
            </h3>
        </div>
        <div class="panel-body">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th width="8%">ID</th>
                        <th width="40%">链接标题</th>
                        <th width="32%">链接URL</th>
                        <th width="20%">操作</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($list as $key => $value):?>
                    <tr>
                        <td><?php echo $value['lid'];?></td>
                        <td><?php echo $value['title'];?></td>
                        <td><?php echo $value['url'];?></td>
                        <td>
                            <button type="button" class="btn btn-info btn-xs" onclick="javascript:location.href='<?php echo $homeUrl.'links/modify/'.$value['lid'];?>'">修改</button>
                            |
                            <button type="button" class="btn btn-danger btn-xs" onclick="mdelete(<?php echo $value['lid'];?>)">删除</button>
                        </td>
                    </tr>
                    <?php endforeach;?>
                </tbody>
            </table>
        </div>
    </div>
</div>