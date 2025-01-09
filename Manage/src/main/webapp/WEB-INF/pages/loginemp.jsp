<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom, #6a11cb, #2575fc);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #fff;
        }

        .login-container {
            background: rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
            padding: 2rem;
            width: 100%;
            max-width: 400px;
            text-align: center;
        }

        .login-container h1 {
            margin-bottom: 1.5rem;
        }

        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 0.8rem;
            margin: 0.5rem 0;
            border: none;
            border-radius: 5px;
        }

        .login-container button {
            width: 100%;
            padding: 0.8rem;
            background-color: #2575fc;
            border: none;
            border-radius: 5px;
            color: #fff;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s;
        }

        .login-container button:hover {
            background-color: #1a5dc1;
        }

        .login-container a {
            color: #fff;
            text-decoration: none;
            display: block;
            margin-top: 1rem;
        }

        .login-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>Login</h1>
        <form action="logincheck" method="POST">
            <input type="text" name="email" placeholder="Username" required>
            <input type="password" name="pass" placeholder="Password" required>
            <button type="submit">Login</button>
        </form>
        <a href="forgotpassword">Forgot Password?</a>
        
    </div>
</body>
</html>
