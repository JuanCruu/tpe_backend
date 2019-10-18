{include 'templates/header.tpl'}
    <form method="POST" action="confirmarCategoria/{$genero->id_genero}" >
        <input type="text" name="titulo" value="{$genero->nombre}">
        <button type="submit" class="btn btn-primary">Guardar Cambios</button>
    </form>
{include 'templates/footer.tpl'}

