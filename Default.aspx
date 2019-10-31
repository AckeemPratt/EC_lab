<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AdvanceTech._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="carousel-example-captions" class="carousel slide container-fluid" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carousel-example-captions" data-slide-to="0" class=""></li>
        <li data-target="#carousel-example-captions" data-slide-to="1" class=""></li>
        <li data-target="#carousel-example-captions" data-slide-to="2" class="active"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item">
          <img data-src="holder.js/900x500/auto/#777:#777"  width="60%" height="20%" alt="900x400" src="carocel/img_592_e75607e4dcd3e5757e8b0a8fec3747e0_1.jpg" data-holder-rendered="false">
          <div class="carousel-caption">
            <h3>First slide label</h3>
            <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
          </div>
        </div>
        <div class="item">
          <img data-src="holder.js/900x500/auto/#666:#666"  width="100%" alt="900x500" src="carocel/these-samsung-phone-deals-are-worth-a-look-if-youre-scared-of-galaxy-note-10-pricing-techradar.jpg" data-holder-rendered="false">
          <div class="carousel-caption">
            <h3>Second slide label</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
        <div class="item active">
          <img data-src="holder.js/900x500/auto/#555:#555" width="100%" alt="900x500" src="carocel/Blade-Pro.jpg" data-holder-rendered="true">
          <div class="carousel-caption">
            <h3>New RAZOR 17&quot;</h3>
            <p>&nbsp;</p>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#carousel-example-captions" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#carousel-example-captions" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>


    <div class="container marketing">

      <!-- Three columns of text below the carousel -->
      <div class="row jumbotron">
        <div class="col-lg-4">
          <img class="img-circle" src="default page img/sale.png" alt="Generic placeholder image" width="140" height="140">
          <h2>Best Quality</h2>
          <p>Quality is our business. Quality is our top priority. Quality is pride of workmanship. </p>
          <p><a class="btn btn-default" href="#" role="button">View details »</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="default page img/new.png" alt="Generic placeholder image" width="140" height="140">
          <h2>Latest Technology</h2>
          <p>An Exclusive Offer for You.
At These Prices Inventory Won’t Last Long.
Bargain Furniture Here!</p>
          <p><a class="btn btn-default" href="#" role="button">View details »</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="default page img/delivery.png" alt="Generic placeholder image" width="140" height="140">
          <h2>Fast Delivery</h2>
          <p>Feel the speed

Ready , set, delivered

We do what possible

Move ahead for future

Your trusted partner

Deliver it.</p>
          <p><a class="btn btn-default" href="#" role="button">View details »</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->


      <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">First featurette heading. <span class="text-muted">It'll blow your mind.</span></h2>
          <p class="lead"><span ">Don’t just hear your entertainment. Experience it. Car races, T-Rex steps, explosions — you want to be in the middle of all the action and savor every moment. The Bose Surround Speakers 700 deliver our most premium surround sound Bose has to offer, while a refined exterior matches the overall aesthetic of the Bose Soundbar 700. That way they not only enhance your audio experience, they also complement your room’s décor and create one beautiful, cohesive system.</span></p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="500x500" src="default page img/500 bose.jpg" data-holder-rendered="false">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7 col-md-push-5">
          <h2 class="featurette-heading">Oh yeah, it's that good. <span class="text-muted">See for yourself.</span></h2>
          <p class="lead">We’re pushing the limits to what a gaming laptop can do. The Razer Blade Pro 17 is built with a powerful processor to run performance-demanding AAA games on the go. We’ve made it nearly 25% smaller than its predecessor, with a faster 17.3” display that’s fitted into a body as sleek and compact as a 15” laptop.</p>
        </div>
        <div class="col-md-5 col-md-pull-7">
          <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="500x500" src="default page img/500 razor.jpg" data-holder-rendered="false">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Checkmate.</span></h2>
          <p class="lead">A transformative triple‑camera system that adds tons of capability without complexity. An unprecedented leap in battery life. And a mind‑blowing chip that doubles down on machine learning and pushes the boundaries of what a smartphone can do. Welcome to the first iPhone powerful enough to be called Pro.</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="500x500" src="default page img/iphone 500.jpg" data-holder-rendered="false">
        </div>
      </div>



      <!-- /END THE FEATURETTES -->


   

    </div>

    </span>

</asp:Content>
