<?php defined('SYSPATH') or die('No direct script access.'); ?>
<div class="container">
    <div class="row">
        <div class="span5 offset3 well">
            <form class="form-horizontal" action="" method="post">
                <legend>Регистрация</legend>
 
                <?php if (isset($errors['common'])) : ?>
                    <div class="alert alert-error">
                        <a href="#" class="close" data-dismiss="alert">?</a>
                        <?php echo $errors['common'] ?>
                    </div>
                <?php endif; ?>
 
                <div class="control-group pull-right clearfix">
                    <?php if (isset($errors['login'])) : ?>
                        <div class="alert alert-error">
                            <a href="#" class="close" data-dismiss="alert">?</a>
                            <?php echo $errors['login'] ?>
                        </div>
                    <?php endif; ?>
                    <label class="control-label" for="alogin">Почта</label>
                    <div class="controls"><input type="text" name="login" id="alogin" placeholder="Введите свою почту" value="<?=$login?>"></div>
                </div>
 
                <div class="control-group pull-right">
                    <?php if (isset($errors['password'])) : ?>
                        <div class="alert alert-error">
                            <a href="#" class="close" data-dismiss="alert">?</a>
                            <?php echo $errors['password'] ?>
                        </div>
                    <?php endif; ?>
                    <label class="control-label" for="apassword">Пароль</label>
                    <div class="controls"><input type="password" name="password" id="apassword"  placeholder="Введите свой пароль"></div>
                </div>

                <div class="control-group pull-right">
                    <?php if (isset($errors['password2'])) : ?>
                        <div class="alert alert-error">
                            <a href="#" class="close" data-dismiss="alert">?</a>
                            <?php echo $errors['password2'] ?>
                        </div>
                    <?php endif; ?>
                    <label class="control-label" for="apassword2">Пароль еще раз</label>
                    <div class="controls"><input type="password" name="password2" id="apassword2"  placeholder="Введите свой пароль еще раз"></div>
                </div>

                <button class="btn btn-primary  pull-right" type="submit">Регистрация</button>
            </form>
        </div>
    </div>
</div>
 
<style type="text/css">
    legend{ margin: 0; }
    .well{ margin-top: 100px; }
</style>