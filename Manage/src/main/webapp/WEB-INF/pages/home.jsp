<%@page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<html>
<head>
  <title>Emp Data</title>



</head>
<style>
#box{
  width:300px;
  heigth:200px;
  border:2px solid blue;
  border-top-left-radius:20px;
  border-bottom-right-radius:20px;
  box-shadow:10px 10px 2px blue;
  margin-left:450px;
   margin-top:350px;
}
</style>
<body>
<div id="box">
 <form  action="comma" method="post">
  <table>
     <caption>Login Form</caption>
     <tr>
      <td>
        Username:
      </td>
      <td>
        <input type="text"  name="username" required>
      </td>
     </tr>
     
     <tr>
      <td>
        Password:
      </td>
      <td>
        <input type="password"  name="pass" required>
      </td>
     </tr>
     
     <tr>
      <td style="align:center">
     <input type="submit" value="Submit">
      </td>
    </tr>
  </table>
</form>

</div>
  
  <!--  <h1>User Form</h1>

 <form action="comma" method="post">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" required>
    <br><br>
    <label for="password">Password:</label>
    <input type="password" id="password" name="pass" required>
    <br><br>
    <input type="submit" value="Submit">
  </form>-->
  <!--   
    <frm:form modelAttribute="id" action="comma" method="post">
        <div>
            <label>Name:</label>
            <frm:input path="username" />
        </div>
        <div>
            <label>Email:</label>
            <frm:input path="password" />
        </div>
        <div>
            <input type="submit" value="Submit" />
        </div>
    </frm:form> -->
</body>
</html>
