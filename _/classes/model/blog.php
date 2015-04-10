<?php defined('SYSPATH') or die('No direct script access.');
 
class Model_Blog extends Model {

    public function getPosts($id = 0)
    {
        if ($id > 0) {
            $posts = ORM::factory('post')
                ->select('post.*', 'users.username')
                ->join('users', 'left')
                ->on('users.id', '=', 'post.userId')
                ->where('post.id', '=', $id)
                ->find();
        } else {
            $posts = ORM::factory('post')
                ->select('post.*', 'users.username')
                ->join('users', 'left')
                ->on('users.id', '=', 'post.userId')
                ->order_by('post.id', 'DESC')
                ->find_all();
        }

    	return $posts;
    }

    public function addPost($post)
    {
    	$data = [
    		'title' => $post['title'],
            'userId' => Auth::instance()->get_user()->id,
    		'annonce' => $post['annonce'],
    		'post' => $post['post']
    	];
 		
 		return ORM::factory('post')
        				->values($data)
        				->save();
    	
    }

    public function editPost($post, $id)
    {
    	$data = [
    		'title' => $post['title'],
    		'annonce' => $post['annonce'],
    		'post' => $post['post']
    	];

		return ORM::factory('post', $id)
        				->values($data)
        				->save();
    }

    public function deletePost($id)
    {
        return ORM::factory('post', $id)
            ->delete();
    }
}