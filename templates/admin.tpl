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
                                {foreach $categorias as $genero}
                            
                                <option value="{$genero->id_genero}">{$genero->nombre}</option>
                                    
                        
                                {/foreach}
                                </select>
                            </div>
                            
                            <div class="form-group">
                                <label for="exampleFormControlTextarea1">descripcion</label>
                                <textarea class="form-control" id="descripcion" name="descripcion" rows="3"></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>

                </div>
                <div class="elformularioensi">
                    <h1>lista de juegos</h1>
                    <ul class="list-group">
                        {foreach $datos as $juego}
                            <li class="list-group-item"><h5>{$juego->nombre}</h5><a href="borrar/{$juego->id}">/borrar/<a>
                                <a href="editar/{$juego->id}">editar {$juego->id}</a></li> 
                        {/foreach}
                    </ul>    
                </div>     
                     
                <div>
                    <h1>Add Categoria</h1>
                    <form method="post" action="agregarCategoria" >
                         <div class="form-group">
                                <label >nombre</label>
                                <input type="text" class="form-control" id="categoria" name="categoria">
                        </div>   
                            
                     <button type="submit" class="btn btn-primary">Crear</button>
                                
                    </form>
                    <h1>_|_Categorias_|_</h1>
                    <ul class="list-group">
                        {foreach $categorias as $genero}
                            <li class="list-group-item">
                                <h5>{$genero->nombre}</h5><a href="borrarCategoria/{$genero->id_genero}">/borrar/<a>
                                    <a href="editarCategoria/{$genero->id_genero}">editar </a></li> 
                            </li> 
                        {/foreach}
                    </ul> 
                </div>
            </div>
                 
                  
            
            
        </body>
        </html>'