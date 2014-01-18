
</section>    
<div class="spacer"></div>
    </div> <!-- / MAIN -->
</div> <!-- / WRAPPER -->
<footer class="footer">
    <div class="inner">
        <?php if ($informations) { ?>
        <div class="footer__col footer__col--first">
            <h2><?php echo $text_information; ?></h2>
            <ul class="footer__nav">
                <?php foreach ($informations as $information) { ?>
                <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                <?php } ?>
            </ul>
        </div>
        <?php } ?>
        <div class="footer__col">
            <h2><?php echo $text_service; ?></h2>
            <ul class="footer__nav">
                <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
            </ul>
        </div>
        <div class="footer__col">
            <h2><?php echo $text_extra; ?></h2>
            <ul class="footer__nav">
                <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
                <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
                <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
                <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
            </ul>
        </div>
        <div class="footer__col footer__col--last">
            <h2><?php echo $text_account; ?></h2>
            <ul class="footer__nav">
                <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
            </ul>
        </div>
        <div class="clear-fix"></div>
    </div>
</footer>

<script type="text/javascript">
    var menuState = false;
    var catMenuState = false;
    $('#gloval-nav-btn').click(function(){
    if(menuState) {
        $('#global-nav').removeClass('global-nav--isactive');
        $('#global-nav').addClass('global-nav--inactive');
        menuState = false;
    }else {
        $('#global-nav').removeClass('global-nav--inactive');
        $('#global-nav').addClass('global-nav--isactive');
        menuState = true;
        }
    });
    $('#category-menu-button').click(function(){
    if(menuState) {
        $('#category-menu-list').removeClass('category-menu-list--isactive');
        $('#category-menu-list').addClass('category-menu-list--inactive');
        menuState = false;
    }else {
        $('#category-menu-list').removeClass('category-menu-list--inactive');
        $('#category-menu-list').addClass('category-menu-list--isactive');
        menuState = true;
        }
    });
</script>
</div>
</body>
</html>