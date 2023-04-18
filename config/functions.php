<?php
// FONCTION QUI RECUPERE TOUS LES ARTICLES//


function getArticles()
{
require_once("config/connect.php");
$req = $connexion->prepare('SELECT id, title, image, content, date, des FROM articles');
$req->execute();
$data = $req->fetchAll(PDO::FETCH_OBJ);
return $data;
$req->closeCursor();
}

// FONCTION QUI RECUPERE UN ARTICLE

function getArticle($id)
{
    require('config/connect.php');
    $req = $connexion->prepare('SELECT * FROM articles WHERE id = ?');
    $req->execute(array($id));
    if($req->rowCount() == 1)
    {
        $data = $req->fetch(PDO::FETCH_OBJ);
        return $data;
    }
    
        else
            header('Location: index.php');
    $req->closeCursor();
    
}

// FONCTION QUI AJOUTE UN COMMENTAIRE DANS LA BDD
function addComment($articleId, $author, $comment)
    
{
    require('config/connect.php');
        $req = $connexion->prepare('INSERT INTO comments (articleId, author, comment, date) VALUES
        (?, ?, ?, NOW())');
    $req->execute(array($articleId, $author, $comment));
    $req->closeCursor();
}

function getComments($id)
{
require("config/connect.php");
$req= $connexion->prepare('SELECT * FROM comments WHERE articleId = ?');
$req->execute(array($id));
$data= $req->fetchAll(PDO::FETCH_OBJ);
return $data;
$req->closeCursor();
}





?>
