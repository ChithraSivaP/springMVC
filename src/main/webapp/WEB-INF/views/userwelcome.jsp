<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
:root {
    --color-primary: #0073ff;
    --color-white: #e9e9e9;
    --color-black: #141d28;
    --color-black-1: #212b38;
  }
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }
  body {
    font-family: sans-serif;
  }
  .logo {
    color: var(--color-white);
    font-size: 30px;
  }
  .logo span {
    color:RED;
  }
  .menu-bar {
    background-color: var(--color-black);
    height: 80px;
    width: 100%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 0 5%;
    position: relative;
  }
  .menu-bar ul {
    list-style: none;
    display: flex;
  }
  .menu-bar ul li {
    /* width: 120px; */
    padding: 10px 30px;
    /* text-align: center; */
    position: relative;
  }
  .menu-bar ul li a {
    font-size: 20px;
    color: var(--color-white);
    text-decoration: none;
    transition: all 0.3s;
  }
  .menu-bar ul li a:hover {
    color: var(--color-primary);
  }
  .fas {
    float: right;
    margin-left: 10px;
    padding-top: 3px;
  }
  /* dropdown menu style */
  .dropdown-menu {
    display: none;
  }
  .menu-bar ul li:hover .dropdown-menu {
    display: block;
    position: absolute;
    left: 0;
    top: 100%;
    background-color: var(--color-black);
  }
  .menu-bar ul li:hover .dropdown-menu ul {
    display: block;
    margin: 10px;
  }
  .menu-bar ul li:hover .dropdown-menu ul li {
    width: 150px;
    padding: 10px;
  }
  .dropdown-menu-1 {
    display: none;
  }
  .dropdown-menu ul li:hover .dropdown-menu-1 {
    display: block;
    position: absolute;
    left: 150px;
    top: 0;
    background-color: var(--color-black);
  }
  .hero {
    height: calc(100vh - 80px);
    background-image: url(IMAGES/food1.jpg);
    background-repeat: no-repeat;
    background-size: cover;
  }
  .hero{
    background-color: block;
    opacity: 0.5;
  }
    </style>
  </head>
  <body>
    <div class="menu-bar">
      <h1 class="logo">ZOMA<span>TO.</span></h1>
      <ul>
        <li><a href="/">Home</a></li>
        <li><a href="showForm2">Order </a></li>
        <li><a href="orderdetails">My Order</a>
        </li>
        <li><a href="#">About us</a></li>
      </ul>
    </div>
    <div class="hero">
      &nbsp;
    </div>
  </body>
</html>