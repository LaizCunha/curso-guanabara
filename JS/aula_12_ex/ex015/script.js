function verificar() {

    var data = new Date;
    var ano = data.getFullYear();
    var fano = document.getElementById("txtano");
    var res = document.getElementById("res");

    if(fano.value.length == 0 || Number(fano.value) > ano) {
        alert("[ERRO]:  Verifique os dados e tente novamente!");

    } else {
        var fsex = document.getElementsByName("radsex");
        var idade = ano - Number(fano.value);
        res.innerHTML = `Idade calculada: ${idade}`;
        var genero = ' ';
        var img = document.createElement('img');
        img.setAttribute('id', 'foto');

        if(fsex[0].checked) {
            genero = "Homem";
            if(idade >= 0 && idade < 10) {
                img.setAttribute('src', 'bebe_menino.png');
            } else if (idade < 21) {
                img.setAttribute('src', 'jovem_homem.png');
            } else if (idade < 60) {
                img.setAttribute('src', 'adulto_homem.png');
            } else {
                img.setAttribute('src', 'idoso_homem.png');
            }

        } else if (fsex[1].checked) {
            genero = "Mulher";
            if(idade >= 0 && idade < 10) {
                img.setAttribute('src', 'bebe_menina.png');
            } else if (idade < 21) {
                img.setAttribute('src', 'jovem_mulher.png');
            } else if (idade < 60) {
                img.setAttribute('src', 'adulto_mulher.png');
            } else {
                img.setAttribute('src', 'idosa_mulher.png');
            }
        }

        res.style.textAlign = "center";
        res.innerHTML = `Detectamos ${genero} com ${idade} anos`;
        res.appendChild(img);
    }        

}