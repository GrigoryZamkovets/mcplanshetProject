<div class="aside1"> 
    <?php 
        //подключение к pdo
        $db = false;
        $error_base = false;
        $db = new PDO ('mysql:host=localhost;dbname=mcplanshet_base', 'root', '');
        $db->exec("SET NAMES UTF8");
        if ($db == false) {
          $error_base = 'Connect Error: '.mysqli_connect_error;
        }

        // получение 5 самых популярных новостных статей
        $query = $db->query("SELECT * FROM `music_news` ORDER BY `views` DESC LIMIT 0, 5");
        $popular_news = $query->fetchAll();

        // получение 5 последних добавленных новостных статей
        $query = $db->query("SELECT * FROM `music_news` ORDER BY `date` DESC LIMIT 0, 5");
        $last_news = $query->fetchAll();

        // закрытие соединения с pdo
        $db = null;
        $query = null;
    ?>

    <?php if ($error_base): ?>
        <div class="error-base"><?=$error_base?></div>
    <?php else: ?>
        <ul class="news-date">
            <p>самые популярные статьи</p>
        <?php foreach ($popular_news as $one): ?>
            <li><a href="article.php?id=<?=$one['id']?>&page=1"><?=$one['title']?></a> <?=date("d.m.y H:i", $one['date'])?></li>
        <?php endforeach; ?> 
        </ul> 
        <ul class="news-date">
            <p>последние добавленные статьи</p>
            <?php foreach ($last_news as $one): ?>
                <li><a href="article.php?id=<?=$one['id']?>&page=1"><?=$one['title']?></a> <?=date("d.m.y H:i", $one['date'])?></li>
        <?php endforeach; ?> 
        </ul> 
    <?php endif; ?>

</div>