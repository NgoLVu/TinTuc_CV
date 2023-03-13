@extends('layouts.index')
@section('content')
        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">News
                            <small>List</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr align="center">
                                <th>ID</th>
                                <th>Title</th>
                                <th>Image</th>
                                <th>content</th>
                                <th>created_at</th>
                                <th>User</th>
                                <th>Status</th>
                                <th>Delete</th>
                                <th>Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                                @foreach ($newslistByid as $key=>$item)
                            <tr class="odd gradeX" align="center">
                                <td>{{$item->id}}</td>
                                <td>{{$item->title}}</td>
                                <td>{{$item->image}}</td>
                                <td>{{$item->content}}</td>
                                <td>{{$item->created_at}}</td>
                                <td>{{$item->userID}}</td>
                                <td>{{$item->status}}</td>
                                @if(Auth::user()->groupUser_id=='1')
                                <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="{{route('news-A.destroy',['id'=>$item->id])}}"> Delete</a></td>
                                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="{{route('news-A.edit_your',['id'=>$item->id])}}">Edit</a></td>
                                @else
                                <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="{{route('news.destroy',['id'=>$item->id])}}"> Delete</a></td>
                                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="{{route('news.edit_your',['id'=>$item->id])}}">Edit</a></td>
                                @endif
                                </tr>
                                @endforeach
                        </tbody>
                    </table>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
@endsection
