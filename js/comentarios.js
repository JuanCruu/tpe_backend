"use strict"

let app = new Vue({
    el: "#AreaComentarios",
    data: {
        title: "Comentarios",
        loading: false,
        promedio: 0,
        comentarios: [] 
        
    },
    methods:{
        borrar:function(event, id_comentario){
            fetch('api/Comentario/'+id_comentario, {
                "method": "DELETE",
                "headers": { "Content-Type": "application/json" },
            });
            allComents();
        }
    }
});





document.querySelector("#btn-refresh").addEventListener('click', allComents);

function allComents() {
    // inicia la carga
    let  id=document.querySelector('#id_juego').value;
    console.log(id);
    fetch("api/Comentario/"+id)
    .then(response => response.json())
    .then(comentarios => {
        app.comentarios  = comentarios,
        app.promedio =  hacerPromedio(comentarios),
        app.loading = true;
    })
    .catch(error => console.log(error));
}
function hacerPromedio(comentarios){
    let contador=0;
    let total=0;
    for (let comentario of comentarios) {
        contador++;
        total+= parseInt(comentario.puntaje);
    }
    total = total/contador;
    return total;
    
}
allComents();

    

   
   

            
            
       
    
    
    
        
        
