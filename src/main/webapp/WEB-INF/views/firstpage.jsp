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
  @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');
/* Reseting */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}
body {
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    background: #121215;
}

body{
  background-image: url(IMAGES/FOODS.png);
  background-repeat: no-repeat;
  background-size: cover;
}
.col-sm-12{
  background-color:bisque;
  padding-top: 20px;
  padding-bottom: 20px;
  border-radius: 20px;
}
.col-sm-12{
  opacity: 0.85;
}
.text-center text-success::first-letter{
 text-align: right;
}
</style>
</head>
<body>

<!-- if you want to create login page and register page together in one page ...you have to only chnage his name...that's it...                 -->
<div class="container" style="margin-top: 5%;">
  <div class="row">
    <div class="col-sm-4"> </div>
<div class="col-md-4">
<br/>
<div class="col-sm-12" style="right: 450px" >
  <ul class="nav nav-pills">
    <li class="" style="width:50%"><a class="btn btn-lg btn-default" data-toggle="tab" href="#home">Admin</a></li>
    <li class=" " style="width:48%"><a class=" btn btn-lg btn-default" data-toggle="tab" href="#menu1">User</a></li>
  </ul>
<br/>
  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
        <c:url var="validateUrl" value="/login1" /> 
        <form id="user_form" action="${validateUrl}" method="get">
  <div class="form-group">
    <label for="UserName">Email:</label>
    <input type="text" class="form-control" name ="email">
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" name ="password">
  </div>
  <button type="submit" class="btn btn-default btn-lg">Submit</button>
  <button type="submit" class=" pull-right btn-link"><a href="www.google.com">Forget password</a></button>
</form>

<br/>
<!-- <input type="button" value="Add Customer"
onclick="window.location.href='showForm1'; return false;"
class="btn btn-primary" /> -->



<a href="showForm1" class="pull-right btn btn-block btn-danger" > Not Register ?   </a>


    </div>
    <div id="menu1" class="tab-pane fade">
        <c:url var="validateUrl" value="/login" /> 
        <form id="user_form" action="${validateUrl}" method="get">
            <div class="form-group">
                <label for="name">username:</label>
                <input type="text" class="form-control" id="name" placeholder="Enter username" name="username">
            </div>
            <div class="form-group">
                <label for="pwd">password:</label>
                <input type="text" class="form-control" id="pwd" placeholder="Enter password" name="password">
            </div>
            <button id="confirm_user" type="submit" class="btn btn-primary">Confirm Indentity</button>
        </form>
<br/>
<input type="button" value="Add Customer"
onclick="window.location.href='showForm'; return false;"
class="btn btn-primary" />
    </div>
   </div>
  </div>
</div>
</div>
<!-- This design is created by manoj chauhan  -->
</body>
</html>