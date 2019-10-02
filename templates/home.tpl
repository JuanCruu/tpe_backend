{include 'templates/header.tpl'}
<body>
    <header>
            <nav class="navbar navbar-dark bg-dark">
                    
                    <div class="dropdown show">
                            <a class="btn btn-secondary dropdown-toggle" href="" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              Categoria
                            </a>
                          
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                              <a class="dropdown-item" href="buscar/1">shooter</a>
                              <a class="dropdown-item" href="buscar/2">carrera</a>
                              <a class="dropdown-item" href="buscar/3">lucha</a>
                              <a class="dropdown-item" href="buscar/4">mundo abierto</a>
                              <a class="dropdown-item" href="buscar/5">indie</a>
                              <a class="dropdown-item" href="buscar/6">estrategia</a>
                            </div>
                          </div>
                    
                    
                    <div>
                        <form method="POST" action="admin">
                            <button>Login</button>

                        </form>
                    </div>
                    

                    <button id="boton_index" type="button">
                        <span  class="navbar-toggler-icon"></span>
                    </button>
                
            </nav>
    </header>
    <div class="flex_container">
        {foreach $datos as $tarea}
                        
        <div  class="caja">
            <a href="juego/{$tarea->id}">
                
                <div class="imagen">
                    
                    <h3>{$tarea->nombre} </h3>
                    <h5 class="precio"> $   {$tarea->precio}</h5>
                    
                    <img src="{$tarea->imagen}">
                    
                </div>
                
            </a>
        </div>
    {/foreach}   
{include 'templates/footer.tpl'}