<?php defined('SYSPATH') or die('No direct script access.');
 
class Controller_Admin_Auth extends Controller_Layout_Default {
 
    /**
     * @var string
     */
    public $success_url = '/';
 
    /**
     * User Login Action
     */
    public function action_login()
    {
        $content = View::factory('admin/login');
 
        // init errors array
        $errors = array();
 
        // check request method
        if ($this->request->method() == Request::POST)
        {
            // validate user data
            $post = Validation::factory($this->request->post())
                ->rule('login', 'not_empty')
                ->rule('password', 'not_empty')
                ->labels(array(
                    'login' => 'Почта',
                    'password' => 'Пароль',
                ));
 
            // if data valid
            if ($post->check())
            {
                // try login user
                if (Auth::instance()->login($post['login'], $post['password'], isset($post['remember'])))
                {
                    $this->redirect(URL::site($this->success_url, TRUE, FALSE));
                }
 
                // set error
                $errors = array('common' => 'Неправильный логин или пароль');
            }
 
            // add validation errors
            $errors = Arr::merge($errors, $post->errors('messages'));
        }

        $content->errors = $errors;
        $this->template->set('content', $content);
    }

    /**
     * User Register Action
     */
    public function action_register()
    {
        $content = View::factory('admin/register');
        $content->login = '';
        // init errors array
        $errors = array();

        // check request method
        if ($this->request->method() == Request::POST) {
            // validate user data
            $content->login = $this->request->post()['login'];
            $post = Validation::factory($this->request->post())
                ->rule('login', 'not_empty')
                ->rule('password', 'not_empty')
                ->rule('password2', 'not_empty')
                ->rule('password', 'equals', [':value', $this->request->post()['password2']])

                ->labels(array(
                    'login' => 'Почта',
                    'password' => 'Пароль',
                    'password2' => 'Пароль еще раз'
                ));

            // if data valid
            if ($post->check())
            {
                $data = $this->request->post();
                $userMod = ORM::factory('user');
                $userMod->values(
                    [
                        'email' => $data['login'],
                        'username' => $data['login'],
                        'password' => $data['password']
                    ]
                );
                try {
                    $userMod->save();
                    $userMod->add('roles', ORM::factory('role')->where('name', '=', 'login')->find());
                } catch (ORM_Validation_Exception $e) {
                    $errors = array('common' => $e->getMessage());
                }

                // try login user
                if (Auth::instance()->login($data['login'], $data['password'], false))
                {
                    $this->redirect(URL::site('blog/addpost', TRUE, FALSE));
                }
            }

            // add validation errors
            $errors = Arr::merge($errors, $post->errors('messages'));
        }

        $content->errors = $errors;
        $this->template->set('content', $content);
    }

    /**
     * User Logout Action
     */
    public function action_logout()
    {
        // logout
        Auth::instance()->logout(TRUE, TRUE);
 
        // redirect
        $this->redirect($this->request->referrer());
    }
 
    /**
     * User Initialize Action
     */
    public function action_init()
    {
        // find current admin user
        $user = ORM::factory('user', array('username' => 'admin'));
 
        // if user not founded
        if ($user->loaded() === FALSE)
        {
            // create new admin user
            $user->values(array(
                'username' => 'admin',
                'password' => 'admin',
                'email' => 'andreyot@gmail.com',
            ))->save();
 
            // add roles for admin user
            $user->add('roles', ORM::factory('role', array('name' => 'login')));
            $user->add('roles', ORM::factory('role', array('name' => 'admin')));
 
            // user message
            $this->template->set('content', '<h1>Done!</h1>');
 
            // exit
            return ;
        }
 
        // user message
        $this->template->set('content', '<h1>Error!</h1>');
    }
 
} // End Admin Default