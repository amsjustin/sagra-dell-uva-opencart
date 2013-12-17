<?php echo $header; ?>
<?php echo $column_left; ?>
<section class="product-overview" id="content">
    <div class="product-overview__breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>
    <div class="overview-content">
        <h1><?php echo $heading_title; ?></h1>
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            <h2><?php echo $text_location; ?></h2>
            <div class="contact-info">
                <div class="content"><div class="left"><b><?php echo $text_address; ?></b><br />
                        <?php echo $store; ?><br />
                        <?php echo $address; ?></div>
                    <div class="right">
                        <?php if ($telephone) { ?>
                        <b><?php echo $text_telephone; ?></b><br />
                        <?php echo $telephone; ?><br />
                        <br />
                        <?php } ?>
                        <?php if ($fax) { ?>
                        <b><?php echo $text_fax; ?></b><br />
                        <?php echo $fax; ?>
                        <?php } ?>
                    </div>
                </div>
            </div>
            <h2><?php echo $text_contact; ?></h2>
            <div class="content">
                <div class="form__input-holder">
                    <label for="name"><?php echo $entry_name; ?></label>
                    <input type="text" name="name" value="<?php echo $name; ?>" />
                    <?php if ($error_name) { ?>
                    <div class="error"><?php echo $error_name; ?></div>
                    <?php } ?>
                </div>
                <div class="form__input-holder">
                    <label for="email"><?php echo $entry_email; ?></label>
                    <input type="text" name="email" value="<?php echo $email; ?>" />
                    <?php if ($error_email) { ?>
                    <div class="error"><?php echo $error_email; ?></div>
                    <?php } ?>
                </div>
                <div class="form__input-holder">
                    <label><?php echo $entry_enquiry; ?></label>
                    <textarea name="enquiry" cols="40" rows="10"><?php echo $enquiry; ?></textarea>
                    <?php if ($error_enquiry) { ?>
                    <div class="error"><?php echo $error_enquiry; ?></div>
                    <?php } ?>
                </div>
                <div class="form__input-holder">
                    <label for="captcha"><?php echo $entry_captcha; ?></label>
                    <input type="text" name="captcha" value="<?php echo $captcha; ?>" />
                </div>
                <div class="form__input-holder">
                    <label>&nbsp;</label>
                    <img src="index.php?route=information/contact/captcha" alt="" />
                    <?php if ($error_captcha) { ?>
                    <div class="error"><?php echo $error_captcha; ?></div>
                    <?php } ?>
                </div>
            </div>
            <div class="form__button-holder">
                <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="submit-button" /></div>
            </div>
            <div class="clear-fix"></div>
    </div>
</form>
</div>
</section>
<div class="clear-fix"></div>
<?php echo $footer; ?>