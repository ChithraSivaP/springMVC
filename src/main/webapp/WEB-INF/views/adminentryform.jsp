<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    body {
      margin: 0;
      font-family: Arial, Helvetica, sans-serif;
    }
    .topnav {
      overflow: hidden;
      background-color: #333;
    }
    .topnav a {
      float: left;
      color: #f2f2f2;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
      font-size: 17px;
    }
    .topnav a:hover {
      background-color: #ddd;
      color: black;
    }
    .topnav a.active {
      background-color: hsl(0, 92%, 51%);
      color: white;
    }
* {box-sizing: border-box;}
body {
  font-family: Verdana, sans-serif;
background-color: rgb(159, 170, 180);
background-image: url("IMAGES/image1.jpg");
  position: fixed;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background-size: cover;
}
.mySlides {display: none;}
img {vertical-align: middle;
}
/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
 margin: auto; 
}
/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}
/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}
/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}
.active {
  background-color: rgba(255, 255, 255, 0.27);
}
/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}
@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}
/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
.padding-left{
  text-align: center;
  font-weight: 600;
  font-style: oblique;
  font-family: 'Times New Roman', Times, serif;
  font-size: xx-large;
}
.text{
  margin-bottom: 200px;
  text-align: center;
  font-weight: 600;
  font-style: oblique;
  margin-top: 20;
  font-family: 'Times New Roman', Times, serif;
  font-size: x-large;
}
.text span{
  color: rgb(240, 9, 9);
}
.logo{
  color: rgb(240, 9, 9);
}
.logo span{
  color:black;
}
    </style>
 <div class="topnav">
  <a class="active" href="/">Home</a>
  <a href="list2">Order</a>
  <a href="admincards">Report</a>
</div>
</head>
<body>
    <div class="padding-left" >
        <center> <h2 class="logo">ZOMA<span>TO.</span></h2></center>
    </div>
    <div class="slideshow-container ">
      <div class="mySlides fade">
        <img src="IMAGES/image.jpg" style="width: 1000px; height: 70vh;">
        <div class="text">""If more of us valued food and <br>cheer and song above <br>hoarded gold,
           it would be a <span>MERRIER</span> world""</div>
      </div>
      <div class="mySlides fade">
        <div class="numbertext"></div>
        <img src="IMAGES/food3.png" style="width: 1000px ;height: 70vh;">
        <div class="text">Want a delicious meal,<br>but no time we will deliver it hot <br>and yummy....</div>
      </div>
      <div class="mySlides fade">
        <div class="numbertext"></div>
        <img src="IMAGES/image2.jpg" style="width: 1000px;">
        <div class="text">""You know the food is good<br> when you get a runny rose,
          and you're like <br>*sniff sniff*<br>
          *slurp slurp*<br>
          and just chow on.""<br>
        </div>
      </div>
      </div>
      <br>
      <div style="text-align:center">
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
      </div>
      <script>
      let slideIndex = 0;
      showSlides();
      function showSlides() {
        let i;
        let slides = document.getElementsByClassName("mySlides");
        let dots = document.getElementsByClassName("dot");
        for (i = 0; i < slides.length; i++) {
          slides[i].style.display = "none";  
        }
        slideIndex++;
        if (slideIndex > slides.length) {slideIndex = 1}    
        for (i = 0; i < dots.length; i++) {
          dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex-1].style.display = "block";  
        dots[slideIndex-1].className += " active";
        setTimeout(showSlides, 2500); // Change image every 2 seconds
      }
      </script>
</body>
</html>