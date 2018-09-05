<?php
    include_once "blocks/nocache.php";
    nocache();
?>

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

    // получение анонса из базы данных
    $query = $db->prepare("SELECT * FROM `announcement` WHERE `id`=:id ");     
    $params = array ('id' => $id);
    $query->execute($params);
    $announcement = $query->fetch();

    // закрытие соединения с pdo
    closeDB();

    // проверка на существование данной статьи в базе
    if ($announcement == false && $error_base == false) {
      $error_base = "статьи с таким номером нет!";
    }

    $title = $announcement["title"];
    require_once "blocks/head.php";
  ?> 

  <style type="text/css">
      body {
        background: fixed url(/images/background_foto/2.jpg) 0% 20% no-repeat;
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
            <div id="announcement">
              <img src="<?=$announcement["image_src"]?>" alt="<?=$announcement["image_alt"]?>" />
              <h2><?=$announcement["title"]?></h2>
              <hr />
              <p><?=$announcement["full_text"]?></p>
              <hr />
              <a href="index.php?page=<?=$page?>">вернуться на главную страницу &raquo;</a>
            </div> 
        <?php endif; ?>

      </div>

      <?php require_once "blocks/advertizing.php" ?>

      <div class="clear"></div>
   
    </div>
   
    <?php require_once "blocks/footer.php" ?>

  </div>

</body>
</html>