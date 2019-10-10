{include 'templates/header.tpl'}
<body>
            
    <div class="flex_juego">
            <div>            
                <img class="imagenjuego" src="{$juego->imagen}" alt="">
            </div>
            <div>
                <p>
                {$juego->descripcion}
            </p>
            </div>
              
    </div>
    
    <div class="flex_trailer">
        <div class="caja2">
            <h1>{$juego->nombre}</h1>
            <div class="caja3">
                {$juego->trailer}
            </div>
        </div>
        
    </div>
</body>
</html>