<?php





        $serveur = "localhost";
        $login = "root";
        $pass = "";
        
        try
        {
            $connexion = new PDO("mysql:host=$serveur;dbname=Monblog;charset=utf8",$login,$pass);
            $connexion ->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);          
           
            
            
            
        }
        
        
        catch(PDOException $e)
        {
            echo 'Echec de la connexion : '.$e->getMessage();
        }
    
    


?>