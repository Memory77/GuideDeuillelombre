<?php


require_once('config/functions.php');


/* RECUP L'ID PAR LE GET */


if(!isset($_GET['id']) OR !is_numeric($_GET['id']))
    header('Location: index.php');
else{
    extract($_GET);
    $id = strip_tags($id);
    

    
    if(!empty($_POST))
    {
        extract($_POST);
        $errors = array();
        $author = strip_tags($author);
        $comment = strip_tags($comment);
        //verif si les champs sont bien remplis
        if(empty($author))
            array_push($errors,'Entrez votre pseudo');
        if(empty($comment))
            array_push($errors,'Entrez votre commentaire');
        if(count($errors)==0) // = si y'a pas d'erreur, alors on créé la fonction qui va permettre d'ajouter le com dans la bdd et on la met ci dessous
        {
            $comment = addComment($id, $author, $comment);
            
            $success = 'Votre commentaire a été publié';
            
            unset($author);
            unset($comment);
            
        }
        
    }
    
    $article = getArticle($id);
    $comments = getComments($id);
}


                                                   
require('articleView.php');



