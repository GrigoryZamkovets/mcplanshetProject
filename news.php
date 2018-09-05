<?php
    include_once "blocks/nocache.php";
    nocache();

?>    

<!DOCTYPE html>
<html>
<head>
  
  <?php
      require_once "blocks/functions.php";
      $title = 'news';
      require_once "blocks/head.php";
  ?> 

  <style type="text/css">
      body {
        background: fixed url(/images/background_foto/1.jpg) 0% 20% no-repeat;
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

        <div id="news-content">
          
          <?php 
              // получаем необходимые статьи для текущей страницы

              // установка количества статей на страницу и текущий номер страницы
              $per_page = 6;
              $page = 1;
              if (isset($_GET['page'])) {
                $page = htmlspecialchars($_GET['page']);
                $page = intval($page);
              }

              //подключение к pdo
              connectDB();

              // получение количества новостных статей
              $query = $db->query("SELECT COUNT(`id`) AS `total_count` FROM `music_news`");
              $total_count = $query->fetch();
              $total_count = $total_count['total_count'];

              // закрытие соединения с pdo
              closeDB();

              // определение количества страниц и сдвиг для каждой страницы
              $total_pages = ceil($total_count/$per_page);
              if ($page < 1 || $page > $total_pages) {
                $page = 1;
              }
              $offset = $per_page * $page - $per_page;

              //подключение к pdo
              connectDB();

              // получение новостных статей
              $query = $db->query("SELECT * FROM `music_news` ORDER BY `date` DESC LIMIT $offset, $per_page");
              $musicNews = $query->fetchAll();

              // закрытие соединения с pdo
              closeDB();
          ?>

          <!-- вывод статей на страницу -->
          <?php if ($error_base): ?>
              <div class="error-base"><?=$error_base?></div>
          <?php else: ?>
                <?php foreach ($musicNews as $one): ?>
                  <a href="article.php?id=<?=$one['id']?>&amp;page=<?=$page?>">
                    <div class="news"> 
                      <img src="images/images_news/<?=$one['id']?>.jpg" alt="картинка <?=$one['id']?>" /> 
                      <p><?=$one['title']?></p>
                      <span><?=date("d.m.Y H:i", $one['date'])?></span>
                      <hr />
                    </div>
                  </a>
                <?php endforeach; ?>
          <?php endif; ?>

          <?php
              //делаем пагинатор если есть несколько страниц для статей
              if ($total_pages > 1) {
                echo '<div class="paginator">';
                if ($page > 1) {
                  echo '<a href="/news.php?page='.($page - 1).'">&laquo; предыдущая страница</a>';
                }
                if ($page < $total_pages) {
                  echo '<a href="/news.php?page='.($page + 1).'">следующая страница &raquo; </a>';
                }
                echo '</div>';
              } 
          ?>
        </div>

      </div>

      <?php include_once "blocks/advertizing.php" ?>

      <div class="clear"></div>
   
    </div>
   
    <?php require_once "blocks/footer.php" ?>

  </div>

</body>
</html>







