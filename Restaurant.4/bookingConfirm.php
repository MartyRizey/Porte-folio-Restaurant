<?php


/* Allez chercher les données rentrées par le fichier add_booking.php dans la base de données ou BDD de la table Booking
 *    |
 *    └> Connexion à la base de données via 'PDOConnection.php' (voir la doc pour include_once )
 *    |
 *    |
 *    └> Allez chercher les infos dans la BDD vias une requête SQL et stocker dans une variable $sql.
 *
 *        - Appliquer la méthode prepare() avec $sql en paramètre de la méthode sur l'objet $pdo et Stocker   
 *          dans une variable $query 
 *
 *        - Ensuite appliquer la méthode execute() sur l'objet $query
 *         
 *        - Et enfin appliquer la méthode fetchall() ou fetch() sur l'objet $query et stocker dans la variable $bookings.
 *          On récupére ainsis tous les champs de la table booking de la BDD 
 *   
 *
 * Affichez les données via le fichier bookingConfirm.phtml
 *    |
 *    └> Inclusion du template
 *
 *  
 */
 
 // Récupération de l'Id à afficher   
      $bookingId = $_GET['postId'];
 
 // 1° Connection to the database  
      $pdo = include 'PDOConnection.php';
      
 // 2° Sélection de ce que j'ai besoin d'afficher dans bookingConfirm.phtml
      $sql = 'SELECT Civility, Familyname, Firstname, Booking_Date, Booking_Time, Number_People
              FROM Bookings
              WHERE Bookings.Id = ? ';
              // ORDER BY Created_AT DESC ';
              
      $query = $pdo->prepare($sql);
      $query -> execute([$bookingId]);
      $bookings = $query -> fetch();
      
      // var_dump($bookings);
      
      
     
      
      $template = 'bookingConfirm';
      include 'layout.phtml';
           
  
          
  
         
  
         
 
