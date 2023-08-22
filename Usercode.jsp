
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>


<%
    int RESULT=0;
    int COUNT1=0;
    int COUNT2=0;
    int COUNT3=0;
    String button1=request.getParameter("btn");
    if(button1!=null&&button1.equals("LOGIN"))
    {
    String userId=request.getParameter("uId");
        String pass=request.getParameter("pwd");
    if(userId.equals("")&&pass.equals("")) 
    {
     COUNT3=1;
    }
    else if(userId.equals(""))
    {
    COUNT1=1;
    }
    else if(pass.equals(""))
    {
    COUNT2=1;
    }
    else
    {
    Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection
        ("jdbc:mysql://localhost:3306/test","root","root");
        
        PreparedStatement st= con.prepareStatement
        ("select *from user_table where userId=? and password=?");
        st.setString(1,userId);
        st.setString(2,pass);
        ResultSet rs=st.executeQuery();
        if(rs.next())
        {
        response.sendRedirect("Userpage.jsp");
        }
        else
        {
        RESULT=1;
        }
    }
}    
%>