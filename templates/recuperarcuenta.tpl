{include 'templates/header.tpl'}
<body>
    
    <form action="recuperar" method="POST" class="col-md-4 offset-md-4 mt-4" >
        <h1>{$titulo}</h1>

        <div class="form-group">
            <label>Usuario</label>
            <input type="text" name="username" class="form-control" placeholder="Su nombre de Usuario">
        </div>

        <div class="form-group">
            <label>Pregunta de seguridad</label>
            <P>Su mascota de la infacia</p>

            <input type="text" name="Pregunta" class="form-control" placeholder="Escriba la respuesta">
        </div>
        <div class="form-group">
            <label>Nueva contrasenia</label>
            <input type="password" name="Newpassword" class="form-control" placeholder="Password">
        </div>
        <div class="form-group">
            <label>Repita la contrasenia</label>
            <input type="password" name="NewpasswordR" class="form-control" placeholder="Repeat Password">
        </div>
        {if $error}
        <div class="alert alert-danger" role="alert">
            {$error}
        </div>
        {/if}

        <button type="submit" class="btn btn-primary">Recuperar</button>
    </form>

</div>
</body>
{include 'templates/footer.tpl'}