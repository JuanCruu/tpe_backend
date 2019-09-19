"use strict"
 document.addEventListener("DOMContentLoaded", function (){


    let btnesconder=document.querySelector("#boton_index");
    btnesconder.addEventListener("click",aplicarcollapse);



    function aplicarcollapse(){
    let caja=document.querySelector(".caja2");
    caja.classList.toggle("Ocultar");
    }

});
