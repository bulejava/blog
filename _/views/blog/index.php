<?php defined('SYSPATH') or die('No direct script access.'); ?>
<div class="container jumbotron">
    <div class="row">
        <div class="span9 offset1 well">

    <h3>Блог</h3>
    <?php
        if (isset($posts)) {
            foreach ($posts as $post)
            {
                ?>
                <div id="postRec_<?=$post->id?>" class="postRec">
                    <div style="float: left"><?=$post->title?></div>
                    <div style="float: right; font-style: italic">Автор: <?=$post->username?></div>
                    <div style="clear: both"></div>
                    <div><?=$post->annonce?></div>
                    <a href="blog/viewpost/<?=$post->id?>">просмотреть</a>
                    <?php if (isset($user->id) && $post->userId == $user->id) { ?>
                    | <a href="blog/editpost/<?=$post->id?>">редактировать</a>
                    | <a class="deletePost" href="#">удалить</a>
                    <?php } ?>
                    <hr/>
                </div>
                <?php
            }
        }
    ?>
</div>
</div>
</div>

