@extends('layouts.index')
@section('content')
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Chi tiết bài viết
                    @foreach ($newslists as $item)
                    <small>{{$item->title}}</small>
                </h1>
                <a href="/">Quay lại xem bài viết khác</a>
                <h3>Tác giả:{{$item->userID}}</h3>
                <p>Nội dung:{{$item->content}}</p>
                @endforeach
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
@endsection
