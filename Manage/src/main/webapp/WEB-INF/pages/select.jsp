<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" import="java.util.* ,nt.com.bean.* , java.io.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    body {
      font-family: 'Arial', sans-serif;
      background-color: #f8f9fa;
      padding: 20px;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin: 20px 0;
      background-color: #ffffff;
      border-radius: 8px;
      overflow: hidden;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    #box, td {
      padding: 15px;
      text-align: left;
      border-bottom: 1px solid #dddddd;
    }

     #box{
      background-color: #007BFF;
      color: #ffffff;
      font-weight: bold;
      text-transform: uppercase;
    }

    tr:nth-child(even) {
      background-color: #f2f2f2;
    }

    tr:hover {
      background-color: #f1f1f1;
      transition: background-color 0.3s ease;
    }

    caption {
      font-size: 1.5rem;
      margin-bottom: 10px;
      color: #333;
    }
  </style>

</head>
<body>
<% 
 Iterable<EmpDeatils> b  = (Iterable<EmpDeatils>) request.getAttribute("iterable"); 
 List<EmpDeatils> newList = new ArrayList<EmpDeatils>();
 PrintWriter ou = response.getWriter();
 
 b.forEach(s->{ if(s!=null) newList.add(s);});
  int size = newList.size();
  ou.println("<table border=1>");
  ou.println("<caption> Employee Details</caption>");
  ou.println("<tr id='box'>");
  ou.println("<td>Id</td>");
  ou.println("<td>Name</td>");
  ou.println("<td>Position</td>");
  ou.println("<td>Department</td>");
  ou.println("<td>Gmail</td>");
  ou.println("<td>Phone</td>");
  ou.println("<td>Delete</td>");
  ou.println("<td>Update</td>");
  
  ou.println("</tr>");
  for(int i=0;i<size ;i++){
	  if(newList.isEmpty()) break;
	  EmpDeatils ed = newList.get(i);
   ou.println("<tr>");
   ou.println("<td>"+ed.getId()+"</td>");
   ou.println("<td>"+ed.getName()+"</td>");
   ou.println("<td>"+ed.getPosition()+"</td>");
   ou.println("<td>"+ed.getDepartment()+"</td>");
   ou.println("<td>"+ed.getEmail()+"</td>");
   ou.println("<td>"+ed.getPhone()+"</td>");
   ou.println("<td><a href='delete?num="+ed.getId()+"'><img src='images/delete.png' width='25' height='26'></a></td>");
   ou.println("<td><a href='edit?'num="+ed.getId()+"><img src='images/edit.png' width='25' height='26'></a></td>");
   ou.println("</tr>");
  }
  ou.println("</table>");
 %>
  
  
   
</body>
</html>