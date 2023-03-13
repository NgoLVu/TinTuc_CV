@extends('layouts.index')
@section('title')
    {{$title}}
@endsection
@section('content')
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">User
                    <small>Add new</small>
                </h1>
            </div>
            <!-- /.col-lg-12 -->
            <div class="col-lg-7" style="padding-bottom:120px">
                <form action="{{route('user.update')}}" method="POST">
                    @csrf
                    @if(session('msg'))
                    <div class="alert aler-success">{{session('msg')}}</div>
                @endif
                @if($errors->any())
                    <div class="alert alert-danger text-center">
                        <span>{{$errormessage}}</span>
                    </div>
                @endif
                    <div class="form-group">
                        <label>Username</label>
                        <input class="form-control" name="name" placeholder="Please Enter Username" value="{{old('name')??$editUsers->name}}"/>
                        @error('name')
                        <span style="color:red;">{{$message}}</span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" class="form-control" name="password" placeholder="Please Enter Password" value="{{old('password')??$editUsers->password}}" />
                        @error('password')
                        <span style="color:red;">{{$message}}</span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" class="form-control" name="email" placeholder="Please Enter Email" value="{{old('email')??$editUsers->email}}"/>
                        @error('email')
                        <span style="color:red;">{{$message}}</span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label>User Level</label>
                        <select name="groupUser_id" id="" class="form-control">
                            <option value="0">
                                Chọn nhóm
                            </option>
                            {{-- @if (!@empty($allGroups)){ --}}
                            @foreach ($groups as $item )
                            <option value="{{$item->id}}" {{old('groupUser_id')==$item->id || $editUsers->groupUser_id==$item->id?'selected':false}}>
                                {{$item->name}}
                            </option>
                            @endforeach
                            {{-- }
                            @endif --}}
                        </select>
                        @error('groupUser_id')
                        <span style="color:red;">{{$message}}</span>
                        @enderror
                    </div>
                    <button type="submit" class="btn btn-default">Edit</button>
                    <button type="reset" class="btn btn-default">Reset</button>
                <form>
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
@endsection
