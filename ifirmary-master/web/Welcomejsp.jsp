

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" media="screen,projection" type="text/css" href="./main.css" />
        
        <style>
            img
            {
                width:150px;
                height:50px;
                margin-left: 70px;
                margin-top: -5px;
            }
            strong
            {
            position: absolute;
            right: 15px;
            top :35px
                
            }
        </style>
            
        </head>
    <body>
        <% if(session.getAttribute("username")!=null){ %>
        <img src="health.jpg">
           <strong><% out.println("Welcome "+session.getAttribute("username"));%></strong>
        
           <div class="well">  <ul>
  <li><a href="generatepayslip.jsp">View Pay-Slip</a></li>
  <!--li><a href="generatereport">Generate Report</a></li>
  <li><a href="displayemployee">Employee List</a></li>
  <li><a href="add.jsp">Add Employee</a></li>
  <li><a href="delete.jsp">Delete Employee</a></li>-->
  <li><a href="actualupdate.jsp">Update Employee</a></li>
  <li><a href="update.jsp">Apply Leave</a></li>
  <li><a href="logout">Logout</a></li>
  </ul>
        </div>
           <div class="well1">
               <% if(request.getParameter("userName")!=null)out.println("<ul style=\"list-style-type:disc;color:green; position: static;margin-left:5px;margin-top:20px;\"><li>"+request.getParameter("userName")+"</li></ul>"); %>
    </div>
      <% }
        else
        {
            response.sendRedirect("indexPay.jsp?userName=Your session may be expired. You have to login first");
        }
      %>
    </body>
</html>