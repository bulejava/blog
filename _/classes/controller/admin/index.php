<?php defined('SYSPATH') or die('No direct script access.');
 
class Controller_Admin_Index extends Controller_Admin_Layout_Secure
{

    /**
     * Control Panel Index Action
     */

    public function action_index()
    {
        $this->template->set('content', View::factory('admin/index'));
    }

} // End Admin Index