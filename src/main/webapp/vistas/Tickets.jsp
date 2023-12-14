
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="../style.css">
    <title>TP_Integrador</title>
</head>

<body>
   
    <header>
        <!-- NAVBAR -->

        <nav class="navbar navbar-expand-lg bg-dark bg-gradient navbar-dark">
            <div class="container-fluid" style="margin-left: 50px;">
                <div class="row ">
                    <div class="col-lg-4 col-me-4 col-sm-4 text-white">

                        <a class="navbar-brand" href="index.html">Conf Bs As</a>
                    </div>
                    <div class="col-lg-8 col-me-8 col-sm-12">


                        <div class="container-fluid">

                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                    <li class="nav-item">
                                        <a class="nav-link" aria-current="page" href="#">La Conferencia</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Los oradores</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">El lugar y la fecha</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link active " href="#">Conviértete en orador</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link " href="tickets.html" style="color: darkgreen;">Comprar tickets</a>
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </nav>

    </header>
    <main>
        
        <body>
            <main>
                <!-- Cards -->
                <div class="container" style="padding-top: 8rem;">
        
                    <div class="row justify-content-md-center g-1">
                        <div class="col-3" style="width: 13rem;">
                            <div class="card border border-primary p-1">
                                <div class="card-body text-center">
                                    <h5 class="card-title">Estudiante</h5>
                                    <p class="card-text">Tienen un descuento</p>
                                    <p class="card-text fw-bold">80%</p>
                                    <h6 class="card-subtitle mb-2 text-muted" style="font-size: 0.8rem;">* presentar
                                        documentación</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-3" style="width: 13rem;">
                            <div class="card border border-success p-1">
                                <div class="card-body text-center">
                                    <h5 class="card-title">Trainee</h5>
                                    <p class="card-text">Tienen un descuento</p>
                                    <p class="card-text fw-bold">50%</p>
                                    <h6 class="card-subtitle mb-2 text-muted" style="font-size: 0.8rem;">* presentar
                                        documentación</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-3" style="width: 13rem;">
                            <div class="card border border-warning p-1">
                                <div class="card-body text-center">
                                    <h5 class="card-title">Junior</h5>
                                    <p class="card-text">Tienen un descuento</p>
                                    <p class="card-text fw-bold">15%</p>
                                    <h6 class="card-subtitle mb-2 text-muted" style="font-size: 0.8rem;">* presentar
                                        documentación</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        
                <!-- Form -->
                <div class="container w-50 pt-2">
                    <!-- Texto superior del formulario -->
                    <div class="text-center">
                        <p class="m-0"><sup>VENTA</sup>
                        <h2>VALOR DE TICKET $200</h2>
                        </p>
                    </div>
                    <!-- Formulario -->
                    <form class="row g-1 gx-2 formulario" >
                        
                        <div class="col-md-6 mb-3">
                            <label for="cantidad" class="form-label">Cantidad</label>
                            <input type="number" class="form-control" id="cantidad" placeholder="Cantidad">
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="cantidad" class="form-label">Categoría</label>
                            <select id="categoria" class="form-select">
                                <option value="">Sin categoria</option>
                                <option value="estudiante">Estudiante</option>
                                <option value="trainee">Trainee</option>
                                <option value="junior">Junior</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <p class="alert alert-primary" id="totalAPagar">Total a Pagar: $</p>
                        </div>
        
                        <div class="d-grid gap-2 col-6 mx-auto">
                            <button class="btn text-white fs-6 btnBorrar" style="background-color: #96c93e;"
                                type=" button" id="borrar">Borrar</button>
                        </div>
                        <div class="d-grid gap-2 col-6 mx-auto">
                            
                            <button class="btn text-white fs-6 btnResumen" style="background-color: #96c93e;"
                                type=" submit" id="resumen">Resumen</button>
                        </div>
                        <button class="btn text-white fs-6" style="background-color: #96c93e;"><a href="../">Enviar</a></button>
                       
                    </form>
                </div>
            </main>
            <script src="../dom.js"></script>
        </body>
        
        </html>

    </main>
    <footer>
        <div class="pie justify-content-center mt-4">

            <ul class="navega">
                <li><a href="">Preguntas frecuentes</a></li>
                <li><a href="">Contáctanos</a></li>
                <li><a href="">Prensa</a></li>
                <li><a href="">Conferencias</a></li>
                <li><a href="">Términos y condiciones</a></li>
                <li><a href="">Privacidad</a></li>
                <li><a href="">Estudiantes</a></li>
            </ul>
        </div>

    </footer>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>

</html>