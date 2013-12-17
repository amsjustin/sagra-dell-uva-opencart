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
            <div class="form__input-holder">
                <label for="firstname"><span class="required">*</span> <?php echo $entry_firstname; ?></label>
                <input type="text" name="firstname" value="<?php echo $firstname; ?>" />
                <?php if ($error_firstname) { ?>
                <span class="error"><?php echo $error_firstname; ?></span>
                <?php } ?>
            </div>
            <div class="form__input-holder">
                <label for="lastname"><span class="required">*</span> <?php echo $entry_lastname; ?></label>
                <input type="text" name="lastname" value="<?php echo $lastname; ?>" />
                <?php if ($error_lastname) { ?>
                <span class="error"><?php echo $error_lastname; ?></span>
                <?php } ?>
            </div>
            <div class="form__input-holder">
                <label for="email"><span class="required">*</span> <?php echo $entry_email; ?></label>
                <input type="text" name="email" value="<?php echo $email; ?>" />
                <?php if ($error_email) { ?>
                <span class="error"><?php echo $error_email; ?></span>
                <?php } ?>
            </div>
            <div class="form__input-holder">
                <label for="telephone"><span class="required">*</span> <?php echo $entry_telephone; ?></label>
                <input type="text" name="telephone" value="<?php echo $telephone; ?>" />
                <?php if ($error_telephone) { ?>
                <span class="error"><?php echo $error_telephone; ?></span>
                <?php } ?>
            </div>
            <div class="form__input-holder">
                <label for="fax"><?php echo $entry_fax; ?></label>
                <input type="text" name="fax" value="<?php echo $fax; ?>" />
            </div>
            <div class="form__button-holder">
                <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
                <div class="right">
                    <input type="submit" value="<?php echo $button_continue; ?>" class="submit-button"/>
                </div>
            </div>
            <div class="clear-fix"></div>
        </form>
    </div>
</section>
<div class="clear-fix"></div>
<?php echo $footer; ?>