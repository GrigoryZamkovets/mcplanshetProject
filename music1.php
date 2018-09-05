<!DOCTYPE html>
<html>
<head>
   
  <?php
    require_once "blocks/functions.php";

    //подключение к pdo
    connectDB();

    // получение всех альбомов mc planshet
    $query = $db->query("SELECT * FROM `music_albums` WHERE `name_artist` = 'mc planshet' ORDER BY `album_date` DESC");
    $albums = $query->fetchAll();

    // закрытие соединения с pdo
    closeDB();
 
    $title = 'mc planshet music';
    require_once "blocks/head.php";
  ?>

  <style type="text/css">
      body {
        background: fixed url(/images/background_foto/3.jpg) 50% 50% no-repeat;
        background-size: cover;
        /*background-repeat: no-repeat;*/
        /*background-attachment: fixed;
        background-position: 100% 100%;*/
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
            <?php foreach ($albums as $album): ?>
                <div class="albums">
                  <img src="<?=$album['img_src']?>" alt="<?=$album['album_name']?>" />
                  <div class="album-content">
                    <?php if ($album['album_text'] !== ""): ?>
                      <h2><?=$album['album_name']?> (<?=$album['album_date']?>)</h2>
                      <p>трек-лист:</p> 
                      <p><?=$album['album_text']?></p>
                    <?php else: ?>
                      <h2><?=$album['album_name']?></h2>
                      <p>здесь все треки, не вошедшие в альбомы и микстейпы, начиная с 2011 года</p>
                    <?php endif; ?>
                    <a href="<?=$album['album_src']?>" download>скачать &raquo;</a>
                  </div>
                  <hr>
                </div>
            <?php endforeach; ?>
        <?php endif; ?>

      </div>

      <?php require_once "blocks/advertizing.php" ?>
   
    </div>
   
    <?php require_once "blocks/footer.php" ?>

  </div>

</body>
</html>