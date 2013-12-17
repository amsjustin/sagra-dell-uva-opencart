<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php echo $column_left; ?>
<section class="product-overview" id="content">
    <div class="product-overview__breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>
    <div class="account-login__content">
        <h1><?php echo $heading_title; ?></h1>
        <div class="left">
            <div class="content">
                <p><?php echo $text_register_account; ?></p>
                <a href="<?php echo $register; ?>" class="button"><?php echo $button_continue; ?></a>
            </div>
        </div>
        <div class="right">
            <h2><?php echo $text_returning_customer; ?></h2>
            <p><?php echo $text_i_am_returning_customer; ?></p>
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                <div class="form__input-holder">
                    <label for="email"><?php echo $entry_email; ?></label>
                    <input type="text" name="email" value="<?php echo $email; ?>" />
                </div>
                <div class="form__input-holder">
                    <label for="password"><?php echo $entry_password; ?></label>
                    <input type="password" name="password" value="<?php echo $password; ?>" />
                </div>
                <div class="form__button-holder">
                    <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
                    <input type="submit" value="<?php echo $button_login; ?>" class="submit-button" />
                    <?php if ($redirect) { ?>
                    <input class="submit-button" type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                    <?php } ?>
                </div>
            </form>
        </div>
    </div>
</section>
<div class="clear-fix"></div>
<script type="text/javascript">
    $('#login input').keydown(function(e) {
    if (e.keyCode == 13) {
    $('#login').submit();
}
});
</script> 
<?php echo $footer; ?>