let btn = document.getElementById("btn");

btn.onclick = function calcular() {

    let entrada = document.getElementById("entrada");
    let resposta = document.getElementById("resposta");
        
    if (entrada.value.length == 0) {

        alert("Adicione um número.");

    } else {       

        resposta.innerHTML = ""

        for(let i = 0; i <= 10; i++) {

            resposta.innerHTML += '<option>' + i + " x " + Number(entrada.value) + " = " + i * Number(entrada.value) + '</option>';                     
                    
        }         

    }
}
