<?php defined('SYSPATH') or die('No direct script access.'); ?>
<div class="container">
    <div class="row">
        <div class="span9 offset1 well">
            <?php if (isset($post)) { ?>
                <div style="float: right">Автор: <?=$post->username?></div>
                <div class="postRec">
                    <div><?=$post->title?></div>
                    <div><?=$post->post?></div>
                    <div>
                        <a href="/">вернуться</a>
                        <?php if (isset($user->id) && $post->userId == $user->id) { ?>
                            | <a href="blog/editpost/<?=$post->id?>">редактировать</a>
                        <?php } ?>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</div>