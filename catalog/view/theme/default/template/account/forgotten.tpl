<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php echo $column_right; ?>
<section class="product-overview" id="content">
    <div class="product-overview__breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>
    <div class="overview-content">
        <h1><?php echo $heading_title; ?></h1>
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            <p><?php echo $text_email; ?></p>
            <h2><?php echo $text_your_email; ?></h2>
            <div class="form__input-holder">
                <label for="email"><?php echo $entry_email; ?></label>
                <input type="text" name="email" value="" />
            </div>
            <div class="form__button-holder">
                <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
                <div class="right">
                    <input type="submit" value="<?php echo $button_continue; ?>" class="submit-button" />
                </div>
            </div>
        </form>
    </div>
</section>
<div class="clear-fix"></div>
<?php echo $footer; ?>