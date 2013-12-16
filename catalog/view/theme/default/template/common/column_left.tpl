<?php
// Titels in wijn categories
        $wine_categories_title = array(
            "category item 1",
            "category item 2",
            "category item 3",
            "category item 4",
            "category item 5",
            "category item 6",
            "category item 7",
            "category item 8",
            "category item 9",
            "category item 10",
            "category item 11",
            "category item 12",
        );
  
  // URLs in wijn categories
        $wine_categories_url = array(
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
            'url12',
        );
        
        // array lengte
        $arrlength=count($wine_categories_title);
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
                                        
                                    echo "<li><a href=\"$wine_categories_url[$i]\">" . $wine_categories_title[$i] . '</a></li>';
                                    
                                    if($ulcounter==3){
                                        $ulcounter=0;
                                        echo '</ul>';
                                        }
                                }
                                
                            ?>
                        </aside>
                    </div>