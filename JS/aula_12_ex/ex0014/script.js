function carregar() {
    var msg = document.getElementById('msg');
    var img = document.getElementById('imagem');
    var data = new Date;
    var horaAtual = data.getHours();

    msg.innerHTML = `Agora são ${horaAtual} hora(s)!`;

    if(horaAtual >= 0 && horaAtual < 12) {
        img.src = 'img/manha.png';
        document.body.style.background = "#DD9D70"
    } else if (horaAtual >= 12 && horaAtual <= 18) {
        img.src = 'img/tarde.png';
        document.body.style.background = "#9C7E98"
    } else {
        img.src = 'img/noite.png';
        document.body.style.background = "#29414F"
    }
}


