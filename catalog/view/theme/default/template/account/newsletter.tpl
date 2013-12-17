<?php echo $header; ?>
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
            <div class="content">
                <table class="form">
                    <tr class="form__checkbox-holder">
                        <td><label><?php echo $entry_newsletter; ?></label></td>
                        <td><?php if ($newsletter) { ?>
                            <input type="radio" name="newsletter" value="1" checked="checked" />
                            <?php echo $text_yes; ?>&nbsp;
                            <input type="radio" name="newsletter" value="0" />
                            <?php echo $text_no; ?>
                            <?php } else { ?>
                            <input type="radio" name="newsletter" value="1" />
                            <?php echo $text_yes; ?>&nbsp;
                            <input type="radio" name="newsletter" value="0" checked="checked" />
                            <?php echo $text_no; ?>
                            <?php } ?>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="form__button-holder">
                <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
                <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="submit-button" /></div>
            </div>
        </form>
        <div class="clear-fix"></div>
    </div>
</section>
<div class="clear-fix"></div>
<?php echo $footer; ?>