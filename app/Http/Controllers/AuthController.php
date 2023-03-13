<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Models\UserModel;
use App\Models\Group_UserModel;
use App\Http\Requests\AuthRequest;
class AuthController extends Controller
{
    private $user;
    public function __construct(){
        $this->user=new UserModel();
        if(Auth::check()){
            view()->share('nguoidung',Auth::user());
        }
    }
    public function getLogin(){
        return view('auth.login');
    }
    public function postLogin(Request $request){
        if(Auth::attempt(['email'=>$request->email,'password'=>$request->password])){
            return redirect()->route('home');
        }else
        {
            return redirect()->route('getLogin')->with('msg','Đăng nhập không thành công');
        }
    }
    public function getRegister(){
        return view('auth.register');
    }
    public function postRegister(AuthRequest $request){
        $AddUsers=[
            'name'=>$request->name,
            'email'=>$request->email,
            'password'=>bcrypt($request->password),
            'groupUser_id'=>$request->groupUser_id=2,
        ];
        $this->user->add($AddUsers);
        return redirect()->route('getLogin')->with('msg','Thêm tài khoản thành công');
    }
    public function getInforUser(Request $request,$id=0){
        if(!empty($id)){
            $editUsers=$this->user->editUser($id);;
            if(!empty($editUsers[0])){
              $request->session()->put('id',$id);
              $editUsers=$editUsers[0];
            }else{
              return redirect()->route('getInforUser')->with('msg','nguoi dung khong ton tai');
            }
           }else
           {
            return redirect()->route('getInforUser')->with('msg','Lien ket khong ton tai');
           }
           return view('auth.InforUser',compact('editUsers'));
    }
    public function postInforUser(Request $request){
        $id=session('id');
        if(empty($id)){
          return back()->with('msg','Lien ket khong ton tai');
        }
        $UpdateUsers=[
            'name'=>$request->name,
            // 'email'=>$request->email,
            // 'password'=>bcrypt($request->password),
            // 'group_id'=>$request->group_id=2,
          ];
        $this->user->updateUser($UpdateUsers,$id);
        return back()->with('msg','Cap nhap thanh cong');

    }
    public function logout(){
        Auth::logout();
        return redirect()->route('home');
    }
}
