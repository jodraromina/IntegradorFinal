
<%@page import="Modelo.Espectador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Actualizar Orador</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container mt-5">
            <h2>Actualizar Espectador</h2>
            <form action="GestionEspectadorServlet" method="post">
                <input type="hidden" name="accion" value="confirmarActualizacion">
                <input type="hidden" name="id" value="${espectador.id}">

                <div class="form-group">
                    <label for="nombre">Nombre:</label>
                    <input type="text" class="form-control" id="nombre" name="nombre" value="${espectador.nombre}" required>
                </div>

                <div class="form-group">
                    <label for="apellido">Apellido:</label>
                    <input type="text" class="form-control" id="apellido" name="apellido" value="${espectador.apellido}" required>
                </div>

                <div class="form-group">
                    <label for="tema">Correo:</label>
                    <input type="text" class="form-control" id="correo" name="correo" value="${espectador.correo}" required>
                </div>
                  
                <button type="submit" class="btn btn-primary">Actualizar</button>
                <a href="gestionEspectador.jsp" class="btn btn-success">Volver</a>
                

            </form>
        </div>
           
</html>