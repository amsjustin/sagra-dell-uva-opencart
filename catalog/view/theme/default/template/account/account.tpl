<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php echo $column_right; ?>
<section class="product-overview" id="content">
    <div class="product-overview__breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>
    <div class="overview-content">
        <h1>Mijn Profiel</h1>
        <div class="account">
            <div class="account__profile-pic"></div>
            <div class="account__profile-creditials"></div>
            <div class="account__profile-sum"></div>
        </div>
        <div class="content">
            <ul>
                <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
                <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
                <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
            </ul>
        </div>
        <h2><?php echo $text_my_orders; ?></h2>
        <div class="content">
            <ul>
                <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                <!--<li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>-->
                <?php if ($reward) { ?>
                <li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li>
                <?php } ?>
                <!--<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>-->
                <!--<li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>-->
                <!--<li><a href="<?php echo $recurring; ?>"><?php echo $text_recurring; ?></a></li>-->
            </ul>
        </div>
        <h2><?php echo $text_my_newsletter; ?></h2>
        <div class="content">
            <ul>
                <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
            </ul>
        </div>
    </div>
</section>
<div class="clear-fix"></div>
<?php echo $footer; ?> 