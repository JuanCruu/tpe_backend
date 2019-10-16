{include 'templates/header.tpl'}
<body>
    <form method="POST" action="confirmar/{$juego->id}" >
        <div class="form-group">
            <label >nombre</label>
            <input type="text" class="form-control" id="titulo" name="titulo" value="{$juego->nombre}">
        </div>
        <div class="form-group">
            <label for="exampleFormControlInput1">precio</label>
            <input type="number" class="form-control" id="precio" name="precio" value="{$juego->precio}">
        </div>
        <div class="form-group">
            <label for="exampleFormControlInput1">imagen</label>
            <input type="text" class="form-control" id="imagen" name="imagen" placeholder="link de la imagen"value="{$juego->imagen}">
        </div>
        <div class="form-group">
            <label for="exampleFormControlInput1">trailer</label>
            <input type="text" class="form-control" id="link" name="link" value='{$juego->trailer}'>
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
            <textarea class="form-control" id="descripcion" name="descripcion" rows="3" value="{$juego->descripcion}">{$juego->descripcion}</textarea>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</body>
</html>