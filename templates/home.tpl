<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>index juanCru</title>
    <link rel="stylesheet" href="bootstrap/bootstrap-4.3.1-dist/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" media="screen" href="css/main.css">
    <script src="js/main.js"></script>
</head>
<body>
    <header>
            <nav class="navbar navbar-dark bg-dark">
                    <a class="navbar-brand" href="index.html">Home</a>
                    <a class="navbar-brand" target="blank" href="admin">admin</a>

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
        
     
</body>
</html>
