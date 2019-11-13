{include 'templates/header.tpl'}
<body>
    <header>
        <nav class="navbar navbar-dark bg-dark">
            <div class="dropdown show">
                <a class="btn btn-secondary dropdown-toggle" href="" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Categoria</a>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                    <a class="dropdown-item" href="ver">/all</a>
                    {foreach $categorias as $genero}
                        <a class="dropdown-item" href="buscar/{$genero->nombre}">{$genero->nombre}</a>
                    {/foreach}
                </div>
            </div>
            <div class="ml-auto">
                {if $sesion }
                    <span class="username">{$usuario->user}</span>
                    {if $usuario->admin==1}
                        <a href="admin"><button>admin</button></a>
                    {/if}
                    

                    <a href="logout">  <button>Cerrar sesión</button>
                    {else}
                    <a href="login"> <button>Log In</button> </a> 
                    <a href="registrar"> <button>Sing Up</button> </a> 
                {/if}
            </div>
            <button id="boton_index" type="button">
                <span  class="navbar-toggler-icon"></span>
            </button>
        </nav>
                
                          
    </header>
        <div class="centrarhome">
            <div class="flex_container">
                {foreach $datos as $juego}
                    <div  class="caja">
                        <a href="juego/{$juego->id}">
                            <div class="imagen">
                                <h3>{$juego->nombre} </h3>
                                <h5 class="precio"> $   {$juego->precio}</h5>
                                <img class="imagenhome" src="{$juego->imagen}" alt="{$juego->imagen}">
                            </div>
                        </a>
                    </div>
                {/foreach}   
        </div>
    </div>
    
{include 'templates/footer.tpl'}
                             
                
                    
                    
                        
                    
                    
                    
                    


               
                


                        
                            
                            
                              
                    
                    
                    
                    

                
                            
                        
                            
                            
                            
                        