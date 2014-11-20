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
            <div class="jumbotron">
                <h1>Delegacia da Thassi</h1>
                <p>Crimes e delitos</p>
            </div>
            <!--            <form action="cadastroFichaPolicial.jsp" method="POST">-->
            <form method="POST">
                <a href ="cadastroFichaPolicial.jsp"><button type="button" class="btn btn-default btn-lg">
                        Nova ficha</button></a>
                <a href ="mvc?logica=listaMelianteRemoveLogica"><button type="button" class="btn btn-default btn-lg">
                        Remove</button></a>
                <a href ="mvc?logica=listaMeliantesLogica"><button type="button" class="btn btn-default btn-lg">
                        Lista meliantes</button></a>
                <a href ="buscarPorNome.jsp"><button type="button" class="btn btn-default btn-lg">
                        Buscar por nome</button></a>
                <a href ="mvc?logica=listaForagidosLogica"><button type="button" class="btn btn-default btn-lg">
                        Lista foragidos</button></a>
                <!--<input type="submit" value="Nova ficha">-->  
            </form>
        </div>
        <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
                <script src="js/bootstrap.min.js"></script>-->
    </body>
</html>
