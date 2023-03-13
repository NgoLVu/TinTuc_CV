<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\UserModel;
use App\Models\Group_UserModel;
use App\Http\Requests\UserRequest;
class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    private $user;
    const _Per_name=5;
    public function __construct(){
        $this->user=new UserModel();
    }
    public function index()
    {
        $title="Quản lý người dùng";
        $userlists=$this->user->getall();
        $groups=getGroupUsers();
        $errormessage="Vui lòng kiểm tra dữ liệu vào";
        return view('users.list',compact('title','userlists','groups','errormessage'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title="Quản lý người dùng";
        $userlists=$this->user->getall();
        $groups=getGroupUsers();
        $errormessage="Vui lòng kiểm tra dữ liệu vào";
        return view('users.add',compact('title','userlists','groups','errormessage'));
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(UserRequest $request)
    {
        $AddUsers=[

            'name'=>$request->name,
            'email'=>$request->email,
            'password'=>bcrypt($request->password),
            'groupUser_id'=>$request->groupUser_id,
            // 'created_at'=>date('Y-m-d H:i:s')
        ];
        $this->user->add($AddUsers);
        return redirect()->route('user.index')->with('msg','Them thanh cong');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request,$id=0)
    {
        $title="Cập nhập người dùng";
        $errormessage="vui long kiem tra du lieu vao";
         if(!empty($id)){
        $editUsers=$this->user->editUser($id);;
        if(!empty($editUsers[0])){
        $request->session()->put('id',$id);
        $editUsers=$editUsers[0];
        }else{
        return redirect()->route('user.index')->with('msg','nguoi dung khong ton tai');
        }
        }else
        {
        return redirect()->route('user.index')->with('msg','Lien ket khong ton tai');
        }
        $groups=getGroupUsers();
        return view('users.edit',compact('title','editUsers','errormessage','groups'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UserRequest $request)
    {
        $id=session('id');
        if(empty($id)){
          return back()->with('msg','Lien ket khong ton tai');
        }
        $UpdateUsers=[
            'name'=>$request->name,
            'email'=>$request->email,
            'password'=>bcrypt($request->password),
            'groupUser_id'=>$request->groupUser_id,
            //  'updated_at'=>date('Y-m-d H:i:s')
          ];
        $this->user->updateUser($UpdateUsers,$id);
        return redirect()->route('user.index')->with('msg','Cap nhap thanh cong');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if(!empty($id)){
            $deleteUsers=$this->user->editUser($id);
            if(!empty($deleteUsers[0])){
               $deleteUsers= $this->user->deleteUser($id);
               if($deleteUsers){
                $msg="Xoa nguoi dung thanh cong";
               }else{
                $msg="Ban khong the xoa nguoi dung nay ,vui long thu lai";
               }
            }else{
              $msg="nguoi dung khong ton tai";

           }}else{
            $msg="Lien ket khong ton tai";
           }
           return redirect()->route('user.index')->with('msg',$msg);
    }
}
