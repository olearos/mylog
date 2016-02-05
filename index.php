<?php

require 'rb.php';

R::setup("mysql:host=".getenv('MYSQL_HOST').";dbname=".getenv('MYSQL_DATABASE'), getenv('MYSQL_USER'), getenv('MYSQL_PASS'));
R::setAutoResolve( TRUE );        //Recommended as of version 4.2

$post = R::dispense('line');
$post->text = date("Y-m-d H:i:s") . ": ip: " . $SERVER['REMOTE_ADDR'] . " |"  . implode(" ", $_GET);



if(isset($_GET['do']) && $_GET['do'] == "view") {
    foreach(array_reverse(R::findAll("line"))  as $line) echo $line->id .  " " . $line->text . "<br>\n";
} else {
    $id = R::store($post);
}







