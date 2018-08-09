<?php

// connection à la base de données
$pdo = include_once 'PDOConnection.php';


// Affichage = inclusion du template
$template = 'index';
include 'layout.phtml';