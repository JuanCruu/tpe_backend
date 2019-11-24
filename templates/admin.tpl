{include 'templates/header.tpl'}
        <body>
            <nav class="navbar navbar-dark bg-dark">
                    
                    <div class="mr-auto">
                        <form method="POST" action="ver">
                            <button>Home</button>
                    
                        </form>
                        </div>
                        <div class="ml-auto">
                        <a href="logout">  <button>Cerrar sesión</button></a>
                          </div>

                    <button id="boton_index" type="button">
                        <span  class="navbar-toggler-icon"></span>
                    </button>
            </nav>
                    
                    

                
            <div class="formularioAdmin">
                <div class="elformularioensi">
                    <div>
                        <h1>Add juego</h1>
                        <form method="post" action="agregar" enctype="multipart/form-data">
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
                                <input type="file" name="input_name" id="imageToUpload">
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
                    <div>
                 
                    </div>
                    <div>
                        
                                            
                </div>
                </div>
                <div>
                    <h1>Add Categoria</h1>
                    <form method="post" action="agregarCategoria" >
                         <div class="form-group">
                                <label >nombre</label>
                                <input type="text" class="form-control" id="categoria" name="categoria">
                                <button type="submit" class="btn btn-primary">Crear</button>
                        </div>   
                            
                                
                    </form>
                    <h1>Categorias</h1>
                    <ul class="list-group">
                        {foreach $categorias as $genero}
                            <li class="list-group-item">
                                <h5>{$genero->nombre}</h5><a href="borrarCategoria/{$genero->id_genero}">/borrar/<a>
                                    <a href="editarCategoria/{$genero->id_genero}">editar </a></li> 
                            </li> 
                        {/foreach}
                    </ul> 
                    
                </div>
                <div>
                        <h1>_|Capturas|_</h1>
                    <form action="subircapturas" method="POST" enctype="multipart/form-data">
                        <div class="form-group">
                                <label >id de juego</label>
                                <select class="form-control" id="Capturas" name="Capturas">
                                    {foreach $datos as $juego}
                                        <option value={$juego->id}>{$juego->nombre}</option>    
                                    {/foreach}
                                </select>
                                  
                                <label for="exampleFormControlInput1">Capturas</label>
                             
                                    
                            
                                
                                        
                            
                            <input type="file" name="input_name" id="imageToUpload2" multiple>
                            <button type="submit" class="btn btn-primary">subir</button>
                        </div>
                    </form>
                    <h1>Lista de juegos</h1>
                    <ul class="list-group">
                        {foreach $datos as $juego}
                            <li class="list-group-item"><h5>{$juego->nombre}</h5><a href="borrar/{$juego->id}">/borrar/<a>
                                <a href="editar/{$juego->id}">editar {$juego->id}</a></li> 
                        {/foreach}
                    </ul> 
                </div>
                <div>
                        <h1>Usuarios</h1>
                        <ul class="list-group">
                                {foreach $usuarios as $usuario}
                                    <li class="list-group-item">
                                       
                                        {if $usuario->admin==1}
                                            <h5>{$usuario->user} <span>/Admin</span></h5>
                                            <a href="Promover_Destituir/{$usuario->user}"><button>Volver Usuario</button><a>
                                            {else}
                                            <h5>{$usuario->user}</h5>
                                            <a href="borrarUsuario/{$usuario->user}"><button>borrar</button><a>
                                            <a href="Promover_Destituir/{$usuario->user}"><button>Promover</button><a>
                                        {/if}
                                            
                                    </li> 
                                {/foreach}

                        </ul>
                </div>
                
            </div>
            
        </body>
        </html>'
                    
                
                     
                
                
                 
                  
            