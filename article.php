<!DOCTYPE html>
<html>
<head>
   
  <?php
    require_once "blocks/functions.php";

    // преобразование полученного id и номера страницы page
    $id = 1;
    if (isset($_GET['id'])) {
      $id = htmlspecialchars($_GET['id']);
      $id = intval($id);
    } 
    $page = 1;
    if (isset($_GET['page'])) {
      $page = htmlspecialchars($_GET['page']);
      $page = intval($page);
    }

    //подключение к pdo
    connectDB();

    // увеличение количества просмотров
    $query = $db->prepare("UPDATE `music_news` SET `views` = `views`+1 WHERE `id`=:id ");     
    $params = array ('id' => $id);
    $query->execute($params);

    // получение статьи из базы данных
    $query = $db->prepare("SELECT * FROM `music_news` WHERE `id`=:id ");     
    $params = array ('id' => $id);
    $query->execute($params);
    $musicNews = $query->fetch();

    // получение комментариев к статье из базы данных
    $query = $db->prepare("SELECT * FROM `comments_news` WHERE `id_article`=:id ORDER BY `dt` DESC");    
    $params = array ('id' => $id);
    $query->execute($params);
    $comments = $query->fetchAll();

    // закрытие соединения с pdo
    closeDB();

    // проверка на существование данной статьи в базе
    if ($musicNews == false && $error_base == false) {
      $error_base = "статьи с таким номером нет!";
    }

    $title = $musicNews["title"];
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
        var id_article = $('#comment input[name="id_article"]').val();
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
              url: '/ajax/comments.php',
              type: 'POST',
              cache: false,
              data: {'name': name, 'text': text, 'id_article': id_article, 'time': time},
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
        background: fixed url(/images/background_foto/2.jpg) 0% 20% no-repeat;
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
            <div id="article">
              <img src="images/images_news/<?=$musicNews['id']?>.jpg" alt="картинка <?=$musicNews['id']?>" />
              <h2><?=$musicNews['title']?></h2>
              <hr />
              <p><?=$musicNews['text']?></p>
              <hr />
              <?php if (!empty($musicNews['video_src'])): ?>
                  <div class="iframe-video">
                    <?=$musicNews['video_src']?>
                  </div>
                  <hr />
              <?php endif; ?>
              <a href="news.php?page=<?=$page?>">вернуться к другим новостям &raquo;</a>
              <div class="views"><?=$musicNews['views']?> просмотров</div>  
            </div> 
        <?php endif; ?>
      
        <a href="#comm" class="write">оставить свой комментарий к статье</a>
        <a href="#" class="hide">cкрыть форму комментариев</a>
        <a name="comm"></a>  

        <!-- блок с комментариями -->
        <form id="comment">
          <input type="hidden" name="id_article" value="<?=$musicNews['id']?>">
          <p>Имя</p>
          <input type="text" name="name"><br />
          <p>Комментарий</p>
          <textarea name="text"></textarea><br />
          <input type="button" name="done" value="отправить">
          <p class="error"></p>
        </form>    

        <div id="comments">
            <? if (empty($comments)): ?>
              <div id="noComment" style="color: silver; font-size: 0.9em;"> к данной статье комментариев нет ... </div>
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

      <div class="clear"></div>
   
    </div>
   
    <?php require_once "blocks/footer.php" ?>

  </div>

</body>
</html>