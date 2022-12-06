<%-- 
    Document   : enviado
    Created on : 07/03/2016, 17:45:10
    Author     : marcelosiedler
--%>

<%@ page import="java.sql.*" %>
<%@ page import="org.postgresql.Driver" %>
<%@ page import="util.Upload" %>
<%@ page contentType= "text/html" pageEncoding="UTF-8"%>
<%

    Connection con = null;
    Statement st = null;
    ResultSet rs = null;

    Upload up = new Upload();
    up.setFolderUpload("arquivos");
    if (up.formProcess(getServletContext(), request)) {

        //Arquivos
        String imagem = up.getFiles().get(0);
        String nome = up.getForm().get("nome").toString();
        String desc = up.getForm().get("desc").toString();
        Float valor = Float.parseFloat(up.getForm().get("valor").toString());

        String url = "jdbc:postgresql://localhost:5432/website";
        String usuario = "postgres";
        String senhaBD = "admin";

        try {
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection(url, usuario, senhaBD);
            st = con.createStatement();
            st.execute("INSERT INTO produtos(nome,descricao,valor,imagem) VALUES('" + nome + "','" + desc + "','" + valor + "','" + imagem + "') ");
            response.sendRedirect("usuarios.jsp?erro=1000");
        } catch (Exception e) {
            out.println(e);
        }

    } else {

    }
%>
<img src="../arquivos/<%=up.getFiles().get(0)%>"  />