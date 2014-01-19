<div class="category-menu">
    <h1><?php echo $heading_title; ?></h1>
    <div id="category-menu-button" class="category-menu__button"><i class="glyphicon glyphicon-chevron-down"></i></div>
    <div class="box-content">
        <ul id="category-menu-list" class="box-category category-menu-list--inactive">
            <?php foreach ($categories as $category) { ?>
            <li>
                <?php if ($category['category_id'] == $category_id) { ?>
                <a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?><i class="glyphicon glyphicon-chevron-right"></i></a>
                <?php } else { ?>
                <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?><i class="glyphicon glyphicon-chevron-right"></i></a>
                <?php } ?>
                <?php if ($category['children']) { ?>
                <ul>
                    <?php foreach ($category['children'] as $child) { ?>
                    <li>
                        <?php if ($child['category_id'] == $child_id) { ?>
                        <a href="<?php echo $child['href']; ?>" class="active"> - <?php echo $child['name']; ?><i class="glyphicon glyphicon-chevron-right"></i></a>
                        <?php } else { ?>
                        <a href="<?php echo $child['href']; ?>"> - <?php echo $child['name']; ?><i class="glyphicon glyphicon-chevron-right"></i></a>
                        <?php } ?>
                    </li>
                    <?php } ?>
                </ul>
                <?php } ?>
            </li>
            <?php } ?>
        </ul>
    </div>
</div>
