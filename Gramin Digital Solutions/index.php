<?php include "header.php"; 

include("users/includes/config.php");
?>
    <div id="myCarousel" class="carousel slide" data-ride="carousel" style="padding-top: 40px">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="img/2.jpg" style="width: 100%; height: 450px">
    </div>

    <div class="item">
      <img src="img/c1.jpg" style="width: 100%; height: 450px">
    </div>

    <div class="item">
      <img src="img/c2.png" style="width: 100%; height: 450px">
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

    <!-- Page Content -->
    <div class="container" style="padding-top: 30px">

        <div class="row">
            <div class="col-lg-6">
                <h3><b>Gramin Digital Solutions</b></h3>
                <p><b>Purpose</b><br>
Through Gramin Digital Solution, the people of the village can easily show their problems through photos or videos in our website.
For example, if the road of a village is bad, then you can make photos or videos of it, so that people will not have to go to the block or any office.
</p>
            </div>
            <div class="col-lg-2">
                <center><img src="img/11.jpg" style="border-radius: 50%">
                    <h5><b>Shri Ramesh Bais<br><span style="font-size: 12px">Governor</span></b></h5>
                </center>
            </div>
            <div class="col-lg-2">
                <center><img src="img/12.jpg" style="border-radius: 50%">
                    <h5><b>Shri Hemant Soren<br><span style="font-size: 12px">Chief Minister</span></b></h5>
                </center>
            </div>
            <div class="col-lg-2">
                <center><img src="img/13.jpg" style="border-radius: 50%">
                    <h5><b>Shri Sukhdeo Singh<br><span style="font-size: 12px">Chief Secretary</span></b></h5>
                </center>
            </div>
        </div>

        <div class="row">
          <div class="col-md-4">
            
            <div class="panel panel-primary">
              <div class="panel-heading">
                <h5 align="center">Total Case Registered</h5>
              </div>
              <div class="panel-body">
                <?php
                $se=mysqli_query($con,"select count(complaintNumber) as total1 from tblcomplaints");
                $se1=mysqli_fetch_assoc($se);
                ?>
                <h1 align="center" style="font-size: 80px; padding: 0; margin: 0"><strong><?php echo $se1['total1']; ?></strong></h1>
              </div>
            </div>
            <div class="panel panel-success">
              <div class="panel-heading">
                <h5 align="center">Total Case Solved</h5>
              </div>
              <div class="panel-body">
                <?php
                $se=mysqli_query($con,"select count(complaintNumber) as total1 from tblcomplaints where status='closed'");
                $se1=mysqli_fetch_assoc($se);
                ?>
                <h1 align="center" style="font-size: 80px; padding: 0; margin: 0"><strong><?php echo $se1['total1']; ?></strong></h1>
              </div>
            </div>
            <div class="panel panel-warning">
              <div class="panel-heading">
                <h5 align="center">Total Case Pending</h5>
              </div>
              <div class="panel-body">
                <?php
                $se=mysqli_query($con,"select count(complaintNumber) as total1 from tblcomplaints where status='in process'");
                $se1=mysqli_fetch_assoc($se);
                ?>
                <h1 align="center" style="font-size: 80px; padding: 0; margin: 0"><strong><?php echo $se1['total1']; ?></strong></h1>
              </div>
            </div>

          </div>
          <div class="col-md-4">
            <div class="panel panel-danger">
              <div class="panel-heading">
                <h3>Quick Links</h3>
              </div>
              <div class="panel-body">

              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="panel panel-info">
              <div class="panel-heading">
                <h3>Latest News / Events</h3>
              </div>
              <div class="panel-body">
                <marquee height="450px" scrollamount="3" direction="up" onmouseover="stop()" onmouseout="start()"><?php
                $no=mysqli_query($con,"select *from notifi");
                while($no1=mysqli_fetch_assoc($no))
                {
                  ?>
                  <p><a href=""><?php echo $no1['heading']; ?></a><br><span style="font-size: 10px">(Posted on : <?php echo $no1['dop']; ?>)</span></p>
                  <?php
                }
                ?></marquee>
              </div>
            </div>
          </div>
        </div>
        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                   <b class="copyright">&copy; 2022 Gramin Digital Solutions </b> All rights reserved.
                </div>
            </div>
           
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>

</html>
  