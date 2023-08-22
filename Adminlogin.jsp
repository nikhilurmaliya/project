
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet"%>


<%
    int RESULT=0;
    int COUNT1=0;
    int COUNT2=0;
    int COUNT3=0;
    
    String button1=request.getParameter("btn");
    if(button1!=null&&button1.equals("LOGIN"))
    {
    String adminId=request.getParameter("aId");
        String pass=request.getParameter("pwd");
    if(adminId.equals("")&&pass.equals("")) 
    {
     COUNT3=1;
    }
    else if(adminId.equals(""))
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
        RESULT=1;
        }
    }
}    
%>



   <html>
    <head>
        <link href="style.css" rel="stylesheet">
        <link href="images/favicon.ico" rel="icon">
    </head>
    <title> ESMR </title>
    
    <body>
        <%@include file="top.jsp" %>
        <form action="">
        <div style="width:100%; height: 100%;background-size: 100%;">
            <div  align="center" style="width:20%;height: 300px;
                 background-color: #3CA4E3;border:none;margin-left: 450px;border-radius: 0;">
                
                <table width="70%" align="center" cellspacing="15">
                    <tr align="center" position="center"><img src="images/user_icon.png" width="100px"/>
                        <td colspan="2" style="font-family: aileron;font-size: 20px;color: white;
                            text-align: center;">ADMIN LOGIN</td>
                    </tr>
                    
                    <% if(button1!=null&&RESULT==1)
                    {%>
                    <tr align="center">
                        <td colspan="2"><font color="red">invalid id/password</font></td>
                    </tr>
                    <%}%>
                    
                    <% if(button1!=null&&COUNT1==1)
                    {%>
                    <tr align="center">
                        <td colspan="2"><font color="red"> ID is required</font></td>
                    </tr>
                    <%}%>
                    
                    <% if(button1!=null&&COUNT2==1)
                    {%>
                    <tr align="center">
                        <td colspan="2"><font color="red"> password is required</font></td>
                    </tr>
                    <%}%>
                    
                    <% if(button1!=null&&COUNT3==1)
                    {%>
                    <tr align="center">
                        <td colspan="2"><font color="red">both feilds are required</font></td>
                    </tr>
                    <%}%>
                    
                    <tr >
                        <td style="font-size: 20px;font-family: aileron;"></td>
                        <td><input type="text" placeholder="enter admin id" name="aId"></td>
                    </tr>
                    
                    <tr >
                        <td style="font-size: 20px;font-family: aileron;"></td>
                        <td><input type="text" placeholder="enter password" name="pwd"></td>
                    </tr>
                    
                    <tr >
                        <td colspan="2"><input type="submit" value="LOGIN" class="btntheme" name="btn"></td>
                    </tr>
                    
                </table>
                </form>
            </div>
            
         <table width="100%" height="50%">
            <tr align="center"> 
            </tr>
        <table width="100%" height="80px" style="background-color:#404040;">
            <tr align="center">
                <td style="font-family: aileron;color: white;font-size:13px;">Terms & Conditions|Who is an Ex-Servicemen|Copyright Policy|Privacy Policy|Hyperlinking Policy</td>
                
            </tr>
            
        
        </table>
       
    </body>  
</html>