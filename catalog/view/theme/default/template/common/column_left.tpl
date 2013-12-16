<?php
// Titels in wijn menu
        $wine_menu_title = array(
            "menu item 1",
            "menu item 2",
            "menu item 3",
            "menu item 4",
            "menu item 5",
            "menu item 6",
            "menu item 7",
            "menu item 8",
            "menu item 9",
            "menu item 10",
            "menu item 11",
            "menu item 12"
        );
  
  // URLs in wijn menu
        $wine_menu_url = array(
            'url1',
            'url2',
            'url3',
            'url4',
            'url5',
            'url6',
            'url7',
            'url8',
            'url9',
            'url10',
            'url11',
            'url12'
        );
        
        // Array lengte
        $arrlength=count($wine_menu_title);

?>

<div class="inner">
                        <aside class="category-menu">
                             
                            
                            <h1>CATEGORIES</h1>
                            <?php 
                                /* Counter om de ul's te beginnen en af te sluiten */
                                $ulcounter = 0;
                                
                                for ($i = 0; $i < $arrlength; $i++){
                                    if($ulcounter==0){
                                        echo '<ul>';
                                    }
                                    $ulcounter++;
                                        
                                    echo "<li><a href=\"$wine_menu_url[$i]\">" . $wine_menu_title[$i] . '</a></li>';
                                    
                                    if($ulcounter==3){
                                        $ulcounter=0;
                                        echo '</ul>';
                                        }
                                }
                                
                            ?>
                        </aside>
                        <section class="product-overview">
                            <div class="product-overview__breadcrumb">
                                <a href="#">Home</a>
                                » <a href="#">Laptops &amp; Notebooks</a>
                            </div>
                            <article class="product">
                                <div class="product__img">
                                    <img src="html/assets/img/wine-preview.jpg">
                                </div>
                                <div class="product__content">
                                    <div class="product__content-title">
                                        <h1>Duetto Greco Matera DOC</h1>
                                    </div>
                                    <div class="product__content-visual"></div>
                                    <div class="product__content-price">
                                        <a href="#">€29,95 <i class="icon-arrow-right"></i></a>
                                    </div>
                                </div>
                            </article>
                            <div class="product"></div>
                            <div class="product"></div>
                            <div class="product"></div>
                            <div class="product"></div>
                        </section>
                        <div class="clear-fix"></div>
                    </div>