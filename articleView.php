
    
    <!-- Normalement ds un projet pro on va pas reecrire tjrs les doctypes, il y aura une structure dite mvc qui sera organisé et qui va permettre d'avoir un fichier header un fichier footer etc ce qui nous evite de réécrire tout l'temps la meme chose. Ce miniblog sert à montrer juste comment on peut créer un blog facilement avec le php ! -->
    <!-- Une fois le formulaire créé, on passe aux différentes vérifications sur le post. voir l. 13 -->
    
    <!DOCTYPE html>
    
    <html>
        <head>
           <meta charset="utf-8"/>
           <title><?= $article->title ?></title>
           <!-- google fonts -->
       <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap" rel="stylesheet">
    

        <!-- fonteawesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        
       <!-- BOOTSTRAP CSS -->
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
       <link rel="stylesheet" href="css/bootstrap/bootstrap.min.css">
       
        <!-- magnific-popup CSS -->
        <link rel="stylesheet" href="css/magnific-popup/magnific-popup.css">
        
       <!-- animate CSS -->
        <link rel="stylesheet" href="css/animate/animate.css">
        
       <!-- CSS -->
       <link rel="stylesheet" type="text/css" href="css/style.css">
       
        <!-- RESPONSIVE -->
       <link rel="stylesheet" href="css/responsive.css">
        </head>
        
        
        
        
        <body>
        
        
            <?php include_once('header.php') ?>
            
           <section id="quete">
               <div id="quete-cover" class="bg-parallax">
                   <div id="quete-container">
                       <div id="container">
                           <div class="row">
                               <div class="col-md-12">
                                   <div id="quete-content">
                                       <div id="quete-cover-content">
                                           <p><?= $article->content ?></p>
                                           <p><span><?= $article->des ?></span></p>
                                           <div id="quete-img">
                                               <a href="<?= $article->image?>" title="<?= $article->title ?>">
                                                   <img src="<?= $article->image?>">
                                                   <?php if($article->id==7 || $article->id==2) : ?>
                                                    <style>
                                                       #quete-img img{
                                                           width: 40%;
                                                           margin-left: 30%;
                                                       }
                                                    </style>
                                                <?php endif; ?>
                                               </a>
                                           </div>
                                       </div>
                                       <a href="index.php" class="btn btn-lg btn-general btn-page btn-return"><i class="fa fa-angle-left"></i>Retour aux quêtes</a>
                                   </div>
                               </div>
                           </div>
                           <hr /> <!-- petite ligne dd séparation -->
                       </div>


                       <?php
    
    if(isset($success))
        echo $success;
               
               if(!empty($errors)): ?>

                       <?php foreach($errors as $error): ?>
                       <div class="row">
                           <div class="col-md-6">
                               <div class="alert alert-danger">
                                   <p><?= $error ?></p>
                               </div>
                           </div>
                       </div>
                       <?php endforeach; ?>
                       <?php endif; ?>

                       <div id="coms">
                           <div class="row">
                               <div class="col-md-6 left-form">
                                   <form action="article.php?id=<?= $article->id ?>" method="post">
                                       <p><label for="author">Pseudo :</label><br />
                                           <input type="text" name="author" id="author" value="<?php if(isset($author)) echo $author ?>" class="form-control" />
                                       </p>
                                       <p><label for="comment">Commentaire :</label><br />
                                           <textarea name="comment" id="comment" cols="30" row="8" class="form-control"><?php if(isset($comment)) echo $comment ?></textarea>
                                       </p>
                                       <button type="submit" class="btn btn-lg btn-general btn-page">Envoyer</button>
                                   </form>
                               </div>
                               
                               <div class="col-md-6">
                                   <div id="coms-list">
                                       <h2>Commentaires : </h2>

                                       <?php foreach($comments as $com): ?>
                                       <h3 id="pseudo"><?= $com->author ?></h3>
                                       <time><?= $com->date ?></time>
                                       <p><?= $com->comment ?></p>
                                       <?php endforeach; ?>
                                   </div>
                               </div>
                           </div>
                       </div>
                   </div>
               </div>
           </section>

           
    <?php include_once('footer.php') ?>




    <script src="js/jquery.js"></script>
    <!-- WOW JS -->
    <script src="js/wow/wow.min.js"></script>
    <!-- magnific-popup JS -->
    <script src="js/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!-- bootstrap JS -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- easing -->
    <script src="js/easing/jquery.easing.1.3.js"></script>
    <!-- custom JS -->
    <script src="js/custom.js"></script>

        </body>
    </html>
    
    
    
    
    
