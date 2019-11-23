"use strict"

let app = new Vue({
    el: "#AreaComentarios",
    data: {
        title: "Comentarios",
        loading: false,
        comentarios: [] 
        
    }
});

document.querySelector("#btn-refresh").addEventListener('click', allComents);

function allComents() {
    // inicia la carga
   
    let id=document.getElementsByTagName("input")[0].value;
    console.log(id);
    
        fetch("api/Comentario/"+id)
        .then(response => response.json())
        .then(comentarios => {
            app.comentarios  = comentarios,
            app.loading = true;
        })
        .catch(error => console.log(error));
    }

    

    allComents();
            
            
       
    
    
    
        
        
