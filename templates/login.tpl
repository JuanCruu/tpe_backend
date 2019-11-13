{include 'templates/header.tpl'}
<div class="container" class ="fomurlarioblanco">
    <form action="verify" method="POST" class="col-md-4 offset-md-4 mt-4" >
        <h1>{$titulo}</h1>

        <div class="form-group">
            <label>Usuario</label>
            <input type="text" name="username" class="form-control" placeholder="Ingrese email">
        </div>

        <div class="form-group">
            <label>Password</label>
            <input type="password" name="password" class="form-control" placeholder="Password">
        </div>

        {if $error}
        <div class="alert alert-danger" role="alert">
            {$error}
        </div>
        {/if}
        <div>
            <a href="recuperacion">Olvide mi contrasenia</a>
        </div>
        <button type="submit" class="btn btn-primary">Ingresar</button> 
        
    </form>

</div>
{include 'templates/footer.tpl'}