<%-- 
    Document   : alterarFichaPolicial
    Created on : 11/11/2014, 14:23:12
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
            <div class="col-sm-offset-1">
                <div class="col-sm-10">
                    <form action ="mvc?logica=alteraMelianteLogica2" method="POST">
                        <div class="input-group">
                            <span class="input-group-addon">ID</span>
                            <input type="text" class="form-control" placeholder="ID" name="id" value="${id}" ><br>
                        </div>  
                        <br>
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
                        <input type ="submit" value ="Alterar"/>
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


