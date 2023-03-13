<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="ngovu">
    <meta name="author" content="ngovu">

    <title>Web tin tuc CV</title>
    <base href="{{asset('')}}">
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/shop-homepage.css" rel="stylesheet">
    <link href="css/my.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
            <!-- CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Share JS -->
{{-- <script src="{{ asset('js/share.js') }}"></script> --}}

       <!-- Bootstrap Core CSS -->
       <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

       <!-- MetisMenu CSS -->
       <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

       <!-- Custom CSS -->
       <link href="dist/css/sb-admin-2.css" rel="stylesheet">

       <!-- Custom Fonts -->
       <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

       <!-- DataTables CSS -->
       <link href="bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

       <!-- DataTables Responsive CSS -->
       <link href="bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">
</head>
<body>
    <!-- Header -->
    @include('block.header')
    <!-- Page Content -->
    {{-- <div class="container">
        <div class="space"></div>
        <div class="row main-left">
            <div class="col-md-3 ">
                <ul class="list-group" id="menu">
                    <li href="#" class="list-group-item menu1 active">
                    	Menu
                    </li>

                    <li href="#" class="list-group-item menu1">
                    	Level 1
                    </li>
                    <ul>
                		<li class="list-group-item">
                			<a href="#">Level2</a>
                		</li>
                		<li class="list-group-item">
                			<a href="#">Level2</a>
                		</li>
                    </ul>

                    <li href="#" class="list-group-item menu1">
                    	<a href="#">Level 1</a>
                    </li>
                    <ul>
                		<li class="list-group-item">
                			<a href="#">Level2</a>
                		</li>
                		<li class="list-group-item">
                			<a href="#">Level2</a>
                		</li>
                		<li class="list-group-item">
                			<a href="#">Level2</a>
                		</li>
                		<li class="list-group-item">
                			<a href="#">Level2</a>
                		</li>
                    </ul>
                </ul>
            </div>

            <div class="col-md-9">
	            <div class="panel panel-default">
	            	<div class="panel-heading" style="background-color:#337AB7; color:white;" >
	            		<h2 style="margin-top:0px; margin-bottom:0px;">Laravel Tin Tức</h2>
	            	</div>

	            	<div class="panel-body">
	            		<!-- item -->
					    <div class="row-item row">
		                	<h3>
		                		<a href="category.html">Category</a> |
		                		<small><a href="category.html"><i>subtitle</i></a>/</small>
		                		<small><a href="category.html"><i>subtitle</i></a>/</small>
		                		<small><a href="category.html"><i>subtitle</i></a>/</small>
		                		<small><a href="category.html"><i>subtitle</i></a>/</small>
		                		<small><a href="category.html"><i>subtitle</i></a>/</small>
		                	</h3>
		                	<div class="col-md-8 border-right">
		                		<div class="col-md-5">
			                        <a href="detail.html">
			                            <img class="img-responsive" src="image/320x150.png" alt="">
			                        </a>
			                    </div>

			                    <div class="col-md-7">
			                        <h3>Project Five</h3>
			                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, quo, minima, inventore voluptatum saepe quos nostrum provident .</p>
			                        <a class="btn btn-primary" href="detail.html">View Project <span class="glyphicon glyphicon-chevron-right"></span></a>
								</div>

		                	</div>


							<div class="col-md-4">
								<a href="detail.html">
									<h4>
										<span class="glyphicon glyphicon-list-alt"></span>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									</h4>
								</a>

								<a href="detail.html">
									<h4>
										<span class="glyphicon glyphicon-list-alt"></span>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									</h4>
								</a>

								<a href="detail.html">
									<h4>
										<span class="glyphicon glyphicon-list-alt"></span>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									</h4>
								</a>

								<a href="detail.html">
									<h4>
										<span class="glyphicon glyphicon-list-alt"></span>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									</h4>
								</a>
							</div>

							<div class="break"></div>
		                </div>
		                <!-- end item -->
		                <!-- item -->
					    <div class="row-item row">
		                	<h3><a href="category.html">Category</a> |
		                		<small><a href="category.html"><i>subtitle</i></a>/</small>
		                		<small><a href="category.html"><i>subtitle</i></a>/</small>
		                		<small><a href="category.html"><i>subtitle</i></a>/</small>
		                		<small><a href="category.html"><i>subtitle</i></a>/</small>
		                		<small><a href="category.html"><i>subtitle</i></a>/</small>
		                	</h3>
		                	<div class="col-md-8 border-right">
		                		<div class="col-md-5">
			                        <a href="detail.html">
			                            <img class="img-responsive" src="image/320x150.png" alt="">
			                        </a>
			                    </div>
			                    <div class="col-md-7">
			                        <h3>Project Five</h3>
			                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, quo, minima, inventore voluptatum saepe quos nostrum provident .</p>
			                        <a class="btn btn-primary" href="detail.html">View Project <span class="glyphicon glyphicon-chevron-right"></span></a>
								</div>
		                	</div>


							<div class="col-md-4">
								<a href="detail.html">
									<h4>
										<span class="glyphicon glyphicon-list-alt"></span>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									</h4>
								</a>

								<a href="detail.html">
									<h4>
										<span class="glyphicon glyphicon-list-alt"></span>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									</h4>
								</a>

								<a href="detail.html">
									<h4>
										<span class="glyphicon glyphicon-list-alt"></span>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									</h4>
								</a>

								<a href="detail.html">
									<h4>
										<span class="glyphicon glyphicon-list-alt"></span>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									</h4>
								</a>
							</div>



							<div class="break"></div>
		                </div>
		                <!-- end item -->
		                <!-- item -->
					    <div class="row-item row">
		                	<h3><a href="category.html">Category</a> |
		                		<small><a href="category.html"><i>subtitle</i></a>/</small>
		                		<small><a href="category.html"><i>subtitle</i></a>/</small>
		                		<small><a href="category.html"><i>subtitle</i></a>/</small>
		                		<small><a href="category.html"><i>subtitle</i></a>/</small>
		                		<small><a href="category.html"><i>subtitle</i></a>/</small>
		                	</h3>
		                	<div class="col-md-8 border-right">
		                		<div class="col-md-5">
			                        <a href="detail.html">
			                            <img class="img-responsive" src="image/320x150.png" alt="">
			                        </a>
			                    </div>
			                    <div class="col-md-7">
			                        <h3>Project Five</h3>
			                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, quo, minima, inventore voluptatum saepe quos nostrum provident .</p>
			                        <a class="btn btn-primary" href="detail.html">View Project <span class="glyphicon glyphicon-chevron-right"></span></a>
								</div>
		                	</div>


							<div class="col-md-4">
								<a href="detail.html">
									<h4>
										<span class="glyphicon glyphicon-list-alt"></span>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									</h4>
								</a>

								<a href="detail.html">
									<h4>
										<span class="glyphicon glyphicon-list-alt"></span>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									</h4>
								</a>

								<a href="detail.html">
									<h4>
										<span class="glyphicon glyphicon-list-alt"></span>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									</h4>
								</a>

								<a href="detail.html">
									<h4>
										<span class="glyphicon glyphicon-list-alt"></span>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									</h4>
								</a>
							</div>



							<div class="break"></div>
		                </div>
		                <!-- end item -->
		                <!-- item -->
					    <div class="row-item row">
		                	<h3><a href="category.html">Category</a> |
		                		<small><a href="category.html"><i>subtitle</i></a>/</small>
		                		<small><a href="category.html"><i>subtitle</i></a>/</small>
		                		<small><a href="category.html"><i>subtitle</i></a>/</small>
		                		<small><a href="category.html"><i>subtitle</i></a>/</small>
		                		<small><a href="category.html"><i>subtitle</i></a>/</small>
		                	</h3>
		                	<div class="col-md-8 border-right">
		                		<div class="col-md-5">
			                        <a href="detail.html">
			                            <img class="img-responsive" src="image/320x150.png" alt="">
			                        </a>
			                    </div>
			                    <div class="col-md-7">
			                        <h3>Project Five</h3>
			                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, quo, minima, inventore voluptatum saepe quos nostrum provident .</p>
			                        <a class="btn btn-primary" href="detail.html">View Project <span class="glyphicon glyphicon-chevron-right"></span></a>
								</div>
		                	</div>


							<div class="col-md-4">
								<a href="detail.html">
									<h4>
										<span class="glyphicon glyphicon-list-alt"></span>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									</h4>
								</a>

								<a href="detail.html">
									<h4>
										<span class="glyphicon glyphicon-list-alt"></span>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									</h4>
								</a>

								<a href="detail.html">
									<h4>
										<span class="glyphicon glyphicon-list-alt"></span>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									</h4>
								</a>

								<a href="detail.html">
									<h4>
										<span class="glyphicon glyphicon-list-alt"></span>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									</h4>
								</a>
							</div>



							<div class="break"></div>
		                </div>
		                <!-- end item -->

					</div>
	            </div>
        	</div>
        </div>
        <!-- /.row -->
    </div> --}}
    @include('block.Navigation')
    @yield('content')
    <!-- end Page Content -->
    <!-- Footer -->
    <hr>
    @include('block.footer')
    <!-- end Footer -->
    <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/my.js"></script>
    <script src="bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>

    <!-- DataTables JavaScript -->
    <script src="bower_components/DataTables/media/js/jquery.dataTables.min.js"></script>
    <script src="bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>
</body>

</html>
