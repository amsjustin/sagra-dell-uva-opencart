<!DOCTYPE html>
<html>
    <head>
        <title>Sagra dell'Uva</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

        <?php if ($description) { ?>
        <meta name="description" content="<?php echo $description; ?>" />
        <?php } ?>
        <?php if ($keywords) { ?>
        <meta name="keywords" content="<?php echo $keywords; ?>" />
        <?php } ?>

        <link rel="stylesheet" type="text/css" href="html/assets/css/font.css">
        <link rel="stylesheet" type="text/css" href="html/assets/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="html/assets/css/style.css">
        <link rel="stylesheet" type="text/css" href="html/assets/css/glyphicon.css">
        <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/slideshow.css">
        <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/carousel.css">


        <script type="text/javascript" src="html/js/lib/jquery-1.8.2.min.js"></script>
        <script type="text/javascript" src="html/js/lib/jquery.inputfield.js"></script>
        <script type="text/javascript" src="html/js/lib/respond.min.js"></script>
        <script type="text/javascript" src="html/js/lib/chart.min.js"></script>
        <script type="text/javascript" src="html/js/lib/common.js"></script>

        <?php foreach ($scripts as $script) { ?>
        <script type="text/javascript" src="<?php echo $script; ?>"></script>
        <?php } ?>
        <!--[if IE 7]> 
        <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
        <![endif]-->
        <!--[if lt IE 7]>
        <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
        <script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
        <script type="text/javascript">
        DD_belatedPNG.fix('#logo img');
        </script>
        <![endif]-->

    </head>
    <body>
        <div class="wrapper">
            <div class="main">
                <header class="header">
                    <div class="header__top">
                        <div class="inner">
                            <div class="header__logo">
                                <a title="Sagra dell\'UVA" href="<?php echo $base; ?>"><img src="html/assets/img/logo.jpg"></a>
                            </div>
                            <div class="header__account">
                                <div class="header__login">
                                    <?php if($logged){ ?>
                                    <p>Welcome! Bekijk je <a href="<?php echo $base; ?>/index.php?route=account/account">account</a> of <a href="<?php echo $base; ?>/index.php?route=account/logout">log uit</a> </p>
                                    <?php }else { ?>
                                    <p class="login">Welcome visitor you can <a href="<?php echo $base; ?>/index.php?route=account/login">login</a> or <a href="<?php echo $base; ?>/index.php?route=account/register">create an account</a></p>
                                    <?php } ?>
                                </div>
                                <div class="header__cart">
                                    <?php echo $cart; ?>
                                </div>
                            </div>
                            <div class="clear-fix"></div>
                        </div>
                    </div>
                    <div class="header__bottom">
                        <div class="inner">
                            <div class="search">
                                <form class="search__form">
                                    <div class="search__input-holder">
                                        <input type="text" value="search">
                                    </div>
                                    <div id="search-btn-submit" class="search__form-submit"><i class="icon-magnifyglass"></i></div>
                                </form>
                            </div>
                            <div class="global-nav__container">
                                <div class="global-nav__button">
                                    <a id="gloval-nav-btn" title="Klik" href="javascript:void(0);">
                                        <i class="icon-pancake"></i>
                                    </a>
                                </div>
                                <nav id="global-nav" class="global-nav global-nav--inactive">
                                    <ul class="global-nav__ul">
                                        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total"><i class="glyphicon glyphicon-glass"></i><?php echo $text_wishlist; ?></a></li>
                                        <li><a href="<?php echo $account; ?>"><i class="glyphicon glyphicon glyphicon-user"></i><?php echo $text_account; ?></a></li>
                                        <li><a href="<?php echo $shopping_cart; ?>"><i class="glyphicon glyphicon-shopping-cart"></i><?php echo $text_shopping_cart; ?></a></li>
                                    </ul>
                                </nav>
                            </div> 
                            <div class="clear-fix"></div>
                        </div>
                    </div>
                </header>
                <section class="content">
                    <div class="inner">
                        <?php if ($error) { ?>
                        <div class="warning"><?php echo $error ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
                        <?php } ?>
                        <div id="notification"></div>
