

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
                height:100px;
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
        <img src="cc.jpg">
           <strong><% out.println("Welcome "+session.getAttribute("username"));%></strong>
        
           <div class="well">  <ul>
  <li><a href="generatepayslipbyacc1.jsp">Generate Pay-Slip</a></li>
  <li><a href="generatereportbyacc1.jsp">Generate Report</a></li>
  <li><a href="add2.jsp">Add Employee</a></li>
  <li><a href="updatebyacc1.jsp">Update Employee</a></li>
  <li><a href="paysalary.jsp">Pay Salary</a></li>
  <li><a href="displayemployee">View Employee List</a></li>
  <li><a href="logout">Logout</a></li>
  </ul>
        </div>
           <div class="well1">
               <% if(request.getParameter("userName")!=null)out.println("<ul style=\"list-style-type:disc;color:green; position: static;margin-left:5px;margin-top:20px;\"><li>"+request.getParameter("userName")+"</li></ul>"); %>
    </div>
      <% }
        else
        {
            response.sendRedirect("index_1.jsp?userName=Your session may be expired. You have to login first");
        }
      %>
    </body>
</html>