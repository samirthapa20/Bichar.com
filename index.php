<?php
 include'core/init.php';
 if(isset($_SESSION['user_id']))
 {
    header('Location: home.php');
 }

 ?>
<html>
    <head>
        <title>Bichar</title>
        <meta charset="UTF-8" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css"/>
        <link rel="stylesheet" href="assets/css/style-complete.css"/>
        <link rel="stylesheet" href="assets/css/animate.min.css"/>
    </head>
    <!--Helvetica Neue-->
<body>

<section class=" animate zoomin ">

<div class="front-img animate flip ">
    <img src="assets/images/background.jpg"></img>
</div>

<div class="wrapper">
<!-- header wrapper -->
<div class="header-wrapper">
    
    <div class="nav-container">
        <!-- Nav -->
        <div class="nav">
            
            <div class="nav-left">
                <ul>
                    <li><i class="fa fa-twitter" aria-hidden="true"></i><a href="#">Home</a></li>
                    <li><a href="#">About</a></li>
                </ul>
            </div><!-- nav left ends-->

            <div class="nav-right">
                <ul>
                    <li><a href="#">Language</a></li>
                </ul>
            </div><!-- nav right ends-->

        </div><!-- nav ends -->

    </div><!-- nav container ends -->

</div><!-- header wrapper end -->
    
<!---Inner wrapper-->
<div class="inner-wrapper">
    <!-- main container -->
    <div class="main-container">
        <!-- content left-->
        <div class="content-left">
            <h1 class="animated shake" >Welcome to Bichar.com </h1>
            <br/>
            <p class="animated flipInX fast">A place to connect with your friends — 
            And Get updates from the people you love, also get the updates from the world and things that interest you along with trending hot topics.</p>
        </div><!-- content left ends -->    

        <!-- content right ends -->
        <div class="content-right">
        <div class="animated bounce fast">

            <!-- Log In Section -->
            <div class="login-wrapper">
              <?php
              include 'includes/login.php';
              ?>
            </div>
        </div><!-- log in wrapper end -->

            <!-- SignUp Section -->
            <div class="animated zoomin ">
            <div class="signup-wrapper">
               <?php
              include 'includes/signup-form.php';
              ?>
            </div>
            </div>
            <!-- SIGN UP wrapper end -->

        </div><!-- content right ends -->

    </div><!-- main container end -->

</div><!-- inner wrapper ends-->
</div><!-- ends wrapper -->
</section>
</body>
</html>
