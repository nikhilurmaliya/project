
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet"%>


<%
    int RESULT=0;
    int COUNT1=0;
    int COUNT2=0;
    int COUNT3=0;
    
    Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection
        ("jdbc:mysql://localhost:3306/test","root","root");
        
        String adminId=request.getParameter("aId");
        String pass=request.getParameter("pwd");
        
        PreparedStatement st= con.prepareStatement
        ("select *from adminlogin_table where adminId=? and password=?");
        st.setString(1,adminId);
        st.setString(2,pass);
        ResultSet rs=st.executeQuery();
        if(rs.next())
        {
        response.sendRedirect("Adminpage.jsp");
        }
        else
        {
        out.println("invalid Id/password");
        }
%>