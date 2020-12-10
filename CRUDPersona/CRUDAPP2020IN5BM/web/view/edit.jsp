<%-- 
    Document   : edit
    Created on : 31/08/2020, 11:09:59 PM
    Author     : Barker
--%>

<%@page import="model.Persona"%>
<%@page import="modelDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-5">
                <%
                    PersonaDAO nuevaPersonaDao = new PersonaDAO();
                    int codPersona = Integer.parseInt((String)request.getAttribute("codPer"));
                    Persona nuevaPersona = (Persona)nuevaPersonaDao.list(codPersona);
                %>
                <h1>Modificar Persona</h1>
                <form action="Controlador">
                    DPI: <br>
                    <input class="form-control" type="text" name="txtDPI" value="<%=nuevaPersona.getDPI()%>"><br><br>
                    Nombres: <br>
                    <input class="form-control" type="text" name="txtNombre" value="<%=nuevaPersona.getNombrePersona()%>"><br><br>
                    <input type="hidden" name="txtCodigoPersona" value="<%=nuevaPersona.getCodigoPersona()%>"><br>
                    <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"><br>
            </form>
            </div>
            
        </div>
        
    </body>
</html>
