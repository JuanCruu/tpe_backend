{literal}
    <section id="AreaComentarios">
     
            <div>
                <button id="btn-refresh" type="button" class="btn btn-primary btn-sm">Actualizar</button> <span>{{title}}</span>
                <div v-if="!loading" class="card-body">
                    Cargando...
                </div>

                <div v-if="loading" >
                 
                    <ul  v-for="comentario in comentarios" >
                        <li class="quieto">
                        
                            <div class="comment-main-level">
                                    <div class="comment-box">
                                        <div class="comment-head">
                                        <h6 class="comment-name"><p>{{comentario.id_usuario}}</p></h6>
                                        
                                        <i class="fa fa-reply"></i>
                                        <i class="fa fa-heart"></i>
                                    </div>
                                    <div class="comment-content">
                                        {{comentario.comentario}} 
                                    </div>
                                </div>
                            </div>
                            <div id="app-5">
                                <button v-on:click="borrar">borrar</button>
                            </div>
                        </li>
                    </ul>
                    
                 
                </div>
                    
                     
                 
                                
                                
                                
                                
                                
                               

    
                              
                    
                
                
                
        </div>
            
    </section>
<script src="js/comentarios.js"></script>

{/literal}
