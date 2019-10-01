<!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta http-equiv="X-UA-Compatible" content="ie=edge">
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
            <link rel="stylesheet" type="text/css" media="screen" href="css/main.css">
        
            <title>admin</title>
        </head>
        <body>
            <div class="formularioAdmin">
                <div class="elformularioensi">
                <h1>Add juego</h1>
                        <form method="post" action="agregar" >
                            <div class="form-group">
                                <label >nombre</label>
                                <input type="text" class="form-control" id="titulo" name="titulo">
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlInput1">precio</label>
                                <input type="number" class="form-control" id="precio" name="precio">
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlInput1">imagen</label>
                                <input type="text" class="form-control" id="imagen" name="imagen" placeholder="link de la imagen">
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlInput1">trailer</label>
                                <input type="text" class="form-control" id="link" name="link" placeholder="link del trailer">
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlSelect1">Categoria</label>
                                <select class="form-control" id="categoria" name="categoria">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                </select>
                            </div>
                            
                            <div class="form-group">
                                <label for="exampleFormControlTextarea1">descripcion</label>
                                <textarea class="form-control" id="descripcion" name="descripcion" rows="3"></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>

                </div>
                <div >
                    <h1>lista de juegos</h1>
                    <ul class="list-group">
                        {foreach $datos as $tarea}
                            <li class="list-group-item"><h5>{$tarea->nombre}</h5><a href="borrar/{$tarea->id}">/borrar/<a>
                                <a href="editar/{$tarea->id}">editar {$tarea->id}</a></li> 
                        {/foreach}
                    </ul>    
                </div>     
                <div>
                        <h2>editar?</h2>
                     <form method="POST" action="editar" >
                        <div class="form-group">
                            <label >nombre</label>
                            <input type="text" class="form-control" id="titulo" name="titulo">
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlInput1">precio</label>
                            <input type="number" class="form-control" id="precio" name="precio">
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlInput1">imagen</label>
                            <input type="text" class="form-control" id="imagen" name="imagen" placeholder="link de la imagen">
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlInput1">trailer</label>
                            <input type="text" class="form-control" id="link" name="link" placeholder="link del trailer">
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlSelect1">Categoria</label>
                            <select class="form-control" id="categoria" name="categoria">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label for="exampleFormControlTextarea1">descripcion</label>
                            <textarea class="form-control" id="descripcion" name="descripcion" rows="3"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>          
            </div>
            
        </body>
        </html>'