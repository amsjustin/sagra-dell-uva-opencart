<?php echo $header; ?>
<?php echo $column_right; ?>
<section class="product-overview">
    <div class="product-overview__breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>
    <div class="overview-content">
        <h1><?php echo $heading_title; ?></h1>
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            <div class="form__input-holder">
                <label><span class="required">*</span> <?php echo $entry_password; ?></label>
                <input type="password" name="password" value="<?php echo $password; ?>" />
                <?php if ($error_password) { ?>
                <span class="error"><?php echo $error_password; ?></span>
                <?php } ?>
            </div>
            <div class="form__input-holder">
                <label><span class="required">*</span> <?php echo $entry_confirm; ?></label>
                <input type="password" name="confirm" value="<?php echo $confirm; ?>" />
                <?php if ($error_confirm) { ?>
                <span class="error"><?php echo $error_confirm; ?></span>
                <?php } ?>
            </div>
            <div class="form__button-holder">
                <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
                <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="submit-button" /></div>
            </div>
            <div class="clear-fix"></div>
        </form>
    </div>
    <div class="clear-fix"></div>
</section>
<div class="clear-fix"></div>
<?php echo $footer; ?>