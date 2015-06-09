<?php $homeUrl = Wave::app()->homeUrl;?>
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">公众账号管理
                <button type="button" class="btn btn-success btn-xs pull-right" onclick="javascript:location.href='<?php echo $homeUrl.'wx/modify/0';?>'">
                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 绑定公众号
                </button>
            </h3>
        </div>
        <div class="panel-body">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th width="8%">ID</th>
                        <th width="40%">公众号</th>
                        <th width="32%">账号类型</th>
                        <th width="20%">操作</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($list as $key => $value):?>
                    <tr>
                        <td><?php echo $value['gid'];?></td>
                        <td><?php echo $value['gh_name'].'<br>'.$value['gh_id'];?></td>
                        <td><?php echo $value['gh_type'];?></td>
                        <td>
                            <button type="button" class="btn btn-info btn-xs" onclick="javascript:location.href='<?php echo $homeUrl.'wx/modify/'.$value['gid'];?>'">修改</button>
                        </td>
                    </tr>
                    <?php endforeach;?>
                </tbody>
            </table>
        </div>
    </div>
</div>