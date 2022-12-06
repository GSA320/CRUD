<%@ page import= "java.sql.*" %>
<%@ page import="org.postgresql.Driver" %>

<%

    String nome = request.getParameter("nome");
    String email = request.getParameter("email");
    
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    
    String url = "jdbc:postgresql://localhost:5432/cars";
    String usuario = "postgres";
    String senhaBD = "admin";
    
    try{
        Class.forName("org.postgresql.Driver");
        con = DriverManager.getConnection(url,usuario,senhaBD);
        st = con.createStatement();
        st.execute("Insert into customer(nome,email)VALUES('"+nome+"', '"+email+"') ");
        response.sendRedirect("../index.jsp?status=clientSet");
    }catch(Exception e){
        out.print(e);
    }

%>