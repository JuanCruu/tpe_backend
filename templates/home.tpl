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
            <a href="tabla.html">
                
                <div class="imagen">
                    
                    <h3>{$tarea->nombre} </h3>
                    <h5 class="precio"> $   {$tarea->precio}</h5>
                    
                    <img src="{$tarea->imagen}">
                    
                </div>
                
            </a>
        </div>
    {/foreach}   
     <section class="caja2 Ocultar" >
                                        <div >
                                            <h3> <a href="">Una lista de Canciones</a> </h3>


                                                <ul class="lista2">
                                                        <li><a target="blank" href="https://www.youtube.com/watch?v=9ayYeLLT8bs">Cyberpunk 2077</a> </li>
                                                        <li> <a target="blank"  href="https://youtu.be/SNE2oCZH_4k?t=91">Hydrogen </a></li>
                                                        <li><a target="blank" href="https://www.youtube.com/watch?v=JKlSVNxLB-A">I Am A Rock</a></li>
                                                        <li><a target="blank" href="https://www.youtube.com/watch?v=hg14Ocs03xA">Make It Wit Chu </a></li>
                                                        <li><a target="blank" href="https://youtu.be/R_uS0aT0bG8?t=80">Guitarmass</a></li>
                                                        <li><a target="blank" href="https://www.youtube.com/watch?v=FNt8xXCJplY">Two time</a></li>
                                                        <li><a target="blank" href="https://www.youtube.com/watch?v=vCXsRoyFRQE">Wonderland</a></li>
                                                        <li><a target="blank" href="https://www.youtube.com/watch?v=-N4jf6rtyuw">Crazy</a></li>
                                                        <li><a target="blank" href="https://www.youtube.com/watch?v=HyHNuVaZJ-k">Feel Good Inc</a></li>
                                                        <li><a target="blank" href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Panda</a></li>
                                                        <li><a target="blank" href="https://www.youtube.com/watch?v=hwZNL7QVJjE&list=LLeuPkMAxy544mHAoHv_JX6w&index=75&t=0s">Stand By Me</a></li>
                                                        <li><a target="blank" href="https://www.youtube.com/watch?v=qeMFqkcPYcg">Sweet Dreams</a></li>
                                                        <li><a target="blank" href="https://www.youtube.com/watch?v=5NV6Rdv1a3I">Get Lucky</a></li>
                                                        <li><a target="blank" href="https://youtu.be/WELjsTlTnX4?list=LLeuPkMAxy544mHAoHv_JX6w&t=41">Disturbed </a></li>
                                                        <li><a target="blank" href="https://youtu.be/nn7LeY3S72E?t=8"> Heartbeat</a></li>
                                                        <li><a target="blank" href="https://youtu.be/T8BI2fKzdys?t=33">Deadwood </a></li>
                                                        <li><a target="blank" href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Rock </a></li>
                                                        <li><a target="blank" href="https://www.youtube.com/watch?v=dQw4w9WgXcQ"> Cезон.</a></li>
                                                        <li><a target="blank" href="https://www.youtube.com/watch?v=FHccClTAdzc">CAZZETTE </a></li>
                                                        <li><a target="blank" href="https://www.youtube.com/watch?v=VjAKeduaURc">Fashion Drunk</a></li>
                                                        <li><a target="blank" href="https://www.youtube.com/watch?v=UclCCFNG9q4">Clint Eastwood</a></li>
                                                        <li><a target="blank" href="https://www.youtube.com/watch?v=Y001O8Azj1U">Where Is My Mind</a></li>
                                                        <li><a target="blank" href="https://www.youtube.com/watch?v=s88r_q7oufE">No One Knows</a></li>
                                                </ul>



                                        </div>
                                        <div>
                                                        <h3>
                                                            <a href="#">Series en Emision</a>
                                                        </h3>
                                                        <ul class="lista2">
                                                            <li>
                                                            <a target="blank" href="https://www.google.com/search?source=hp&ei=hpmzXIeoCYnA5OUPuPGUoAU&q=crashing&oq=cr&gs_l=psy-ab.1.0.35i39l2j0i67l3j0i131j0j0i131j0l2.1190.3576..4449...3.0..0.136.570.2j3....3..0....1..gws-wiz.....6.7S7p78PP4vI">Crashing</a>
                                                            </li>
                                                            <li>
                                                            <a target="blank" href="https://www.google.com/search?ei=i5mzXOzdK_7F5OUPvf6H-Ac&q=the+deuce&oq=the+&gs_l=psy-ab.1.3.35i39l2j0i67l8.69237.69794..72859...0.0..0.126.428.1j3....3..0....1..gws-wiz.......0i71j0i131.izg-qaKzRnQ">The Deuce</a>
                                                            </li>
                                                            <li>
                                                            <a target="blank" href="https://www.google.com/search?ei=_JmzXNe2G_i55OUP9MKK0A8&q=king+eve+serie&oq=King+eve+se&gs_l=psy-ab.1.0.0j0i203j0i22i30l8.807.1009..1904...0.0..0.158.435.0j3....3..0....1..gws-wiz.......0i71j0i22i10i30.UeC3cqGmUucl"> King eve</a>
                                                            </li>
                                                            <li>
                                                                    <a target="blank" href="https://www.google.com/search?ei=CpqzXJDrM5bA5OUPiL2X6Ag&q=Flaebag&oq=Flaebag&gs_l=psy-ab.3..0i10i203l2j0i10i30j0i30j0i10i30.21574.21574..22406...0.0..0.137.137.0j1......0....2j1..gws-wiz.......0i71.IdM16or_BCA"> Fleabag</a>
                                                            </li>
                                                            <li>
                                                                    <a target="blank" href="https://www.google.com/search?ei=c5qzXK6UHuXE5OUP-bKMoAc&q=The+Resident&oq=The+Resident&gs_l=psy-ab.3..0l10.18402.18402..19355...0.0..0.238.238.2-1....1..0....2j1..gws-wiz.mp2xR2Rq-b0"> The Resident</a>
                                                            </li>
                                                            <li>
                                                                    <a target="blank" href="https://www.google.com/search?ei=8pqzXIWgF4TZ5OUPuZWCsAg&q=The+Son&oq=The+Sobn&gs_l=psy-ab.12...0.0..5214...0.0..0.0.0.......0......gws-wiz.PQH9B9PGi94"> The Son</a>
                                                            </li>
                                                        </ul>
                                        </div>
                            </section>  
    </div>      
     
</body>
</html>
