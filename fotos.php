<!DOCTYPE html>
<html>
<head>
   
  <?php
    require_once "blocks/functions.php"; 

    //подключение к pdo
    connectDB();

    // получение всех фотографий
    $query = $db->query("SELECT * FROM `foto_gallery` ORDER BY `foto_date` ASC");
    $fotos = $query->fetchAll();

    // закрытие соединения с pdo
    closeDB();

    $title = 'fotos';
    require_once "blocks/head.php";
  ?> 
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

  <style type="text/css">
      body {
        background: fixed url(/images/background_foto/5.jpg) 0% 20% no-repeat;
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
          <?php 

            if ($error_base) {
              echo $error_base;
            } else {  
              $year = date(Y);
              for ($i = $year; $i >= 2010; $i--) {
                $timer1 = mktime(23,59,59,12,31,$i);
                $timer2 = mktime(0,0,0,1,1,$i);
                $fotosYear = array();
                
                for ($j = count($fotos); $j >= 0; $j--) {
                  if (($fotos[$j]["foto_date"] > $timer2) && ($fotos[$j]["foto_date"] < $timer1)) {
                    $fotosYear[] = array_pop($fotos);
                  }
                }
                
                if (count($fotosYear) > 0) {
                  echo '<div class="year-fotos">'.$i.' год</div><div class="fotos">';
                  for ($j = 0; $j < count($fotosYear); $j++) {
                    echo '<a href="/foto.php?id='.$fotosYear[$j]["id"].'"><img src="'.$fotosYear[$j]["foto_small"].'" alt="фотография '.$fotosYear[$j]["id"].'" /></a>';
                  }
                  echo '</div><div class="clear"><br></div>';
                }
              }
            }

          ?>
   
      </div>

      <?php require_once "blocks/advertizing.php" ?>
   
    </div>
   
    <?php require_once "blocks/footer.php" ?>

  </div>

</body>
</html>