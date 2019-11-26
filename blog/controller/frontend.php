<?php

require_once('model/PostManager.php');
require_once('model/CommentManager.php');

function listPosts()
{
    $postManager = new \blog\model\PostManager(); 
    $posts = $postManager->getPosts(); 

    require('view/frontend/listPostsView.php');
}

function post()
{
    $postManager = new \blog\model\PostManager();
    $commentManager = new \blog\model\CommentManager();

    $post = $postManager->getPost($_GET['id']);
    $comments = $commentManager->getComments($_GET['id']);

    require('view/frontend/postView.php');
}

function addComment($postId, $author, $comment)
{
    $commentManager = new \blog\model\CommentManager();

    $affectedLines = $commentManager->postComment($postId, $author, $comment);

    if ($affectedLines === false) {
        throw new Exception('Impossible d\'ajouter le commentaire !');
    }
    else {
        header('Location: index.php?action=post&id=' . $postId);
    }
}

function viewComment()
{
    $commentManager = new \blog\model\CommentManager();
    $comment = $commentManager->getComment($_GET['id']);
  
    require('view/frontend/editView.php');
}
 
function editComment($id, $comment)
{
    $commentManager = new \blog\model\CommentManager();
  
    $newComment = $commentManager->updateComment($id, $comment);
  
    if ($newComment === false) {
  
        throw new Exception('Impossible de modifier le commentaire !');
    }
    else {
        echo 'commentaire : ' . $_POST['comment'];
        header('Location: index.php?action=viewComment&id=' . $id);
    }
}

