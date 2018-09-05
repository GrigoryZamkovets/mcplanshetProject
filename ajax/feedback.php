<?php
    $to = 'Green5050555@mail.ru';
	$name = htmlspecialchars($_POST['name']);
	$email = htmlspecialchars($_POST['email']);
	$subject = htmlspecialchars($_POST['subject']);
	$message = htmlspecialchars($_POST['message']);
	
	if ($name == '' || $email == '' || $subject == '' || $message == '') {
		echo 'Заполните все поля!';
		exit;
	}
	
	// отправка письма
	$subject = "=?utf-8?B?".base64_encode($subject)."?=";
	$headers = "From: $email\r\nReply-to: $email\r\n\Content-type: 
	text/plain; charset=utf-8\r\n";
	if (mail($to, $subject, $message, $headers))
		echo 'Ваше сообщение отправлено!';
	else
		echo 'Сообщение не оправлено!';
	