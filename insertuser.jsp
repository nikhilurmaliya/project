<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>

<% 
    String userId=request.getParameter("Id");
    String password=request.getParameter("pwd");
    String userName=request.getParameter("name");
    String dob=request.getParameter("DOB");
    String gender=request.getParameter("gender");
    String contact=request.getParameter("contact");
    String mailId=request.getParameter("mail");
    String country=request.getParameter("country");
    String state=request.getParameter("state");
    String city=request.getParameter("city"); 
Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
        PreparedStatement st= con.prepareStatement("insert into user_table values(?,?,?,?,?,?,?,?,?,?)");
        st.setString(1,userId);
        st.setString(2,password);
        st.setString(3,userName);
        st.setString(4,dob);
        st.setString(5,gender);
        st.setString(6,contact);
        st.setString(7,mailId);
        st.setString(8,country);
        st.setString(9,state);
        st.setString(10,city);
        st.executeUpdate();
	 con.close();
         response.sendRedirect("login.jsp");
%>