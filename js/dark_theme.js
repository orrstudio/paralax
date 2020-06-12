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