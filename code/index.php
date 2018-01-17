<?php
header('Content-type: text/html; charset=utf-8');

// Param  tres de connexion    la base
define('DB_HOST' , '127.0.0.1');
define('DB_NAME' , 'estiam');
define('DB_USER' , 'estiam');
define('DB_PASS' , 'estiam');

// Connexion    la base avec PDO
try{
    $pdo = new PDO('mysql:host='.DB_HOST.';dbname='.DB_NAME, DB_USER, DB_PASS, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
} catch(Exception $e) {
    echo "Impossible de se connecter    la base de donn  es '".DB_NAME."' sur ".DB_HOST." avec le compte utilisateur '".DB_USER."'";
    echo "<br/>Erreur PDO : <i>".$e->getMessage()."</i>";
    die();
}

function count_visit(){
    global $pdo;
    $query2 = $pdo->prepare("UPDATE estiamid SET id = id + 1;");
    $query2->execute();
}

count_visit();

global $pdo;
$query3 = $pdo->prepare("SELECT id FROM estiam.estiamid");
$query3->execute();
$result = $query3->fetchColumn();

print("You are the $result visitor");