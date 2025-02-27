<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Submitted Data</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <style>
        body {
            background-color: #f7f7f7;
        }
        .container {
            margin-top: 50px;
        }
        .table-container {
            background-color: burlywood;
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        td, th {
            padding: 12px;
            text-align: left;
        }
        tr:nth-child(even) {
            background-color: #f8f9fa;
        }
    </style>
</head>
<body>
    <div class="container d-flex justify-content-center align-items-center">
        <div class="table-container w-75">
            <h2 class="text-center text-success mb-4 fw-bold">Submitted Data</h2>
            <%
                User user = (User) request.getAttribute("user");
            %>
            <table class="table table-bordered">
                <tr>
                    <th>Email</th>
                    <td><%= user.getEmail() %></td>
                </tr>
                <tr>
                    <th>Password</th>
                    <td><%= user.getPassword() %></td>
                </tr>
                <tr>
                    <th>Birthday</th>
                    <td><%= user.getBirthday() %></td>
                </tr>
                <tr>
                    <th>New Student</th>
                    <td><%= user.isNewStudent() ? "Yes" : "No" %></td>
                </tr>
                <tr>
                    <th>College</th>
                    <td><%= user.getCollege() %></td>
                </tr>
                <tr>
                    <th>Major</th>
                    <td><%= user.getMajor() %></td>
                </tr>
                <tr>
                    <th>Color</th>
                    <td><%= user.getColor() %></td>
                </tr>
                <tr>
                    <th>Terms</th>
                    <td><%= user.isTerms() ? "Yes" : "No" %></td>
                </tr>
            </table>
        </div>
    </div>
</body>
</html>
