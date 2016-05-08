基于Yii 2 高级版本制作的后台系统,下载即可运行
===============================
>项目主要是Yii2-adminlte主题,然后集成了yii2-admin管理系统,是一个拿来即用的系统,不需要复杂的配置
>只需要进行nginx域名配置和Apache域名配置,后续说明待续....

###nginx配置代码
```
    server{
        server_name www.advance.admin.com advance.admin.com;
        access_log   /usr/local/var/log/nginx/advance/access.log;
        error_log    /usr/local/var/log/nginx/advance/error.log;
        root /Users/alan/Documents/nginx_www/yii2-super-admin/backend/web;
        index index.php;
        set $dir "";
        if ($request_uri ~ ^/([^/]*)/.*$ ) {
              set $dir1 /$1;
        }
        location / {
                try_files $uri $uri/ $dir1/index.php?$args;
        }
        if (!-e $request_filename){  
            rewrite ^/(.*) /index.php last;  
        } 
        location ~ \.php$ {
    	fastcgi_pass  127.0.0.1:9000;
    	fastcgi_index index.php;
            include /usr/local/etc/nginx/fastcgi_params;
            fastcgi_param  SCRIPT_FILENAME  /Users/alan/Documents/nginx_www/yii2-super-admin/backend/web/$fastcgi_script_name;
        }
        }
```
###apache配置代码
```
   待续
```

Yii的2高级项目模板是一个[Yii的2]（http://www.yiiframework.com/）的应用最适合
发展与多层次复杂的Web应用程序。
所述模板包括三层：前端，后端，和控制台，其每一个
是一个单独的Yii应用。
模板设计在一个团队开发环境中工作。它支持
部署在不同的环境中的应用。
文档在 [docs/guide/README.md](docs/guide/README.md).

[![Latest Stable Version](https://poser.pugx.org/yiisoft/yii2-app-advanced/v/stable.png)](https://packagist.org/packages/yiisoft/yii2-app-advanced)
[![Total Downloads](https://poser.pugx.org/yiisoft/yii2-app-advanced/downloads.png)](https://packagist.org/packages/yiisoft/yii2-app-advanced)
[![Build Status](https://travis-ci.org/yiisoft/yii2-app-advanced.svg?branch=master)](https://travis-ci.org/yiisoft/yii2-app-advanced)

目录结构
-------------------

```
common
    config/              包含共享配置
    mail/                包含电子邮件视图文件
    models/              包含在这两个后端和前端使用的模型类
console
    config/              包含控制台配置
    controllers/         包含控制台控制器（命令）
    migrations/          包含数据库迁移
    models/              包含特定控制台的模型类
    runtime/             包含运行时生成的文件
backend
    assets/              包含应用程序资产JavaScript和CSS等
    config/              c后端包含配置
    controllers/         包含网络控制器类
    models/              包含特定于后端的模型类
    runtime/             包含在运行时生成的文件
    views/               包含Web应用程序的视图文件
    web/                 包含入口脚本和Web资源
frontend
    assets/              包含应用程序资产JavaScript和CSS等
    config/              前端包含配置
    controllers/         网页包含控制器类
    models/              包含特定前端模型类
    runtime/             包含在运行时生成的文件
    views/               包含Web应用程序的视图文件
    web/                 包含入口脚本和Web资源
    widgets/             包含前端部件
vendor/                  包含依赖第三方软件包
environments/            包含基于环境覆盖
tests                    包含高级应用各种测试
    codeception/         包含PHP Codeception测试框架开发的测试
```
# yii2-admin
