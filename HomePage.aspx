<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>
 
<!DOCTYPE html>
<html lang="en">
<head>
  <title>StephenClothing - HomePage</title>
  <link rel="shortcut icon" type="image/jpg" href="Image/logo.jpg"/>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="StyleSheet.css" rel="stylesheet" />
 
</head>
<body>
 
 
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      
       <a class="navbar-brand" href="#"><img alt="Brand" id="logo" src="Image/logo.jpg" /></a>
    </div>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#home" class="scroll">Home</a></li>
        <li><a href="#sectionOne" class="scroll">About</a></li>
        <li><a href="#category" class="scroll">Category</a></li>
        <li><a href="#direction" class="scroll">Direction</a></li>
        <li><a href="Contact.aspx">Contact Us</a></li>
        
      </ul>
 
  </div>
</nav>


<section class="bgimage" id="home">
  <div class="container-fluid">
    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <h5>Hello, world! Full width Hero-unit header</h5> 
          <div class="my-class">
          <a href="#" class="btn btn-default">WATCH VIDEO</a> 
              </div>
          </div>
        
  </div>
  
</div>
</section>

<section id="sectionOne"><a name="sectionOne"></a>
    
      <p><h3><span style="color:blue;font-weight:bold">Stephen Clothing</span></h3></p>
      <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>
      <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>
      <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>
 
</section>

<section id="category">
    <div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="Image/pic1.jpg" alt="Los Angeles" style="width:100%;">
        <div class="carousel-caption">
          <h2>Los Angeles</h2>
        </div>
      </div>

      <div class="item">
        <img src="Image/pic2.jpg" alt="Chicago" style="width:100%;">
        <div class="carousel-caption">
          <h2>Chicago</h2>
        </div>
      </div>
    
      <div class="item">
        <img src="Image/pic3.jpg" alt="New York" style="width:100%;">
        <div class="carousel-caption">
          <h2>New York</h2>
          
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

</section>

<section id="direction">
        <div class="panel-body" max-height: "10">
             <a name="direction">
            <div class="row1">
                <div class="col-sm-4">
                    <h3>DIRECTION</h3>
                    <img src="/Image/direction.png" />
                </div>
                <div class="col-sm-4">
                    <h3>#3, 3 Clarmore Drive</h3>
                    <h3>Norwalk, CT-06850</h3>
 
                </div>
            </div>
            </a>
 
        </div>
</section>

<footer class="footer-1 bg-midnight-black">
            <div class="text-center">
                <nav>
                    <ul>
                        <a href="#">Go to the HomePage</a>
                        <a href="#">Visit Documentation</a>
  
                    </ul>
                </nav>
                

                <div>

                    
                    Be sure to take a look to our <a href="#">Terms of Use</a> and <a href="#">Privacy Policy</a>
                    <a class="facebook customer share" href="https://www.facebook.com/sharer.php?u=https://codepen.io/patrickkahl" title="Facebook share" target="_blank">Facebook</a>


                                    </div>
            </div>
    <br /><br /><br />
        </footer>
</body>
</html>
 

<script>
    (function ($) {
        "use strict";
        $(function () {
            $('a[href*="#"]:not([href="#"])').click(function () {
                if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
                    var target = $(this.hash);
                    target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                    if (target.length) {
                        $('html, body').animate({
                            scrollTop: target.offset().top
                        }, 1000);
                        return false;
                    }
                }
            });
        });
    }(jQuery));
</script>
