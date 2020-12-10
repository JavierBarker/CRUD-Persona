<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
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
            <h1 class="text-center">Datos Entidad de las Personas</h1>
            <a class="btn btn-success" href="Controlador?accion=add">Agregar Registro</a> <br><br>
            <table class="table table-bordered"> 
                <thead>
                    <tr>
                        <td class="text-center text-primary">CODIGO PERSONA</td>
                        <td class="text-center text-primary">DPI</td>
                        <td class="text-center text-primary">NOMBRES</td>
                        <td class="text-center text-primary">ACCIONES</td>
                    </tr>                    
                </thead>
                    <%
                        PersonaDAO dao = new PersonaDAO();
                        List<Persona> listaPersona = dao.listar();
                        Iterator<Persona> iterator = listaPersona.iterator();
                        Persona per = null;
                        while(iterator.hasNext()){
                            per = iterator.next();
                        

                    %>
                <tbody>
                    <tr>
                        <td class="text-center active"><%= per.getCodigoPersona()%></td>
                        <td class="text-center"><%= per.getDPI()%></td>
                        <td class="text-center active"><%= per.getNombrePersona()%></td>
                        <td class="text-center">
                            <a class="btn btn-warning" href="Controlador?accion=editar&codigoPersona=<%= per.getCodigoPersona()%>">Editar</a>
                            <a class="btn btn-danger" href="Controlador?accion=eliminar&codigoPersona=<%= per.getCodigoPersona()%>">Eliminar</a>
                        
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>
