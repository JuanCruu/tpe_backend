{include 'templates/header.tpl'}
        <body>
            <nav class="navbar navbar-dark bg-dark">
                    
                    <div class="mr-auto">
                        <form method="POST" action="ver">
                            <button>Home</button>
                    
                        </form>
                        </div>
                        <div class="ml-auto">
                        <form method="POST" action="logout">
                            <button>Cerrar sesión</button>

                        </form>
                          </div>
                    
                    

                    <button id="boton_index" type="button">
                        <span  class="navbar-toggler-icon"></span>
                    </button>
                
            </nav>
            <div class="formularioAdmin">
                <div class="elformularioensi">
                <h1>Add juego</h1>
                        <form method="post" action="agregar" >
                            <div class="form-group">
                                <label >nombre</label>
                                <input type="text" class="form-control" id="titulo" name="titulo">
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlInput1">precio</label>
                                <input type="number" class="form-control" id="precio" name="precio">
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlInput1">imagen</label>
                                <input type="text" class="form-control" id="imagen" name="imagen" placeholder="link de la imagen">
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlInput1">trailer</label>
                                <input type="text" class="form-control" id="link" name="link" placeholder="link del trailer">
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlSelect1">Categoria</label>
                                <select class="form-control" id="categoria" name="categoria">
                                <option>shooter</option>
                                <option>carrera</option>
                                <option>lucha</option>
                                <option>mundo abierto</option>
                                <option>indie</option>
                                <option>estrategia</option>
                                </select>
                            </div>
                            
                            <div class="form-group">
                                <label for="exampleFormControlTextarea1">descripcion</label>
                                <textarea class="form-control" id="descripcion" name="descripcion" rows="3"></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>

                </div>
                <div >
                    <h1>lista de juegos</h1>
                    <ul class="list-group">
                        {foreach $datos as $tarea}
                            <li class="list-group-item"><h5>{$tarea->nombre}</h5><a href="borrar/{$tarea->id}">/borrar/<a>
                                <a href="editar/{$tarea->id}">editar {$tarea->id}</a></li> 
                        {/foreach}
                    </ul>    
                </div>     
                        
            </div>
            
        </body>
        </html>'