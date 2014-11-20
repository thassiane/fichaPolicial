<%-- 
    Document   : cadastroFichaPolicial
    Created on : 10/11/2014, 15:32:06
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
                <div class="col-sm-10">
                    <form action ="mvc?logica=adicionaMelianteLogica" method="POST">
                        <div class="input-group">
                            <span class="input-group-addon">Nome</span>
                            <input type="text" class="form-control" placeholder="Nome" name="nome"><br>
                        </div>  
                        <br>
                        <div class="input-group">
                            <span class="input-group-addon">CPF</span>
                            <input type="text" class="form-control" placeholder="CPF" name="cpf"><br>
                        </div>
                        <br>
                        <div class="input-group">
                            <span class="input-group-addon">Endereço</span>
                            <input type="text" class="form-control" placeholder="Endereco" name="endereco"><br>
                        </div>
                        <br>
                        <div class="input-group">
                            <span class="input-group-addon">Tipo de Delito</span>
                            <input type="text" class="form-control" placeholder="Tipo de delito" name="tipoDeDelito"><br>
                        </div>
                        <br>
                        <div class="input-group">
                            <span class="input-group-addon">Data (DD/MM/AAAA)</span>
                            <input type="text" class="form-control" placeholder="Data" name="data"><br>
                        </div>
                        <br>
                        <div class="input-group">
                            <span class="input-group-addon">Hora</span>
                            <input type="text" class="form-control" placeholder="Hora" name="hora"><br>
                        </div>
                        <br>
                        <div class="input-group">
                            <span class="input-group-addon">Local do Crime</span>
                            <input type="text" class="form-control" placeholder="Local do crime" name="localDoCrime"><br>
                        </div>
                        <br>
                        <div class="input-group">
                            <span class="input-group-addon">Estado (preso, solto ou foragido)</span>
                            <input type="text" class="form-control" placeholder="Estado" name="estado"><br>
                        </div>
                        <br>
                                              <div class="input-group">
                            <span class="input-group-addon">Foto (link)</span>
                            <input type="text" class="form-control" placeholder="Foto" name="foto"><br>
                        </div>
                        <br>
                        <input type ="submit" value ="Cadastrar"/>
                    </form>
                    <br>
                </div>
                <!--            <form action="cadastroFichaPolicial.jps">-->
                <!--<input type="submit" value="Nova ficha">-->  
                <!--</form>-->
            </div>
        </div>
    </body>
</html>


