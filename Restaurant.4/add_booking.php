<?php
// équivalent au fichier add_post.php du blog
// ici j'insére dans la BDD via phpmyadmin les données de mon formulaire de réservation. fichier : add_booking.phtml

$civilitys = ['Monsieur', 'Madame', 'Mlle'];

// array de 'mois' pour utilisation dans la boucle de la balise <select> bookingMonths pour afficher les mois.
$months = ['Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin', 
           'Juillet', 'Aout', 'Septembre', 'Octobre', 'Novembre', 'Decembre' ];

// 1° Connexion à la base de données            
/* 2° Récupération des données du formulaire
 *      └> Pour récupérer les données, il faut soumettre le formulaire. Il faut donc savoir SI il a été soumit ou pas.
 *
 *      SI il est soumis faire quelque chose. 
 *      └> par exemple : tester SI une clé existe dans le tableau $_POST : champ
 *                  ou : tester SI la variable $_POST n'est pas vide
 *
 *      SINON (si il n'est pas soumis) faire autre chose : 
 *      └> Ne rien faire, puisqu'il est déjà affiché.
 *
 */
// 3° Insértion des données dans la base de données dans la table 'Bookings'
// 4° affichage 


// 1° Connection to the database  
      $pdo = include 'PDOConnection.php';

// 2° Retrieving form data

      // If the 'familyname' exists in the $_POST array
      if(array_key_exists('familyname', $_POST)) 
      {
        // we recover the data of the form
        $civility  = $_POST['civility'];  // $_POST['civility'] correspond au name des balises input.
        $familyname = $_POST['familyname'];
        $firstname = $_POST['firstname'];
        $important = $_POST['important'];
        $email = $_POST['email'];
        $phone = $_POST['phone'];
        $bookingDate = $_POST['bookingYear']. '-' . $_POST['bookingMonth']. '-' . $_POST['bookingDay'];
        $bookingTime = $_POST['bookingHour']. 'H ' . $_POST['bookingMinutes'] . 'Mns';
        $nbrPeople = $_POST['nbrPeople']; 
        
        // var_dump($_POST);
        
        // insert the data into the Post table, correspond aux colonnes de la table dans la BDD.
        $sql = 'INSERT INTO Bookings (Civility, Familyname, Firstname, Important, Email, PhoneNumber, Booking_Date, Booking_Time, Number_People, Created_At)  
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, NOW())';
                
        $query = $pdo->prepare($sql);
        
        $query -> execute([$civility, $familyname, $firstname, $important, $email, $phone, $bookingDate, $bookingTime, $nbrPeople]); // les valeurs récupérées des formulaires stockées dans des variables.
        
        // var_dump($_POST);
        
        header('Location: bookingConfirm.php');
        exit; 
      }
      
      
      
      
      

      $template = 'add_booking';
      include 'layout.phtml';
    
    




