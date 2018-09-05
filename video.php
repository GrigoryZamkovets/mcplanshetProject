<!DOCTYPE html>
<html>
<head>
   
  <?php
    require_once "blocks/functions.php";

    //подключение к pdo
    connectDB();

    // получение всех видео
    $query = $db->query("SELECT * FROM `video` ORDER BY `video_date` DESC");
    $videos = $query->fetchAll();

    // закрытие соединения с pdo
    closeDB();
 
    $title = 'video';
    require_once "blocks/head.php";
  ?> 

  <style type="text/css">
      body {
        background: fixed url(/images/background_foto/7.jpg) 50% 50% no-repeat;
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
            <?php foreach ($videos as $video): ?>
                <div class="video">
                    <iframe src="<?=$video['video_src']?>" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                    <hr />
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