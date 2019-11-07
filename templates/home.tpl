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
            <div>
                <a href="login"> <button>log in<button> </a> 
                <a href="registrar"> <button>log up<button> </a> 

                <a href="admin"><button>admin<button></a>
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
                             
                        
                            
                            
                              
                    
                    
                    
                    

                
                            
                        
                            
                            
                            
                        