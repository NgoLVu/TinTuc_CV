    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="{{route('home')}}">Tin Tuc CV</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <form class="navbar-form navbar-left" role="search" action="timkiem" method="POST">
                    <input type="hidden" name="_token" value="{{csrf_token()}}";>

			        <div class="form-group">
			          <input type="text" class="form-control" placeholder="Search" name="tukhoa">
			        </div>
			        <button type="submit" class="btn btn-default">Tìm kiếm</button>
			    </form>

			    <ul class="nav navbar-nav pull-right">
                    @if (!Auth::user())
                    <li>
                        <a href="{{route('getRegister')}}">Đăng ký</a>
                    </li>
                    <li>
                        <a href="{{route('getLogin')}}">Đăng nhập</a>
                    </li>
                    @else
                    <li>
                    	<a>
                    		<span class ="glyphicon glyphicon-user"></span>
                    		{{Auth::user()->name}}
                    	</a>
                    </li>
                    <li >
                        <a href="{{route('getInforUser',['id'=>Auth::user()->id])}}">Thông tin tài khoản</a>
                    </li>
                    <li>
                    	<a href="{{route('logout')}}">Đăng xuất</a>
                    </li>
                    @if(Auth::user()->groupUser_id=='1')
                    <li>
                    <a href="{{route('home')}}">Quản trị</a>
                    </li>
                    @else
                    <li>
                        <a href="{{route('home')}}"></a>
                        </li>
                    @endif
                    @endif

                </ul>
            </div>



            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
