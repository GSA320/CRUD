<%-- 
    Document   : index
    Created on : 1 de nov. de 2022, 19:42:05
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check-in</title>
         <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container-fluid">
            <form action="config/trataLogin.jsp" method="post">
                <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label">Endereço de email</label>
                  <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                  <div id="emailHelp" class="form-text">Nós nunca compartilharemos sua senha</div>
                </div>
                <div class="mb-3">
                  <label for="exampleInputPassword1" class="form-label">Palavra-passe</label>
                  <input type="password" name="senha" class="form-control" id="exampleInputPassword1">
                </div>
                <div class="mb-3 form-check">
                  <input type="checkbox" class="form-check-input" id="exampleCheck1">
                  <label class="form-check-label" for="exampleCheck1">Não sou um robô</label>
                </div>
                <button type="submit" class="btn btn-primary">Checar</button>
            </form>
        </div>
    </body>
</html>