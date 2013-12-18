<?php echo $header; ?>
<section class="wine-overview" id="content">
    <div class="product-overview__breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>
    <div class="account-login__content">
        <h1>Voeg wijn toe</h1>
        <form action="javascript:void(0);">
            <div class="form__input-holder">
                <label for="input-wine-id">Voer wijn id in:</label>
                <input type="text" value="49" id="input-wine-id" />
            </div>
            <div class="form__button-holder">
                <div class="left">
                    <a href="#" class="button">Naar winkel</a>
                </div>
                <div class="right">
                    <input type="submit" id="button-submit" class="submit-button" value="Toevoegen" />
                </div>
            </div>
            <div class="clear-fix"></div>
        </form>
    </div>
</section>
<div class="clear-fix"></div>
<script type="text/javascript">
        
        $('#input-wine-id').keydown(function(e) {
            if (e.keyCode == 13) {
                goToUrl();
            }
        });
        
        $('#button-submit').click(function(){
            goToUrl();
        });
        
        var goToUrl = function() {
            var wineId = $('#input-wine-id').val();
            var baseUrl = "<?php echo $base; ?>";
            
            window.location.href = baseUrl + "index.php?route=product/product&product_id=" + wineId;
        };
</script> 
<?php echo $footer; ?>