<?php
//sessions

//Requires and includes


//Autoload Classe
spl_autoload_register(function ($class_name) {
    require_once('libraries/' . $class_name . '.php');
});


?>