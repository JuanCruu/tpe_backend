{include 'templates/header.tpl'}
<body>
        <nav class="navbar navbar-dark bg-dark">
            <form method="POST" action="ver">
                <button>Home</button>
            </form>
                            
        <div class="ml-auto">
            {if $sesion }
                <span class="username">{$usuario->user}</span>
                {if $usuario->admin==1}
                    <a href="admin"><button>admin</button></a>
                {/if}
                

                <a href="logout">  <button>Cerrar sesión</button></a>
                {else}
                <a href="login"> <button>Log In</button> </a> 
                <a href="registrar"> <button>Sing Up</button> </a> 
            {/if}
        </div>
        <button id="boton_index" type="button">
            <span  class="navbar-toggler-icon"></span>
        </button>
    </nav>
    <div class="flex_juego">

            <div>            
                <img class="imagenjuego" src="{$juego->imagen}" alt="">
            </div>
            <div>

                <p>
                    {$juego->descripcion}
                    <p>${$juego->precio}</p>
                </p>
                <button>comprar</button>
                {if $sesion }
                     {if $usuario->admin==1}
                        <div>
                            <a href="borrarimagen/{$juego->id}"><button>X</button></a>
                        </div>
                    {/if}
                {/if}
                
            </div>
              
    </div>
    
    <div class="flex_trailer">
        <div class="caja2">
            <h1>{$juego->nombre}</h1>
            <div class="caja3">
                {$juego->trailer}
                    
                        <input class="hidden" type="button"id="id_juego" value={$juego->id} >
                <div >
                {if $sesion}
                    <form method="POST" action="api/comentario/"{$usuario->user}>
                        <textarea name="textarea" rows="2" cols="150"></textarea>
                        <input class="hidden" type="button"id="id_juego" name="juego" value={$juego->id} >

                        <button id="btn-refresh" type="submit" class="btn btn-primary btn-sm">Comentar</button>
                    </form>
                {/if}
                {include 'vue/sidebarComentarios.tpl'}
                </div>
            </div>
                        
                
                 
        </div>
        
    </div>
</body>
</html>
                        
                        
    
                        
                    

                
                     