<%-- 
    Document   : melianteAdicionado
    Created on : 11/11/2014, 08:53:40
    Author     : Thassiane
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <title>Delegacia da Thassi</title>
    </head>
    <body>
          <div class="container">
            <div class="jumbotron">
                <h1>Delegacia da Thassi</h1>
                <p>Crimes e delitos</p>
            </div>
        <h1>        Meliante ${param.nome} adicionado com sucesso! </h1>
        <form method="POST">
             <a href ="index.jsp"><button type="button" class="btn btn-default btn-lg">
            Voltar</button></a>
        </form>
          </div>
    </body>
</html>

