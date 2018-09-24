<!DOCTYPE html>
<html>
<head>
   
  <?php
    require_once "blocks/functions.php";

    //подключение к pdo
    connectDB();

    // получение количества фотографий в базе
    $query = $db->query("SELECT COUNT(`id`) AS `count_id` FROM `foto_gallery`");
    $count_id = $query->fetch();
    $count_fotos = $count_id['count_id'];

    // преобразование полученного id
    $id = 1;
    if (isset($_GET['id'])) {
      $id = htmlspecialchars($_GET['id']);
      $id = intval($id);
    } 
    if ($id < 1) {
      $id = $count_fotos;
    }
    if ($id > $count_fotos) {
      $id = 1;
    }

    // получение фотографии из базы данных
    $query = $db->prepare("SELECT * FROM `foto_gallery` WHERE `id`=:id");     
    $params = array ('id' => $id);
    $query->execute($params);
    $foto = $query->fetch();

    // получение комментариев к фотографии из базы данных
    $query = $db->prepare("SELECT * FROM `comments_foto` WHERE `id_foto`=:id ORDER BY `dt` DESC");    
    $params = array ('id' => $id);
    $query->execute($params);
    $comments = $query->fetchAll();

    // закрытие соединения с pdo
    closeDB();

    $title = $foto["foto_title"];
    require_once "blocks/head.php";
  ?> 
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
  <script>

    $(document).ready (function() {

      $(".hide").hide();

      // работа ссылки "написать письмо"
      $(".write").click (function() {
        $("#comment").show();
        $(".hide").show();
        $(".write").hide();
      });

      // работа ссылки "скрыть форму"
      $(".hide").click (function() {
        $('#comment .error').empty();
        $('#comment .success').empty();
        $('#comment input[name="name"]').val("");
        $('#comment textarea[name="text"]').val("");
        $("#comment").hide();
        $(".hide").hide();
        $(".write").show();
      });

      // работа кнопки "отправить"
      $('#comment input[name="done"]').click (function() {
        $('#comment .error').empty();
        $('#comment .success').empty();
        var errors = [];
        var error = false;
        var name = $('#comment input[name="name"]').val();
        var text = $('#comment textarea[name="text"]').val();
        var id_foto = $('#comment input[name="id_foto"]').val();
        var date = new Date();
        var time = Date.now();
        time = Math.floor(time/1000);

        if (name == "") {
            errors[errors.length] = 'введите ваше имя!';
            error = true;
        }
        if (text.length == 0) {
            errors[errors.length] = 'введите ваш комментарий';
            error = true;
        }

        if (error) {
            $('#comment .error').text(errors[0]);
        } else {
          $.ajax({
              url: '/ajax/commentsfoto.php',
              type: 'POST',
              cache: false,
              data: {'name': name, 'text': text, 'id_foto': id_foto, 'time': time},
              dataType: 'html',
              success: function(data) {
                  $('#comment input[name="name"]').val("");
                  $('#comment textarea[name="text"]').val("");
                  if (data == 'ошибка при добавлении комментария!') {
                      $('#comment').append('<p class="error">ошибка при добавлении комментария!</p>');
                  } else {
                      $('#noComment').remove();
                      $('#comment').append('<p class="success">ваш комментарий успешно добавлен!</p>');
                      $('#comments').prepend('<div id="newcomment" class="item-comment"><span>' + data + '</span></div><hr>');
                      $('#newcomment').append('<strong>' + name + '</strong>');
                      $('#newcomment').append('<div>' + text + '</div>');
                  }
              }    
          });
        }

      });

    });

  </script>

  <style type="text/css">
      body {
        background: fixed url(/images/background_foto/4.jpg) 0% 30% no-repeat;
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
        
        <?php if ($error_base): ?>
            <div class="error-base"><?=$error_base?></div>
        <?php else: ?>
            <div id="foto">
              <img src="<?=$foto['foto_src']?>" alt="фотография <?=$foto['id']?>" />
              <h2><?=$foto['foto_title']?> (<?=date(Y, $foto['foto_date'])?>)</h2>
              <div class="paginator-foto">
                <a href="foto.php?id=<?=($id+1)?>">&laquo; назад</a>
                <a href="foto.php?id=<?=($id-1)?>">вперед &raquo;</a>
              </div>
              <hr />
              <a href="fotos.php">вернуться к другим фотографиям &raquo;</a>
            </div> 
        <?php endif; ?>
      
        <a href="#comm" class="write">оставить свой комментарий к фотографии</a>
        <a href="#" class="hide">cкрыть форму комментариев</a>
        <a name="comm"></a>  

        <!-- блок с комментариями -->
        <form id="comment">
          <input type="hidden" name="id_foto" value="<?=$foto['id']?>">
          <p>Имя</p>
          <input type="text" name="name"><br />
          <p>Комментарий</p>
          <textarea name="text"></textarea><br />
          <input type="button" name="done" value="отправить">
          <p class="error"></p>
        </form>    

        <div id="comments">
            <? if (empty($comments)): ?>
              <div id="noComment" style="color: silver; font-size: 0.9em;"> к данной фотографии комментариев нет ... </div>
            <? else: ?>
              <? foreach ($comments as $one): ?>
                <div class="item-comment">
                  <span><?=date("d.m.Y H:i:s", $one['dt'])?></span>
                  <strong><?=$one['name']?></strong>
                  <div><?=$one['text']?></div>
                </div>
                <hr />
              <? endforeach; ?>   
            <? endif; ?>  
        </div>

      </div>

      <?php require_once "blocks/advertizing.php" ?>
   
    </div>
   
    <?php require_once "blocks/footer.php" ?>

  </div>

</body>
</html>