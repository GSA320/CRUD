<%@ page import="java.sql.*" %>
<%@ page import="org.postgresql.Driver" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ServCar Home</title>
        <link rel="stylesheet" href="css/style.css"/>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    </head>
    <body style="background-color: #ffc720;">
        
        <jsp:include page="includes/navbar.jsp" />
        <div class="container-xxl" style="margin-top: 14px; margin-bottom: 14px;">
        <section class="box">
            <h2>Carros</h2>
            <div class="row row-cols-1 row-cols-md-4 g-4" style="padding-bottom: 15px;">
<% 
    String modelo = request.getParameter("modelo");
    String ano = request.getParameter("ano");
    String preco = request.getParameter("preco");

    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
   
    String url = "jdbc:postgresql://localhost:5432/cars";
    String usuario = "postgres";
    String senhaBD = "admin";
    
    try{
        Class.forName("org.postgresql.Driver");
        con = DriverManager.getConnection(url, usuario, senhaBD);
        st = con.createStatement();
        rs = st.executeQuery("select *from cars order by id desc");
        while(rs.next()){
        String id = rs.getString("id");
    
%>
                <div class="col">
                    <div class="card">
                      <img style="width:90%;height:200px;object-fit: cover;margin-left: 5%;margin-top: 5%; border-radius: 5px;" src="arquivos/<%=rs.getString("imagem")%>" class="card-img-top" alt="...">
                    <div class="card-body">
                      <h5 class="card-title"><%=rs.getString("modelo")%></h5>
                      <p class="card-text"><%=rs.getString("ano")%></p>
                      <hr>
                      <a class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#modalchecking<%out.print(id);%>" style="cursor: pointer">Checar disponibilidade</a>
                      <a class="btn btn-sm" style="cursor: pointer;">Reservar</a>
                      <form action="modal" method="POST" enctype="multipart/form-data" style="width: 100%">
                                <div class="modal fade" id="modalchecking<%if(id==id)out.print(id);%>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content" style="width: 300px;">
                                        <div class="modal-header">
                                          <h1 class="modal-title fs-5" id="exampleModalLabel"><%=rs.getString("modelo")%></h1>
                                        </div>
                                        <div class="modal-body">
                                          <%=rs.getString("disponibilidade")%>
                                        </div>
                                        <div class="modal-footer">
                                          <button type="button" class="btn btn-light" data-bs-dismiss="modal">OK</button>
                                        </div>
                                      </div>
                                    </div>
                        </div>
                      </form>
              
                    </div>
                      
                  </div>  
                </div>
                <%
                }
                }catch(Exception e){
                 out.println(e);
                }
                %>
                
              </div>
               
        </section>
        <section class="box">
            <div class="ground">
                <div class="linha">
                    <div class="coluna"><h5 class="about" style="margin-left: 13px;">
                            <p class="par" id="local">
                            Somos uma empresa que atua no ramo de aluguel de carros desde 
                            2022 e estamos sempre ligados ao compromisso de disponibilizar
                            os nossos veículos conforme você, nosso cliente, precisar. Temos
                            o automóvel certo para todo o momento, seja para viajar, ir ao 
                            trabalho ou até mesmo ir para a pescaria nos mais diversos lugares.
                            <br>
                            <br>
                            Nossa sede fica às proximidades da Unochapecó, no logradouro da 
                            Rua Garças D, 369E. Venha nos visitar!
                            </p>
                        </h5>          
                    </div>
                    <div class="coluna"><iframe class="about" src="https://www.google.com/maps/d/embed?mid=1frnONM1rrzYG1AXL-CPkuCKZkbU&amp;hl=pt_BR&amp;ehbc=2E312F" ></iframe></div>
                </div>
                 </div>
        </section>
             </div>
        <jsp:include page="includes/footer.jsp" />
    </body>
</html>
