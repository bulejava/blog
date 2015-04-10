<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Index extends Controller_Layout_Default
{
    /**
     * Index Action
     */
    public function action_index()
    {
        $content = View::factory('blog/index');
        $this->template->set('content', $content);
    }

} // End Index