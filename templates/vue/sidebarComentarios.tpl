{literal}
               
    <section id="AreaComentarios">
            <div  class="overflow-auto">
 
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
                                    </div>
                                    <div class="comment-content">
                                        {{comentario.comentario}} 
                                    </div>
                                    <div>
                                    {{comentario.id_comentario}}

                                      </div>
                                </div>
                            </div>
                            <div>
                               
                            </div>
                        </li>
                    </ul>
                    
                 
                </div>
        </div>
            
    </section>


{/literal}
    
                              
                    
                
                
                
                    
                     
                 
                                
                                
                                
                                
                                
                               

