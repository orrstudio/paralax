//  Скрипт для переключателя страницы на чёрную тему

var checkbox = document.querySelector('.theme-switch__checkbox');

checkbox.addEventListener('change', function () {
    transition();
    if (this.checked) {
        document.documentElement.setAttribute('data-theme', 'dark');
    } else {
        document.documentElement.setAttribute('data-theme', 'light');
    }
})

// Функция замедлении времени переключателя темы
function transition() {
    document.documentElement.classList.add('transition');
    setTimeout(function () {
        document.documentElement.classList.remove('transition');
    }, 250)
}

// Переключение между добавлением и удалением «responsive» класса в topnav, когда пользователь нажимает на значок
function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function () { scrollFunction() };

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("myBtn").style.display = "block";
    } else {
        document.getElementById("myBtn").style.display = "none";
    }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0; // For Safari
    document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
}