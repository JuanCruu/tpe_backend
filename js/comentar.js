"use strict"



let app2 = new Vue({
    el: "#Crearcomentario",
    data: {

    },
    methods:{
        comentar:function(){
            let  comentario=document.querySelector('#message').value;
            let juego=document.querySelector('#id_juego').value;
            let usuario=document.getElementsByTagName("input")[0].value;
            let puntaje=document.querySelector('#puntaje').value;
           console.log(puntaje);
            
            let coment={
                "comentario":comentario,
                 "id_juego_fk":juego,
                 "id_usuario":usuario,
                 "puntaje":puntaje

            };
            ////////////////////////////////////
            fetch('api/Comentario', {
                "method": "POST",
                "headers": { "Content-Type": "application/json" },
                "body": JSON.stringify(coment)
              }).then(function(r){
                return r.json()
              })
              .then(function(json) {
               alert('cualquier cosa')
                
              })
              .catch(function(e){
                console.log("hola?");
            })
        },
        borrar:function($id){
            fetch('api/Comentario/'+$id, {
                "method": "DELETE",
                "headers": { "Content-Type": "application/json" },
                
              });
        }
              
    }  


});

    
        