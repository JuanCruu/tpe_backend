{include 'templates/header.tpl'}
<body>
    <form method="POST" action="confirmar/{$juego->id}" enctype="multipart/form-data">
        <div class="form-group">
            <label >nombre</label>
            <input type="text" class="form-control" id="titulo" name="titulo" value="{$juego->nombre}">
        </div>
        <div class="form-group">
            <label for="exampleFormControlInput1">precio</label>
            <input type="number" class="form-control" id="precio" name="precio" value="{$juego->precio}">
        </div>
        <div class="form-group">
            <label for="exampleFormControlInput1">Nueva imagen</label>
            <div class="form-group">
                <input type="file" name="input_name" id="imageToUpload">
            </div>
                                
        </div>
        <div class="form-group">
            <label for="exampleFormControlInput1">trailer</label>
            <input type="text" class="form-control" id="link" name="link" value='{$juego->trailer}'>
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
            <textarea class="form-control" id="descripcion" name="descripcion" rows="3" value="{$juego->descripcion}">{$juego->descripcion}</textarea>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</body>
</html>