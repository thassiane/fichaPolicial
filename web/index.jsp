<%-- 
    Document   : index
    Created on : 10/11/2014, 14:42:53
    Author     : Thassiane
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <!--            <form action="cadastroFichaPolicial.jsp" method="POST">-->
            <form method="POST">
                <!--<input type="submit" value="Nova ficha">-->  
            </form>
        </div>
        <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
                <script src="js/bootstrap.min.js"></script>-->
    </body>
</html>
