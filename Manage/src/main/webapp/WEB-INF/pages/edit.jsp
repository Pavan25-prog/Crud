<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 600px;
            margin: auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .container h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table td {
            padding: 10px;
            vertical-align: top;
        }
        table td:first-child {
            text-align: right;
            font-weight: bold;
            color: #555;
        }
        input, select {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        input:focus, select:focus {
            outline: none;
            border-color: #007bff;
        }
        .btn {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            font-size: 18px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Employee Form</h1>
        <form action="update" method="post" >
            <table>
                <tr>
                    <td><label for="name">Full Name:</label></td>
                    <td><input type="text" id="name" name="name"  value="${data.name}" placeholder="Enter your full name" required></td>
                </tr>
                <tr>
                    <td><label for="position">Position:</label></td>
                    <td><input type="text" id="position" name="position" placeholder="Enter your position" value="${data.position}" required></td>
                </tr>
                <tr>
                    <td><label for="department">Department:</label></td>
                    <td>
                        <select id="department" name="department" required>
                            <option value="${data.department}" disabled selected>Select your department</option>
                            <option value="HR">HR</option>
                            <option value="Finance">Finance</option>
                            <option value="IT">IT</option>
                            <option value="Marketing">Marketing</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="email">Email Address:</label></td>
                    <td><input type="email" id="email" name="email" placeholder="Enter your email"  value="${data.email}" required></td>
                </tr>
                <tr>
                    <td><label for="phone">Phone Number:</label></td>
                    <td><input type="tel" id="phone" name="phone" placeholder="Enter your phone number" value="${data.phone}" required></td>
                </tr>
                <tr>
                <td>
                <input type="hidden" name="id" value="${data.id}">
                </td>
                </tr>
            </table>
            <button type="submit" class="btn">Edit</button>  
        </form>
        <a href="homepage"><h>HomePage</h></a>
    </div>
</body>
</html>
