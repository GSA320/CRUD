


<%@ page import= "java.sql.*" %>
<%@ page import="org.postgresql.Driver" %>

<%
  Connection con = null;  
  Statement st = null;//instanciando Statement para executar QUERYS
  ResultSet rs = null; //instanciando ResultSet para navegar entre registros retornados
  
  String email = request.getParameter("email"); //Armazenando na variavel email o que foi digitado no form de login
  String senha = request.getParameter("senha");//Armazenando na variavel senha o que foi digitado no form de login
  String user = null;
  String pass = "";
  String NomeUser = "";
  
  
  if(email == "" || senha == ""){//Verifica se possui campos em branco
    response.sendRedirect("../index.jsp?erro=1");//Retorna para o login(index.jsp) com erro = 1 -> campos em branco
  }else{
    try{
        String url = "jdbc:postgresql://localhost:5432/website";
        String usuario = "postgres";
        String senhaBD = "admin";
        
        Class.forName("org.postgresql.Driver");
        con = DriverManager.getConnection(url,usuario,senhaBD);
        st = con.createStatement();
        rs = st.executeQuery("SELECT *FROM usuarios WHERE email = '"+email+"' AND senha = '"+senha+"' ");
        while(rs.next()){
           user = rs.getString(3);//Armazenando o email do banco
           pass = rs.getString(5);//Armazenando a senha do banco
           NomeUser = rs.getString(2);//Armazenando o nome do banco
        }
    }catch(Exception e){//Verifica se possui uma excess?o erro da class conexao com banco
        out.print(e);//printa o erro
    }
    if(email.equals(user) && senha.equals(pass)){
        session.setAttribute("NomeUsuario", NomeUser);//Cria a sess?o com o nome do usuario
        response.sendRedirect("../home.jsp");//redireciona para pagina inicial do ADMIN
    }else{
        response.sendRedirect("../index.jsp?erro=2");//usuario ou senha invalidos
    }
  }
    
%>