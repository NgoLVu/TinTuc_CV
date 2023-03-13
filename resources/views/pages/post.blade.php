@extends('layouts.index')
@section('content')
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Bài Viết
                    <small>các bài viết được hiển thị thì được xác nhận duyệt.</small>
                </h1>
                @foreach ($newslists as $item)
                <h4><a href="detail/{{$item->id}}.html">{{$item->title}}</a></h4>
                @endforeach
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
@endsection
