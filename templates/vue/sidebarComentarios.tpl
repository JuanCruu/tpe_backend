{literal}
<section id="AreaComentarios">

        <div>
            <p>{{title}}</p>
            <div v-if="loading" class="card-body">
                Cargando...
                 <ul v-if="!loading"v-for="comentarios in comentario" >
                <li> 
                    {{ comentarios.comentario }} 
                </li>
                  </u>   
            </div>
             <button id="btn-refresh" type="button" class="btn btn-primary btn-sm">Refresh</button>
             <ul v-if="!loading" v-for="comentarios in comentario">
                <li> 
                    {{ comentario.comentarios }} 
                </li>
            </u
       </div>
        
</section>
<script src="js/comentarios.js"></script>

{/literal}
