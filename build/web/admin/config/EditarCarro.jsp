<%@ page import="java.io.*" %>
<%@ page import= "java.sql.*" %>
<%@ page import= "org.postgresql.Driver" %>
<%@ page import= "util.Upload" %>

 
<%
 
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    String id = request.getParameter("id");
    String nameImg = request.getParameter("imagem");
    Upload up = new Upload();
    up.setFolderUpload("arquivos");
 
 
    if(up.formProcess(getServletContext(), request)) {
 
        String imagem = up.getFiles().get(0);
        String modelo = up.getForm().get("modelo").toString();
        String ano = up.getForm().get("ano").toString();
        Float preco = Float.parseFloat(up.getForm().get("preco").toString());
        String disponibilidade = up.getForm().get("disponibilidade").toString();
            
        String url = "jdbc:postgresql://localhost:5432/cars";
        String usuario = "postgres";
        String senhaBD = "admin";
 
        try {
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection(url, usuario, senhaBD);
            st = con.createStatement();
            st.executeUpdate("UPDATE cars set modelo = '"+modelo+"', ano = '"+ano+"', preco = '"+preco+"', imagem= '"+imagem+"', disponibilidade= '"+disponibilidade+"' WHERE id = '"+id+"' ");
 
            File file = new File("C:\\Users\\Alunos\\Documents\\Gustavo - noturno\\netbino\\WebSite2\\build\\web\\arquivos"+nameImg);
            file.delete();
 
            response.sendRedirect("../carro.jsp?status=2"); //Atualizado com sucesso.
        } catch (Exception e) {
            out.print(e);
        }
 
    }
 
%>