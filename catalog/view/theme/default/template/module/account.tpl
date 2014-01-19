<aside class="category-menu">
    <h1><?php echo $heading_title; ?></h1>
    <ul>
        <?php if (!$logged) { ?>
        <li><a href="<?php echo $login; ?>"><i class="glyphicon glyphicon-log-in"></i><?php echo $text_login; ?></a> / <a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
        <li><a href="<?php echo $forgotten; ?>"><i class="glyphicon glyphicon-question-sign"></i><?php echo $text_forgotten; ?></a></li>
        <?php } ?>
        <li><a href="<?php echo $account; ?>"><i class="glyphicon glyphicon glyphicon-user"></i><?php echo $text_account; ?></a></li>
        <?php if ($logged) { ?>
        <li><a href="<?php echo $edit; ?>"><i class="glyphicon glyphicon-pencil"></i><?php echo $text_edit; ?></a></li>
        <li><a href="<?php echo $password; ?>"><i class="glyphicon glyphicon-lock"></i><?php echo $text_password; ?></a></li>
        <?php } ?>
        <li><a href="<?php echo $wishlist; ?>"><i class="glyphicon glyphicon-glass"></i><?php echo $text_wishlist; ?></a></li>
        <?php if ($logged) { ?>
        <li><a href="<?php echo $logout; ?>"><i class="glyphicon glyphicon-log-out"></i><?php echo $text_logout; ?></a></li>
        <?php } ?>
    </ul>
</aside>
