<?php
	$name = htmlspecialchars($_POST['name']);
	$text = htmlspecialchars($_POST['text']);
	$id_foto = $_POST['id_foto'];
	$time = $_POST['time'];
	
	if ($name == '' || $text == '') {
		echo 'Заполните все поля!';
		exit;
	}

	$db = false;
    $error_base = false;
    $db = new PDO ('mysql:host=localhost;dbname=mcplanshet_base', 'root', '');
    $db->exec("SET NAMES UTF8");
    if ($db == false) {
      $error_base = 'Connect Error: '.mysqli_connect_error;
    }

    $query = $db->prepare("INSERT INTO `comments_foto` SET name=:name, text=:text, dt=:time, id_foto=:id_foto");
    $params = array ('name' => $name, 'text' => $text, 'time' => $time, 'id_foto' => $id_foto);
    $query->execute($params);

	if ($query) {
		echo date("d.m.Y H:i:s", $time);
	} else {
		echo 'ошибка при добавлении комментария!';
	}

    $db = null;
    $query = null;
	