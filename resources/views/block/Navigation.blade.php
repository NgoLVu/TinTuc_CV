@if (Auth::user())
<div id="wrapper">
    <!-- Navigation -->
    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
                <li>
                    <a href="{{route('home')}}"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                </li>
                @if(Auth::user()->groupUser_id=='2')
                <li>

                    <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> News<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="{{route('news.index')}}">List News</a>
                        </li>
                        <li>
                            <a href="{{route('news.yourList')}}">Your News</a>
                        </li>
                        <li>
                            <a href="{{route('news.create')}}">Add News</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
                @endif
                @if(Auth::user()->groupUser_id=='1')
                <li>
                    <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> News<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="{{route('news-A.index')}}">News List</a>
                        </li>
                        <li>
                            <a href="{{route('news-A.yourList')}}">Your News</a>
                        </li>
                        <li>
                            <a href="{{route('news-A.create')}}">Add News</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
                <li>
                    <a href="#"><i class="fa fa-users fa-fw"></i> User<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="{{route('user.index')}}">List User</a>
                        </li>
                        <li>
                            <a href="{{route('user.create')}}">Add User</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
                @endif
                @endif
            </ul>
        </div>
        <!-- /.sidebar-collapse -->
    </div>
</div>
