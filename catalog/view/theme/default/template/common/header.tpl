<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Sagra dell'Uva</title>
        <base href="<?php echo $base; ?>" />
        <?php if ($description) { ?>
        <meta name="description" content="<?php echo $description; ?>" />
        <?php } ?>
        <?php if ($keywords) { ?>
        <meta name="keywords" content="<?php echo $keywords; ?>" />
        <?php } ?>
        <?php if ($icon) { ?>
        <link href="<?php echo $icon; ?>" rel="icon" />
        <?php } ?>
        <?php foreach ($links as $link) { ?>
        <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
        <?php } ?>
        <!--<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet.css" />-->
        <?php foreach ($styles as $style) { ?>

        <?php } ?>

        <link rel="stylesheet" type="text/css" href="html/assets/css/font.css">
        <link rel="stylesheet" type="text/css" href="html/assets/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="html/assets/css/style.css">

        <script type="text/javascript" src="html/js/lib/jquery-1.8.2.min.js"></script>
        <script type="text/javascript" src="html/js/lib/jquery.inputfield.js"></script>
        <script type="text/javascript" src="html/js/lib/respond.min.js"></script>



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
                                <a href="#"><img src="html/assets/img/logo.jpg"></a>
                            </div>
                            <div class="header__account">
                                <p>Welcome visitor you can <a href="http://localhost/opencart/index.php?route=account/login">login</a> or <a href="http://localhost/opencart/index.php?route=account/register">create an account</a></p>
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
                                        <?php 
                                            // menu array (later vullen met database etc)
                                            $wine_menu_title = array(
                                            "category item 1",
                                            "category item 2",
                                            "category item 3",
                                            "category item 4",
                                            "category item 5",
                                            "category item 6",
                                            "category item 7",
                                            "category item 8",
                                            "category item 9",
                                            "category item 10",
                                            "category item 11",
                                            "category item 12",
                                            );
                                        ?>
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
