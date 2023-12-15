
<%@page import="DAO.EspectadoresDAO"%>
<%@page import="Modelo.Espectador"%>
<%@page import="DAO.OradoresDAO"%>
<%@page import="Modelo.Orador"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

                        <a class="navbar-brand" href="../">Conf Bs As</a>
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
                <div class="container w-50 pt-5">
                    <!-- Texto superior del formulario -->
                    <div class="text-center">
                        <p class="m-0"><sup>VENTA</sup>
                        <h2>VALOR DE TICKET $200</h2>
                        </p>
                    </div>
                    <!-- Formulario -->
                     <form action="registroEspectador" method="post">
                <div class="container-fluid">   
                    <div align="center">
            <div class="inputGroup">
                <input type="text" name="nombre" id="nombre" placeholder="Nombre">
                <input type="text" name="apellido" id="apellido" placeholder="Apellido">
                <input type="text" name="correo" id="correo" placeholder="Correo">
            </div>
          
                         <input type="submit" id="btnEnviar" value="Enviar">
               
                     </div>
                    </form>
                </div>
                          </div>
               <!-- Mostrar datos-->
                
                <div class="container mt-5">
            <h2>Gestión de Espectadores</h2>
            <table class="table table-bordered">
               
                <thead>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Correo</th>
                <th>Acciones</th>
                </thead>
                <tbody>
                
                    <%
                        // Recuperar datos del espectador en la aplicación
                       
                        Espectador p  =(Espectador)request.getServletContext().getAttribute("espectador");
                        if (p != null) {
                        if(p.getNombre()!= null){
                    %>
                   <tr>
                        <td><%=p.getNombre()%></td>
                        <td><%=p.getApellido()%></td>
                        <td><%=p.getCorreo()%></td>
                        <td>

                            <div class="d-flex">
                                
                 <!-- Formulario para actualizar -->
                                <form action="GestionEspectadorServlet" method="post" class="mr-2">
                                    <input type="hidden" name="accion" value="actualizar">
                                    <button type="submit" class="btn btn-warning btn-block">Actualizar</button>
                                </form>

                                <!-- Formulario para eliminar -->
                                <form action="GestionEspectadorServlet" method="post">
                                    <input type="hidden" name="accion" value="eliminar">
                                    <button type="submit" class="btn btn-danger btn-block">Eliminar</button>
                                </form>
                                
                               <!-- Confirmar datos -->
                                <form >
                                    <input type="hidden" name="accion" value="eliminar">
                                    <a  class="btn btn-success btn-block" href="../">Confirmar</a>
                                </form>
                            </div>
                        </td>
                    </tr>
                                 <%}}
                        
               else {
                  %>
                    <tr>
                        <td colspan="6">No hay oradores registrados.</td>
                    </tr>
                    <%
                        }
                    %>
                                 </tbody>
                                 
            </table>
            </main>
           
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