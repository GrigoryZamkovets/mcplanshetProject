<!DOCTYPE html>
<html>
<head>
  
  <?php
    $title = 'contact';
    require_once "blocks/head.php";
  ?>  
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
  <script>
    $(document).ready (function() {

      // выведение заголовка "контакты"
      var mn = $("#menu a");
      var ttl = mn[6].innerText;
      $('#contact').prepend("<h2>"+ttl+"</h2>");
      $(".hide").hide();

      // скрывание всех сообщений об ошибках в форме
      $("#error-name").hide();
      $("#error-email").hide();
      $("#error-subject").hide();
      $("#error-message").hide();

      // работа ссылки "написать письмо"
      $(".write").click (function() {
        $("#form").show();
        $("#messageShow").hide();
        $(".write").hide();
        $(".hide").show();
      });

      // работа ссылки "скрыть форму"
      $(".hide").click (function() {
        $("#form").hide();
        $("#messageShow").hide();
        $(".hide").hide();
        $(".write").show();
      });

      // работа ссыки "перейти к форме письма"
      $(".rewrite").click (function() {
        $("#form").show();
        $("#messageShow").hide();
      });

      // работа кнопки "отправить"
      $("#send").click (function() {
        $("#error-name").hide();
        $("#error-email").hide();
        $("#error-subject").hide();
        $("#error-message").hide();
        var name = $("#name").val();
        var email = $("#email").val();
        var subject = $("#subject").val();
        var message = $("#message").val();
        var error = false;

        if (name == "") {
            $('#error-name').show();
            error = true;
            return false;
        }
        if(email.split('@').length == 1 || email.split('.').length == 1) {
            $('#error-email').show();
            error = true;
            return false;
        }
        if(subject.length == 0) {
            $('#error-subject').show();
            error = true;
            return false;
        }
        if(message.length == 0) {
            $('#error-message').show();
            error = true;
            return false;
        }

        if (!error) {
          $.ajax({
              url: '/ajax/feedback.php',
              type: 'POST',
              cache: false,
              data: {'name': name, 'email': email, 'subject': subject, 'message': message},
              dataType: 'html',
              success: function(data) {
                $("#form").hide();
                $("#messageShow h2").empty();
                $("#messageShow h2").text(data);
                $("#messageShow").show();
                $("#name").val("");
                $("#email").val("");
                $("#subject").val("");
                $("#message").val("");
              }    
          });
        }

      });
    });

  </script> 

  <style type="text/css">
      body {
        background: fixed url(/images/background_foto/3.jpg) 50% 40% no-repeat;
        background-size: cover;
      }
  </style>  
   
</head>
<body>

<div class="container">
  
    <?php require_once "blocks/header.php" ?>

    <div class="wrapper">
   
      <?php require_once "blocks/newsblock.php" ?>

      <div id="center-panel">

        <div id="contact">
          
          <div id="cont1">
            По вопросам организации концертов: <br>
            Иван Иванов <br>
            Тел: +37529-222-33-44, +37544-222-33-44 <br>
            E-mail: ivanov@gmail.com <br>
          </div>

          <div id="cont2">
            Просим включать в email-сообщения, связанные с организацией концертов, следующую информацию: <br>
            - название проекта - MC PlanShet или "Космос Рядом", <br>
            - город, <br>
            - площадку, <br>
            - вместительность, <br>
            - цену билета, <br>
            - список артистов, с которыми работали. <br>
          </div> 

          <div id="cont3">
            По всем остальным вопросам: <br>
            Петр Петров <br>
            Менеджер проектов MC PlanShet и "Космос Рядом" <br>
            MC PlanShet E-mail: contact@mcplanshet.com <br>
            Космос Рядом E-mail: contact@kosmosriadom.com <br>
          </div>

          <a name="mess"></a>
          <a href="#mess" class="write">Написать письмо &raquo;</a>
          <br>
          <a href="#mess" class="hide">Скрыть форму &raquo;</a>

          <!-- форма письма -->

          <div id="form">
              <table>
                <tr>
                  <td width="155px"><span>Ваше Имя:</span></td>
                  <td><input type="text" class="send" id="name" name="name" size="45"></td>
                  <td><span class="error" id="error-name">введите ваше имя!</span></td>
                </tr> 
                <tr>
                  <td><span>Ваш Email:</span></td>
                  <td><input type="text" class="send" id="email" name="email" size="45"></td>
                  <td><span class="error" id="error-email">введите корректный email!</span></td>
                </tr> 
                <tr>
                  <td><span>Тема Сообщения:</span></td>
                  <td><input type="text" class="send" id="subject" name="subject" size="45"></td>
                  <td><span class="error" id="error-subject">введите тему сообщения!</span></td>
                </tr> 
                <tr>
                  <td valign="top"><span>Ваше Сообщение:</span></td>
                  <td><textarea id="message" name="message" cols="45" rows="8"></textarea></td>
                  <td valign="top"><span class="error" id="error-message">введите ваше сообщение!</span></td>
                </tr>  
                <tr>
                  <td></td>
                  <td align="center"><input type="button" id="send" name="send" value="Отправить">
                  </td>
                  <td></td>
                </tr>  
              </table> 
          </div>

          <div id="messageShow">
            <h2></h2>
            <a href="/">перейти на главную страницу &raquo;</a>
            <br>
            <a href="#mess" class="rewrite">перейти к форме письма &raquo;</a>
          </div>  
     
        </div>
        
      </div>
     
      <?php include_once "blocks/advertizing.php" ?>

      <div class="clear"></div>

    </div> 
   
    <?php require_once "blocks/footer.php" ?>

  </div>

</body>
<html>