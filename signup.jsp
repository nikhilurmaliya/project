
   <html>
    <head>
        <link href="style.css" rel="stylesheet">
        <link href="images/favicon.ico" rel="icon">
    </head>
    <title> ESMR </title>
    
    <body>
        <%@include file="top.jsp" %>
        
        <div style="width:100%; height: 100%;background-size: 100%;">
            <div  align="center" style="width:30%;height: 550px;
                 background-color: #3CA4E3;border:none;margin-left: 450px;border-radius: 0;">
                
        <form action="insertuser.jsp">
                    
                <table width="70%" align="center" cellspacing="20">
                    <tr  position="center">
                        <td colspan="2" style="font-family: aileron;font-size: 20px;color: white;
                            text-align: center;">USER SIGN UP</td>
                    </tr>
                    <tr>
                        <td style="font-size: 17px;font-family: aileron;">User Id</td>
                        <td><input type="text" placeholder="enter user id" name="Id" ></td>
                    </tr>
                    
                    <tr>
                        <td style="font-size: 17px;font-family: aileron;">Password</td>
                        <td><input type="text" placeholder="enter password" name="pwd"></td>
                    </tr>
                    
                    <tr>
                        <td style="font-size: 17px;font-family: aileron;">Name</td>
                        <td><input type="text" placeholder="enter full name" name="name"></td>
                    </tr>
                    
                    <tr>
                        <td style="font-size: 17px;font-family: aileron;">DOB</td>
                        <td><input type="date" placeholder="date of birth" name="DOB"></td>
                    </tr>
                    
                    <tr>
                        <td style="font-size: 17px;font-family: aileron;">Gender</td>
                        <td><select name="gender">
                                        <option>select gender</option>
                                        <option value="MALE">MALE</option>
                                        <option value="FEMALE">FEMALE</option>
                                        <option value="OTHER"> OTHER</option>
                                    </select></td>
                    </tr>
                    <tr>
                        <td style="font-size: 17px;font-family: aileron;">Contact</td>
                        <td><input type="text" placeholder="enter contact number" name="contact"></td>
                    </tr>
                    <tr>
                        <td style="font-size: 17px;font-family: aileron;">MailId</td>
                        <td><input type="text" placeholder="enter MailId" name="mail"></td>
                    </tr>
                    <tr>
                        <td style="font-size: 17px;font-family: aileron;">Country</td>
                        <td><select name="country">
                                        <option>select country</option>
                                        <option value="INDIA">INDIA</option>
                                        <option value="NEPAL">NEPAL</option>
                                        <option value="BHUTAN">BHUTAN</option>
                                        <option value="SRI LANKA">SRI LANKA</option>
                                        <option value="MYANMAR">MYANMAR</option>
                                    </select>
                    </tr>
                    <tr>
                        <td style="font-size: 17px;font-family: aileron;">State</td>
                                <td><select name="state">
                                        <option >select state</option>
                                        <option value="MP">MP</option>
                                        <option value="UP">UP</option>
                                        <option value="PUNJAB">PUNJAB</option>
                                        <option value="RAJASTHAN">RAJASTHAN</option>
                                        <option value="GUJRAT">GUJRAT</option>
                                    </select></td>
                    </tr>
                   <tr>
                        <td style="font-size: 17px;font-family: aileron;">City</td>
                        <td><input type="text" placeholder="enter city" name="city"></td>
                    </tr>
                    
                    <tr align="center">
                        <td colspan="2"><input type="submit" value="SUBMIT`" class="btntheme">
                            <input type="reset" value="CLEAR" class="btntheme"> </td>
                        
                    </tr>
                    
                </table>`
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