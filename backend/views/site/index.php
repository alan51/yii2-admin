<?php

/* @var $this yii\web\View */

$this->title = '欢迎登录后台管理系统';
?>
<div class="site-index">
	<div class="page-title">
		<h2 style="margin-top: 30px;">
			<i class="fa fa-comment-o"></i> Hi!~ <?= Yii::$app->user->identity->username?>，愉快的一天就在现在开始~<br>
		</h2>
	</div>
	<iframe name="weather_inc" src="http://i.tianqi.com/index.php?c=code&amp;id=2&amp;num=5" width="650" height="70" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
	<div class="container text-center">
		<h5><p style="margin: 45px"><h3>技术服务热线：0736-6666888</h3></p></h5>
	</div>
</div>
