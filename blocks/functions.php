<?php
	// работа с базой данных mcplanshet_base (PDO)
	$db = false;
	$query = false;
    $error_base = false;
	
	function connectDB() {
		global $db;
		global $error_base;
	    $db = new PDO ('mysql:host=localhost;dbname=mcplanshet_base', 'root', '');
	    $db->exec("SET NAMES UTF8");
	    if ($db == false) {
	        $error_base = 'Connect Error: '.mysqli_connect_error;
	    }
	}
	
	function closeDB() {
		global $db;
		global $query;
		$db = null;
        $query = null;
	}


