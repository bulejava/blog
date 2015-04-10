<?php defined('SYSPATH') or die('No direct script access.'); ?>
<script type="text/javascript" src="public/js/tinymce/tinymce.min.js"></script>
<script type="text/javascript">
tinymce.init({
    selector: "textarea",
    plugins: [
        "advlist autolink lists link image charmap print preview anchor",
        "searchreplace visualblocks code fullscreen",
        "insertdatetime media table contextmenu paste"
    ],
    toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image jbimages",
    relative_urls: false

});
</script>
<?php
    $action = 'addpost';
    $legend = 'Добавление новой записи';
    $actButt = 'Добавить';

    if (isset($isEdit)) {
        $action = 'editpost/'.$id;
        $legend = 'Редактирование записи';
        $actButt = 'Сохранить';
    }
?>
<div class="container">
    <div class="row">
        <div class="span9 offset1 well">
            <form class="form-horizontal" action="blog/<?=$action?>" method="post">
                <legend><?=$legend?></legend>
 
                <?php if (isset($errors['common'])) : ?>
                    <div class="alert alert-error">
                        <a href="#" class="close" data-dismiss="alert">?</a>
                        <?php echo $errors['common'] ?>
                    </div>
                <?php endif; ?>
 
                <div class="control-group pull-left clearfix">
                    <?php if (isset($errors['title'])) : ?>
                        <div class="alert alert-error">
                            <a href="#" class="close" data-dismiss="alert">?</a>
                            <?php echo $errors['title'] ?>
                        </div>
                    <?php endif; ?>
                    <label class="control-label" for="ptitle">Заголовок</label>
                    <div class="controls"><input type="text" name="title" id="ptitle" placeholder="Введите заголовок" value="<?=$title?>"></div>
                </div>

                <div class="control-group pull-left clearfix">
                    <?php if (isset($errors['annonce'])) : ?>
                        <div class="alert alert-error">
                            <a href="#" class="close" data-dismiss="alert">?</a>
                            <?php echo $errors['annonce'] ?>
                        </div>
                    <?php endif; ?>
                    <label class="control-label" for="ptitle">Анонс</label>
                    <div class="controls"><input type="text" name="annonce" id="pannonce" placeholder="Введите анонс" value="<?=$annonce?>"></div>
                </div>
 
                <div class="control-group pull-left">
                    <?php if (isset($errors['post'])) : ?>
                        <div class="alert alert-error">
                            <a href="#" class="close" data-dismiss="alert">?</a>
                            <?php echo $errors['post'] ?>
                        </div>
                    <?php endif; ?>
                    <label class="control-label" for="ppost">Текст записи</label>
                    <div class="controls"><textarea name="post" id="ppost"  placeholder="Введите текст"><?=$post?></textarea></div>
                </div>
 
                <button class="btn btn-primary pull-right" type="submit"><?=$actButt?></button>
            </form>
        </div>
    </div>
</div>