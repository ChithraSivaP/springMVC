<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

 pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
    crossorigin="anonymous"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="orderdetails.js"></script>
  <style>
    .card-img,
    .card-img-top,
    .card-img-bottom {
      width: 95%;
    }
    .h5,
    h5 {
      font-size: 1.10rem;
      text-align: center;
      /* text-emphasis-position: inherit; */
    }
    .h1,
    .h2,
    .h3,
    .h4,
    .h5,
    .h6,
    h1,
    h2,
    h3,
    h4,
    h5,
    h6 {
      margin-top: 11px;
      margin-bottom: 0.5rem;
      font-weight: 500;
      line-height: 1.2;
    }
    .card-title::first-letter {
      text-align: right;
      font-weight: 600;
      font-style: oblique;
      font-family: 'Times New Roman', Times, serif;
      font-size: xx-large;
      text-transform: uppercase;
    }
    .card-text::first-letter ::selection {
      text-align: left;
      font-weight: 500;
      font-style: oblique;
      font-family: 'Times New Roman', Times, serif;
      font-size: large;
      text-transform: uppercase;
    }
    body {
      background-image: url("IMAGES/image3.jpg");
      background-repeat: no-repeat;
      background-size: cover;
    }
    #no {
      font-family: Arial, Helvetica, sans-serif;
      border-collapse: collapse;
      width: 100%;
    }
    #no td,
    #no th {
      border: 1px solid #ddd;
      padding: 8px;
    }
    #no tr:nth-child(even) {
      background-color: #f2f2f2;
    }
    #no tr:hover {
      background-color: #ddd;
    }
    #no th {
      padding-top: 12px;
      padding-bottom: 12px;
      text-align: left;
      background-color: #04AA6D;
      color: white;
    }
  </style>
</head>
<body onload="display()">
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <!-- Container wrapper -->
    <div class="container">
      <!-- Navbar brand -->
      <a class="navbar-brand" href="#"><img id="MDB-logo" src="IMAGES/images5.png" alt="MDB Logo" draggable="false"
          height="50" width="70" /></a>
      <!-- Collapsible wrapper -->
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <!-- Left links -->
        <ul class="navbar-nav me-3">
          <li class="nav-item">
            <a class="nav-link active d-flex align-items-center" aria-current="page" href="#"><i
                class="fas fa-bars pe-2"></i>CARDS</a>
          </li>
        </ul>
  </nav>
  <!-- Navbar -->
  <br><br>
  <body>
    <fieldset>
      <table border="1" id="no">
        <tr>
          <th>ID</th>
          <th>ORDERNAME</th>
          <th>BUYERNAME</th>
          <th>RESTAURANTS</th>
          <th>LOCATION</th>
          <th>DATE</th>
          <th>PRICE</th>
        </tr>
      </table>
    </fieldset>
    <script src="orderdetails.js" asp-append-version="true"></script>
    <script type="text/javascript">
      getItems();
    </script>
  </body>
  <br><br>
  <div id="main"></div>
</body>
</html>