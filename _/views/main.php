<?php defined('SYSPATH') or die('No direct script access.'); ?>
<!DOCTYPE html>
<html>
    <head>
        <title><?php echo isset($title) ? $title :  Arr::path($config, 'blog.name')  ?></title>

        <!-- Base URL -->
        <base href="<?php echo URL::base(true, false) ?>">

        <!-- System -->
        <meta name="author" content="<?php echo isset($author) ? $author : Arr::path($config, 'blog.author') ?>" />
        <meta name="description" content="<?php echo isset($description) ? $description : Arr::path($config, 'blog.description') ?>" />
        <meta name="keywords" content="<?php echo isset($keywords) ? $keywords : Arr::path($config, 'blog.keywords') ?>" />

        <!-- Twitter Bootstrap -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link href="public/css/bootstrap.min.css" type="text/css" rel="stylesheet" media="all" />
        <link href="public/css/style.css" type="text/css" rel="stylesheet" media="all" />
        <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script type="text/javascript" src="html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                        <ul class="nav pull-right">
                            <li><a href="/">главная</a></li>
                            <li><a href="/blog/addpost">разместить запись</a></li>
                            <?php if (isset($user)) { ?>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Вы вошли как: <?php echo $user->username; ?></a>
                                <ul class="dropdown-menu">
                                    <li><a href="<?php echo URL::site('/admin/auth/logout') ?>">выход</a></li>
                                </ul>
                            </li>
                            <?php } else { ?>
                            <li><a href="admin/auth/login">вход</a></li>
                            <?php } ?>
                        </ul>
                </div>
            </div>
        </div>
        <!-- Template Content  -->
        <?php echo isset($content) ? $content : '' ?>

        <!-- JS Code -->
        <script type="text/javascript" src="public/js/jquery-2.1.3.min.js"></script>
        <script type="text/javascript" src="public/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="public/js/custom.js"></script>
    </body>
</html>