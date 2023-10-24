
let btn_contar = document.getElementById("btn-contar");
let resposta = document.getElementById("resposta");

btn_contar.onclick = function contar() {
  

        let inicio = document.getElementById("inicio");
        let fim = document.getElementById("fim");
        let passo = document.getElementById("passo");
        let resultados = "";
        const maoDireita = "\u{1F449}";
        const bandeiraChegada = "\u{1F3C1}";

        if (inicio.value.length == 0 || fim.value.length == 0 || passo.value.length == 0) {

            //Campos vazios

            resposta.innerHTML = "Impossível contar! Preencha os campos corretamente.";  

            alert('[ERRO] Faltam dados!');                      

        } else {

            resposta.innerHTML = "Contando: <br>"

            inicio = Number(inicio.value);
            fim = Number(fim.value);
            passo = Number(passo.value);
        
            if (passo <= 0) {

                //Passo igual a zero

                alert("Passo inválido! Considerando passo = 1.");
                passo = 1;                

            }
            
            if (inicio < fim) {

                //Contagem crescente
                         
                for(let i = inicio; i <= fim; i += passo) {
                
                    resposta.innerHTML += i + " " + maoDireita;
                        
                    }                         

            } else {

                //Contagem decrescente
                 
                    for(let i = inicio; i >= fim; i -= passo) {
                
                        resposta.innerHTML += i + " " + maoDireita;                                   
                        
                    } 
            }
                        
            resposta.innerHTML += bandeiraChegada;  

        }            

    }