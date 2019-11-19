"use strict"

let app = new Vue({
    el: "#AreaComentarios",
    data: {
        title: "me gustaria saber que estoy",
        loading: false,
        comentarios: [] 
    }
});

document.querySelector("#btn-refresh").addEventListener('click', allComents);

function allComents() {
    // inicia la carga
    app.loading = true;

    fetch("api/mostrarComentarios")
    .then(response => response.json())
    .then(comentarios => {
        app.comentarios  = comentarios;
        app.loading = false;

        
    })
    .catch(error => console.log(error));
}


allComents();
