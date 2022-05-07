<%--
  Created by IntelliJ IDEA.
  User: PhạmMinh
  Date: 07/05/2022
  Time: 3:55 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>About</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
  <style>
    body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
    .w3-quarter img{margin-bottom: -6px; cursor: pointer}
    .w3-quarter img:hover{opacity: 0.6; transition: 0.3s}
  </style>
</head>
<body class="w3-light-grey">

<!-- w3-content defines a container for fixed size centered content, 
and is wrapped around the whole page content, except for the footer in this example -->
<div class="w3-content" style="max-width:1400px">
  <!-- Sidebar/menu -->
  <nav class="w3-sidebar w3-bar-block w3-black w3-animate-right w3-top w3-text-light-grey w3-large" style="z-index:3;width:250px;font-weight:bold;display:none;right:0;" id="mySidebar">
    <a href="javascript:void()" onclick="w3_close()" class="w3-bar-item w3-button w3-center w3-padding-32">CLOSE</a>
    <a href="/register" onclick="w3_close()" class="w3-bar-item w3-button w3-center w3-padding-16">Register</a>
  </nav>
  <!-- Header -->
  <header class="w3-container w3-top w3-white w3-xlarge w3-padding-16">
  <span class="w3-left w3-padding"><a href="/home" style="text-decoration: none">Home</a></span>
  <span class="w3-left w3-padding"><a href="/about" style="text-decoration: none">About</a></span>
  <a href="javascript:void(0)" class="w3-right w3-button w3-white" onclick="w3_open()">☰</a>
</header>
  <header class="w3-container w3-center w3-padding-32">
    <h1><b>MY BLOG</b></h1>
    <p>Welcome to the blog of <span class="w3-tag">unknown</span></p>
  </header>

  <!-- Grid -->
  <div class="w3-row">

    <!-- Blog entries -->
    <div class="w3-col l8 s12">
      <!-- Blog entry -->
      <div class="w3-card-4 w3-margin w3-white">
        <img src="https://www.w3schools.com//w3images/woods.jpg" alt="Nature" style="width:100%">
        <div class="w3-container">
          <h3><b>TITLE HEADING</b></h3>
          <h5>Title description, <span class="w3-opacity">April 7, 2014</span></h5>
        </div>

        <div class="w3-container">
          <p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed
            tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
          <div class="w3-row">
            <div class="w3-col m8 s12">
              <p><button class="w3-button w3-padding-large w3-white w3-border"><b>READ MORE »</b></button></p>
            </div>
            <div class="w3-col m4 w3-hide-small">
              <p><span class="w3-padding-large w3-right"><b>Comments  </b> <span class="w3-tag">0</span></span></p>
            </div>
          </div>
        </div>
      </div>
      <hr>

      <!-- Blog entry -->
      <div class="w3-card-4 w3-margin w3-white">
        <img src="https://www.w3schools.com//w3images/bridge.jpg" alt="Norway" style="width:100%">
        <div class="w3-container">
          <h3><b>BLOG ENTRY</b></h3>
          <h5>Title description, <span class="w3-opacity">April 2, 2014</span></h5>
        </div>

        <div class="w3-container">
          <p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed
            tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
          <div class="w3-row">
            <div class="w3-col m8 s12">
              <p><button class="w3-button w3-padding-large w3-white w3-border"><b>READ MORE »</b></button></p>
            </div>
            <div class="w3-col m4 w3-hide-small">
              <p><span class="w3-padding-large w3-right"><b>Comments  </b> <span class="w3-badge">2</span></span></p>
            </div>
          </div>
        </div>
      </div>
      <!-- END BLOG ENTRIES -->
    </div>

    <!-- Introduction menu -->
    <div class="w3-col l4">
      <!-- About Card -->
      <div class="w3-card w3-margin w3-margin-top">
        <img src="https://www.w3schools.com//w3images/avatar_g.jpg" style="width:100%">
        <div class="w3-container w3-white">
          <h4><b>My Name</b></h4>
          <p>Just me, myself and I, exploring the universe of uknownment. I have a heart of love and a interest of lorem ipsum and mauris neque quam blog. I want to share my world with you.</p>
        </div>
      </div><hr>

      <!-- Posts -->
      <div class="w3-card w3-margin">
        <div class="w3-container w3-padding">
          <h4>Popular Posts</h4>
        </div>
        <ul class="w3-ul w3-hoverable w3-white">
          <li class="w3-padding-16">
            <img src="https://www.w3schools.com//w3images/workshop.jpg" alt="Image" class="w3-left w3-margin-right" style="width:50px">
            <span class="w3-large">Lorem</span><br>
            <span>Sed mattis nunc</span>
          </li>
          <li class="w3-padding-16">
            <img src="https://www.w3schools.com//w3images/gondol.jpg" alt="Image" class="w3-left w3-margin-right" style="width:50px">
            <span class="w3-large">Ipsum</span><br>
            <span>Praes tinci sed</span>
          </li>
          <li class="w3-padding-16">
            <img src="https://www.w3schools.com//w3images/skies.jpg" alt="Image" class="w3-left w3-margin-right" style="width:50px">
            <span class="w3-large">Dorum</span><br>
            <span>Ultricies congue</span>
          </li>
          <li class="w3-padding-16 w3-hide-medium w3-hide-small">
            <img src="https://www.w3schools.com//w3images/rock.jpg" alt="Image" class="w3-left w3-margin-right" style="width:50px">
            <span class="w3-large">Mingsum</span><br>
            <span>Lorem ipsum dipsum</span>
          </li>
        </ul>
      </div>
      <hr>

      <!-- Labels / tags -->
      <div class="w3-card w3-margin">
        <div class="w3-container w3-padding">
          <h4>Tags</h4>
        </div>
        <div class="w3-container w3-white">
          <p><span class="w3-tag w3-black w3-margin-bottom">Travel</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">New York</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">London</span>
            <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">IKEA</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">NORWAY</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">DIY</span>
            <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Ideas</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Baby</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Family</span>
            <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">News</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Clothing</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Shopping</span>
            <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Sports</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Games</span>
          </p>
        </div>
      </div>

      <!-- END Introduction Menu -->
    </div>

    <!-- END GRID -->
  </div><br>

  <!-- END w3-content -->
</div>

<!-- Footer -->
<footer class="w3-container w3-dark-grey w3-padding-32 w3-margin-top">
  <button class="w3-button w3-black w3-disabled w3-padding-large w3-margin-bottom">Previous</button>
  <button class="w3-button w3-black w3-padding-large w3-margin-bottom">Next »</button>
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
</footer>

</body>
</html>

