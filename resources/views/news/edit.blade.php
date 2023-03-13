@extends('layouts.index')
@section('title')
    {{$title}}
@endsection
@section('content')
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">News
                    <small>Trang này dùng để kiểm tra và xác nhận</small>
                </h1>
            </div>
            <!-- /.col-lg-12 -->
            <div class="col-lg-7" style="padding-bottom:120px">
                @if(Auth::user()->groupUser_id=='1')
                <form action="{{route('news-A.update')}}" method="POST">
                @else
                <form action="{{route('news.update')}}" method="POST">
                @endif
                    @csrf
                    <div class="form-group">
                        <label>Title</label>
                        <input class="form-control" name="title" placeholder="Please Enter Username" value="{{old('title')??$editNews->title}}" disabled/>
                        @error('title')
                        <span style="color:red;">{{$message}}</span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label>Image</label>
                        <input class="form-control" name="image" placeholder="Please Enter Username" value="{{old('image')??$editNews->image}}" disabled/>
                        @error('image')
                        <span style="color:red;">{{$message}}</span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label>summary</label>
                        <input class="form-control" name="summary" placeholder="Please Enter Username" value="{{old('summary')??$editNews->summary}}" disabled/>
                        @error('summary')
                        <span style="color:red;">{{$message}}</span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label>Content</label>
                        <input class="form-control" name="content" placeholder="Please Enter Username" value="{{old('content')??$editNews->content}}" disabled/>
                        @error('content')
                        <span style="color:red;">{{$message}}</span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label>User Level</label>
                        <select name="groupNew_id" id="" class="form-control">
                            {{-- <option value="1">
                                Chọn nhóm
                            </option> --}}
                            @if (!@empty($groups))
                                @foreach ($groups as $item )
                                <option value="{{$item->id}}" {{old('groupNew_id')==$item->id?'selected':false}}>
                                    {{$item->name}}
                                </option>
                                @endforeach

                            @endif
                        </select>
                        @error('groupNew_id')
                        <span style="color:red;">{{$message}}</span>
                        @enderror
                    </div>
                    <button type="submit" class="btn btn-default">Edit</button>
                <form>
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
@endsection
