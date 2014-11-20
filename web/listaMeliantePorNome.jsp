<%-- 
    Document   : listaMeliantePorNome
    Created on : 11/11/2014, 15:59:37
    Author     : Thassiane
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c"%>
<%@taglib uri ="http://java.sun.com/jsp/jstl/fmt" prefix ="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <title>Delegacia da Thassi</title>
    </head>
    <body>
        <div class="container">
             <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="index.jsp">Delegacia da Thassi</a>
                    </div>
                    <div>
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="cadastroFichaPolicial.jsp">Cadastro</a></li>
                            <li><a href="mvc?logica=listaMelianteRemoveLogica">Remove</a></li>
                            <li><a href="mvc?logica=listaMeliantesLogica">Lista meliantes</a></li> 
                            <li><a href="buscarPorNome.jsp">Busca por nome</a></li> 
                            <li><a href="mvc?logica=listaForagidosLogica">Lista foragidos</a></li> 
                        </ul>
                    </div>
                </div>
            </nav>
            <div class="jumbotron">
                <h1>Delegacia da Thassi</h1>
                <p>Crimes e delitos</p>
            </div>
            <div class="col-sm-offset-1">
                <br>
                <div class="col-sm-10">
                    <h1> Resultado da busca</h1> 
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <td><b>ID</b></td> 
                                <td><b>Nome</b></td>
                                <td><b>CPF</b></td>
                                <td><b>Endereço</b></td>
                                <td><b>Tipo de delito</b></td>
                                <td><b>Data</b></td>
                                <td><b>Hora</b></td>
                                <td><b>Local do crime</b></td>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach var ="meliante" items ="${meliantes}">
                            <tr>  
                                <td>${meliante.id}</td>
                                <td>${meliante.nome}</td>
                                <td>${meliante.cpf}</td>
                                <td>${meliante.endereco}</td>
                                <td>${meliante.tipoDeDelito}</td>
                                <td><fmt:formatDate value="${meliante.data.time}" pattern="dd/MM/yyyy"/></td>  
                            <td>${meliante.hora}</td>
                            <td>${meliante.localDoCrime}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <a href ="index.jsp"><button type="button" class="btn btn-default btn-lg">
                            Voltar</button></a>
                    </body>
                </div>
            </div>
</html>
