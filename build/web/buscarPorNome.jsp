<%-- 
    Document   : buscarPorNome
    Created on : 11/11/2014, 15:52:46
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
            <div class="col-sm-offset-0">
                <div class="col-sm-5">
                    <h1>Buscar por nome</h1>
                    <form action ="mvc?logica=meliantesPorNomeLogica" method="POST">
                        <div class="input-group">
                            <span class="input-group-addon">Nome para buscar</span>
                            <input type="text" class="form-control" placeholder="Nome para buscar" name="nome"><br>
                        </div>
                        <br>
                        <input type ="submit" value ="Buscar"/>
                        <br>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
