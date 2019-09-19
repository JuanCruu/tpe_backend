"use strict"
 document.addEventListener("DOMContentLoaded", function (){

    let url="http://web-unicen.herokuapp.com/api/groups/juancruz/especificaciones";
    let el_borrar="http://web-unicen.herokuapp.com/api/groups/juancruz";
    let tabla = document.querySelector("#mesa");
    mostrar();
    /////////////boton de navegacion/////////////////////////////////////////////
    let btnEsconder=document.querySelector("#boton_Index");
    btnEsconder.addEventListener("click",efectoColapse);



    function efectoColapse(){
    let caja=document.querySelector(".letable");
    caja.classList.toggle("collapse");
    }

    
    
    document.querySelector("#agregar").addEventListener("click",agregar);
    document.querySelector("#borrar").addEventListener("click",borrar);
    function borrar(){
        fetch (el_borrar,{
            "method":"DELETE"
        });
    }

      function agregar(){
        // alert("asdasda");
        let input_especificaciones=document.querySelector("#especificaciones").value;
        let input_descripcion=document.querySelector("#descripcion").value;
        let datos = {
            "thing" : {
                "categoria" : input_especificaciones,
                "descripcion" : input_descripcion
            }
        }
        // console.log(url);
            
        fetch(url, {
            "method" : "POST",
            "headers" : { "Content-Type" : "application/json"},
            "body" : JSON.stringify(datos)
        })
        .then(responce => {
            return responce.json();
        })
        .then(json=> {
            mostrar();
        })
        .catch(err=>console.log(err));
        }

        function mostrar(){
            // alert("entro");
            //  fetch(url).then(responce=>responce.json()).then(json=>console.log(json));
            fetch(url)
            .then(function(respuesta){
                return respuesta.json();
            })
            .then(function(json){
                console.log(json.especificaciones);
                console.log(tabla);
                
                for (let es of json.especificaciones) {
                    tabla.innerHTML += "<tr>" +
                                            
                                             "<td>" + es.thing.categoria + "</td>" + 
                                             "<td>" + es.thing.descripcion + "</td>" +
                                            "</tr>";
                }
                
            })
        
        }
        
    

    });        



    












    
