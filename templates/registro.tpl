{include 'templates/header.tpl'}
<body>
    
    <form action="CrearUsuario" method="POST" class="col-md-4 offset-md-4 mt-4" >
        <h1>{$titulo}</h1>

        <div class="form-group">
            <label>Usuario</label>
            <input type="text" name="username" class="form-control" placeholder="Ingrese Un nombre de Usuario">
        </div>

        <div class="form-group">
            <label>Password</label>
            <input type="password" name="password" class="form-control" placeholder="Password">
        </div>
        <div class="form-group">
            <label>Repeat Password</label>
            <input type="password" name="passwordR" class="form-control" placeholder="Repeat Password">
        </div>

        {if $error}
        <div class="alert alert-danger" role="alert">
            {$error}
        </div>
        {/if}

        <button type="submit" class="btn btn-primary">Crear</button>
    </form>

</div>
</body>
{include 'templates/footer.tpl'}
