
window.onload = function() {

    // выпадающее меню
    var menu1 = document.getElementsByClassName('menu-item')[0];
    var menu2 = menu1.getElementsByTagName('span')[0];
    var subm = document.getElementsByClassName('submenu')[0];
   
    menu2.onclick = function() {
        subm.style.display = 'block';
    }      
   
    document.onclick = function(event) {
        var target = event.target;
        if (target != menu2) {
            subm.style.display = 'none';
        }          
    }

    // модальное изображение
    var advert = document.getElementsByClassName('advertizing');
    var myModal = document.getElementById('myModal');
    var modalImg = document.getElementById('img01');
    var captionText = document.getElementById('caption');
    var i;
    
    for (i = 0; i < advert.length; i++) {
        advert[i].onclick = function() {    
        var img1 = this.getElementsByTagName('img')[0];
            myModal.style.display = 'block';
            modalImg.src = img1.src;
            captionText.innerHTML = this.innerText;  
        }   
    }  

    // корректировка высоты блоков first-poster
    var blocks = document.getElementsByClassName('first-poster');

    function equalHeight() {
        for (var j = 0; j < blocks.length; j++) {
            blocks[j].style.height = 'auto';
        } 

        for (var j = 1; j <= blocks.length; j = j + 2) {
            var height1 = blocks[j-1].offsetHeight;
            var height2 = blocks[j].offsetHeight;
            if (height1 >= height2) {
                blocks[j].style.height = height1 + 'px';
            } else {
                blocks[j-1].style.height = height2 + 'px';
            }
        } 
    }

    equalHeight();

    // корректировка размеров background-контейнера
    var container = document.getElementsByClassName('container')[0];

    function sizeBG() {
        container.style.width = 'auto';
        container.style.height = 'auto'; 

        var scrollWidth = Math.max(
            document.body.scrollWidth, document.documentElement.scrollWidth,
            document.body.offsetWidth, document.documentElement.offsetWidth,
            document.body.clientWidth, document.documentElement.clientWidth
        ); 
        var xscreen = scrollWidth;
        var scrollHeight = Math.max(
            document.body.scrollHeight, document.documentElement.scrollHeight,
            document.body.offsetHeight, document.documentElement.offsetHeight,
            document.body.clientHeight, document.documentElement.clientHeight
        ); 
        var yscreen = scrollHeight;
        container.style.width = xscreen + 'px';
        container.style.height = yscreen + 'px';  
    }

    sizeBG();

    // изменение background-контейнера и размеров статей при изменении размеров окна
    window.onresize = function() {
        sizeBG();
        equalHeight();
    }

}