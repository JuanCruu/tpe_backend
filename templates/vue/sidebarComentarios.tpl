{literal}
               
    <section id="AreaComentarios">
            <div  class="overflow-auto">
 
                <button id="btn-refresh" type="button" class="btn btn-primary btn-sm">Actualizar</button> <span>{{title}}</span>
                <div v-if="!loading" class="card-body">
                    Cargando...
                </div>

                <div v-if="loading" >
                    <h6>
                        Puntuacion del juego es : {{promedio}}
                    </h6>                 
                    <ul  v-for="comentario in comentarios" >
                        <li class="quieto">
                        
                            <div class="comment-main-level">
                                    <div class="comment-box">
                                        <div class="comment-head">
                                            <h6 class="comment-name"><p>{{comentario.id_usuario}}</p></h6><span>puntuacion: {{comentario.puntaje}}</span>
                                        </div>
                                    </div>
                                        
                                    <div class="comment-content">
                                        {{comentario.comentario}} 
                                    </div>
                                    <div >
                                      
                                        
                                    <button id="boton_borrar" class="btn btn-primary" @click="(event)=>{borrar(event,comentario.id_comentario)} ">borrar</button>
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
    
                              
                    
                
                
                
                    
                     
                 
                                
                                
                                
                                
                                
                               

