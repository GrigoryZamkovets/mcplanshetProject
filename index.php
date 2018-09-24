<!DOCTYPE html>
<html>
<head>

  <?php
      require_once "blocks/functions.php"; 
      $title = 'MC PlanShet';
      require_once "blocks/head.php";
  ?> 

  <style type="text/css">
      body {
        background: fixed url(/images/background_foto/6.jpg) 0% 30% no-repeat;
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

        <?php 
            // получаем необходимые анонсы для текущей страницы

            // установка количества анонсов на страницу и текущий номер страницы
            $per_page = 4;
            $page = 1;
            if (isset($_GET['page'])) {
              $page = htmlspecialchars($_GET['page']);
              $page = intval($page);
            }

            //подключение к pdo
            connectDB();

            // получение количества новостных статей
            $query = $db->query("SELECT COUNT(`id`) AS `total_count` FROM `announcement`");
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
            $query = $db->query("SELECT * FROM `announcement` ORDER BY `id` DESC LIMIT $offset, $per_page");
            $announcement = $query->fetchAll();

            // закрытие соединения с pdo
            closeDB();
        ?>
        
        <?php if ($error_base): ?>
            <div class="error-base"><?=$error_base?></div>
        <?php else: ?>
            <?php for ($i = 0; $i < count($announcement); $i++): ?>
                <div class="first-poster">
                  <img src="<?=$announcement[$i]["image_src"]?>" alt="<?=$announcement[$i]["image_alt"]?>" />
                  <h2><a href="/announcement.php?id=<?=$announcement[$i]["id"]?>&amp;page=<?=$page?>"><?=$announcement[$i]["title"]?></a></h2>
                  <p><?=$announcement[$i]["intro_text"]?> ... <a href ="/announcement.php?id=<?=$announcement[$i]["id"]?>&amp;page=<?=$page?>">подробнее &#9658;</a></p>
                </div>
            <?php endfor; ?>
        <?php endif; ?>

        <?php
            //делаем пагинатор если есть несколько страниц для статей
            if ($total_pages > 1) {
              echo '<div class="paginator">';
              if ($page > 1) {
                echo '<a href="/index.php?page='.($page - 1).'">&laquo; предыдущая страница</a>';
              }
              if ($page < $total_pages) {
                echo '<a href="/index.php?page='.($page + 1).'">следующая страница &raquo; </a>';
              }
              echo '</div>';
            } 
        ?>

      </div>

      <?php require_once "blocks/advertizing.php" ?>
   
    </div>

    <?php require_once "blocks/footer.php" ?>

  </div>

</body>
</html>
 