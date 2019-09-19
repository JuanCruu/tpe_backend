"use strict"
document.addEventListener("DOMContentLoaded", function (){


let btncaptcha=document.getElementById("btncaptcha");
btncaptcha.addEventListener("click", validar);



function validar(){
    let inputcaptcha = document.getElementById("inputcaptcha");
    let respuesta = inputcaptcha.value;

    if(respuesta==40){
        alert("Gracias por registrarse,se enviara un mail para validar ( ͡° ͜ʖ ͡°)");
        location.href="index.html";
    }
    else{
        alert("respuesta incorrecta");
        location.href="registro.html";
    }

}
});
