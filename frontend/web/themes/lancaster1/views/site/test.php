<?php

/* @var $this yii\web\View */

$this->title = Yii::t('express','We offer exeptional amenities and renowned white - glove services');
?>

<style>
    /* general styles */
    html, body {
        height: 100%;
        width: 100%;
    }

    /* padded section */
    .pad-section {
        padding: 50px 0;
    }
    .pad-section img {
        width: 100%;
    }

    /* vertical-centered text */
    .text-vcenter {
        display: table-cell;
        text-align: center;
        vertical-align: middle;
    }
    .text-vcenter h1 {
        font-size: 4.5em;
        font-weight: 700;
        margin: 0;
        padding: 0;
    }

    /* additional sections */
    #home {
        background: url(../images/home.jpg) no-repeat center center fixed;
        display: table;
        height: 100%;
        position: relative;
        width: 100%;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
    }

    #about {
    }

    #services {
        background-color: #306d9f;
        color: #ffffff;
    }
    #services .glyphicon {
        border: 2px solid #FFFFFF;
        border-radius: 50%;
        display: inline-block;
        font-size: 60px;
        height: 140px;
        line-height: 140px;
        text-align: center;
        vertical-align: middle;
        width: 140px;
    }

    #information {
        background: url(../images/estate.jpg) no-repeat center center fixed;
        display: table;
        height: 800px;
        position: relative;
        width: 100%;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
    }
    #information .panel {
        opacity: 0.85;
    }

    #google_map {
        height: 500px;
    }

    footer {
        padding: 20px 0;
    }
    footer .glyphicon {
        color: #333333;
        font-size: 60px;
    }
    footer .glyphicon:hover {
        color: #306d9f;
    }

</style>
<!-- navigation panel -->
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-main">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Your Brand Name</a>
        </div>

        <div class="collapse navbar-collapse" id="navbar-collapse-main">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#home">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#services">Services</a></li>
                <li><a href="#information">Information</a></li>
                <li><a href="#google_map">Contact</a></li>
                <li><a href="https://www.script-tutorials.com/bootstrap-one-page-template-with-parallax-effect/">Back to tutorial</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>


<!-- first section - Home -->
<div id="home" class="home">
    <div class="text-vcenter">
        <h1>Hello World</h1>
        <h3>This is bootstrap-based layout</h3>
        <a href="#about" class="btn btn-default btn-lg">Continue</a>
    </div>
</div>
<!-- /first section -->




<!-- second section - About -->
<div id="about" class="pad-section">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <img src="images/logo.png" alt="" />
            </div>
            <div class="col-sm-6 text-center">
                <h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in sem cras amet.</h2>
                <p class="lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum metus et ligula venenatis, at rhoncus nisi molestie. Pellentesque porttitor elit suscipit massa laoreet metus.</p>
            </div>
        </div>
    </div>
</div>
<!-- /second section -->



<!-- third section - Services -->
<div id="services" class="pad-section">
    <div class="container">
        <h2 class="text-center">Our Services</h2> <hr />
        <div class="row text-center">
            <div class="col-sm-3 col-xs-6">
                <i class="glyphicon glyphicon-cloud"> </i>
                <h4>Service 1</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in sem cras amet. Donec in sem cras amet.</p>
            </div>
            <div class="col-sm-3 col-xs-6">
                <i class="glyphicon glyphicon-leaf"> </i>
                <h4>Service 2</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in sem cras amet. Donec in sem cras amet.</p>
            </div>
            <div class="col-sm-3 col-xs-6">
                <i class="glyphicon glyphicon-phone-alt"> </i>
                <h4>Service 3</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in sem cras amet. Donec in sem cras amet.</p>
            </div>
            <div class="col-sm-3 col-xs-6">
                <i class="glyphicon glyphicon-bullhorn"> </i>
                <h4>Service 4</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in sem cras amet. Donec in sem cras amet.</p>
            </div>
        </div>
    </div>
</div>
<!-- /third section -->



<!-- fourth section - Information -->
<div id="information" class="pad-section">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2 class="panel-title">Additional information</h2>
                    </div>
                    <div class="panel-body lead">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed hendrerit adipiscing blandit. Aliquam placerat, velit a fermentum fermentum, mi felis vehicula justo, a dapibus quam augue non massa. Duis euismod, augue et tempus consequat, lorem mauris porttitor quam, consequat ultricies mauris mi a metus. Phasellus congue, leo sed ultricies tristique, nunc libero tempor ligula, at varius mi nibh in nisi. Aliquam erat volutpat. Maecenas rhoncus, neque facilisis rhoncus tempus, elit ligula varius dui, quis amet.
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2 class="panel-title">Additional information</h2>
                    </div>
                    <div class="panel-body lead">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed hendrerit adipiscing blandit. Aliquam placerat, velit a fermentum fermentum, mi felis vehicula justo, a dapibus quam augue non massa. Duis euismod, augue et tempus consequat, lorem mauris porttitor quam, consequat ultricies mauris mi a metus. Phasellus congue, leo sed ultricies tristique, nunc libero tempor ligula, at varius mi nibh in nisi. Aliquam erat volutpat. Maecenas rhoncus, neque facilisis rhoncus tempus, elit ligula varius dui, quis amet.
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /fourth section -->





<!-- fifth section -->
<div id="services" class="pad-section">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 text-center">
                <h3>Parallax scrolling effect is in action</h3>
                <h4>The next is the address on Google maps</h4>
            </div>
        </div>
    </div>
</div>
<!-- /fifth section -->

<!-- google map -->
<div id="google_map"></div>
<!-- /google map -->

<!-- footer -->
<footer>
    <hr />
    <div class="container">
        <p class="text-right">Copyright &copy; Your Company 2014</p>
    </div>
</footer>
<!-- /footer -->




