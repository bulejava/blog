<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Blog_Index extends Controller_Layout_Default
{
    /**
     * Index Action
     */
    public function action_index()
    {
        $content = View::factory('blog/index');
        $blog = Model::factory('blog');
        $content->posts = $blog->getPosts();

        $this->template->set('content', $content);
    }

    public function action_addpost()
    {
        if (!Auth::instance()->logged_in()) {
            $this->redirect(URL::site('/admin/auth/login', TRUE, FALSE));
        }

        $content = View::factory('blog/addpost');
        $errors = array();
 
        // check request method
        if ($this->request->method() == Request::POST)
        {
            // validate user data
            $post = Validation::factory($this->request->post())
                ->rule('title', 'not_empty')
                ->rule('annonce', 'not_empty')
                ->rule('post', 'not_empty')
                ->labels(array(
                    'title' => 'Заголовок',
                    'annonce' => 'Анонс',
                    'post' => 'Текст записи'
                ));
             
            // if data valid
            
            if ($post->check())
            {            
                // try add a post
                $blog = Model::factory('blog');

                if ($blog->addPost($this->request->post()))
                {
                    $this->redirect(URL::site('/', TRUE, FALSE));
                }
                $errors = array('common' => 'Ошибка добавления записи в блог!');
            } 
            $errors = Arr::merge($errors, $post->errors('messages'));
        }

        $content->title = '';
        $content->annonce = '';
        $content->post = '';
        $content->errors = $errors;
        $this->template->set('content', $content);
    }

    public function action_editpost()
    {
        $blog = Model::factory('blog');
        $id = intval($this->request->param('id'));
        $post = $blog->getPosts($id);

        if (!Auth::instance()->logged_in() || Auth::instance()->get_user()->id != $post->userId) {
            $this->redirect(URL::site('/admin/auth/login', TRUE, FALSE));
        }

        $errors = array();

        // check request method
        if ($this->request->method() == Request::POST)
        {
            // validate user data
            $post = Validation::factory($this->request->post())
                ->rule('title', 'not_empty')
                ->rule('annonce', 'not_empty')
                ->rule('post', 'not_empty')
                ->labels(array(
                    'title' => 'Заголовок',
                    'annonce' => 'Анонс',
                    'post' => 'Текст записи'
                ));
             
            // if data valid
            
            if ($post->check()) {
                // try add a post
                if ($blog->editPost($this->request->post(), $id)) {
                    $this->redirect(URL::site('/', TRUE, FALSE));
                }
                // set error
                $errors = array('common' => 'Ошибка добавления записи в блог!');
            }
 
            // add validation errors
            $errors = Arr::merge($errors, $post->errors('messages'));
        }
 
        // set variables into login template

        $content = View::factory('blog/addpost');

        $content->id = $id;
        $content->title = $post->title;
        $content->annonce = $post->annonce;
        $content->post = $post->post;
        $content->isEdit = 1;
        $content->errors = $errors;
 
        // set content into template
        $this->template->set('content', $content);
    }

    public function action_viewpost()
    {
        $content = View::factory('blog/viewpost');
        $blog = Model::factory('blog');
        $id = intval($this->request->param('id'));
        $content->post = $blog->getPosts($id);

        $this->template->set('content', $content);
    }

    public function action_deletepost()
    {
        $blog = Model::factory('blog');
        $id = intval($this->request->param('id'));
        $post = $blog->getPosts($id);
        if (Auth::instance()->logged_in() && Auth::instance()->get_user()->id == $post->userId) {
            echo $blog->deletePost($id);
        }
        exit;
    }

} // End Index