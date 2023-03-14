<?php

namespace App\Http\Controllers;
use Auth;
use Illuminate\Http\Request;
use App\Models\NewsModel;
use App\Models\UserModel;
use App\Models\Group_NewsModel;
use App\Http\Requests\NewsRequest;
class NewsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    protected $news;
    public function __construct(){
        $this->news=new NewsModel();
    }
    public function index()
    {
        $title="Quản lý Tin tức";
        $newslists=$this->news->getall();
        // $newslistByid=$this->news->getallById(Auth::id());
        $groups=getGroupNews();
        $errormessage="Vui lòng kiểm tra dữ liệu vào";
        return view('news.list',compact('title','newslists','groups','errormessage'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title="Quản lý Tin tức";
        $newslists=$this->news->getall();
        $groups=getGroupNews();
        $errormessage="Vui lòng kiểm tra dữ liệu vào";
        return view('news.add',compact('title','newslists','groups','errormessage'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $AddUsers=[
            'title'=>$request->title,
            'image'=>$request->image,
            'summary'=>$request->summary,
            'content'=>$request->content,
            'created_at'=>date('Y-m-d H:i:s'),
            'id_user'=> Auth::id(),
            'groupNew_id'=>$request->groupNew_id=1,
        ];
        $ss=$this->news->add($AddUsers);
        return redirect()->route('news-A.index')->with('msg','Them thanh cong');
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
     *
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
     public function edit(Request $request,$id=0)
    {
        $title="Cập nhập tin tức";
        $errormessage="vùi lòng kiểm tra dữ liệu vào";
         if(!empty($id)){
        $editNews=$this->news->editNews($id);;
        if(!empty($editNews[0])){
        $request->session()->put('id',$id);
        $editNews=$editNews[0];
        }else{
        return redirect()->route('news-A.index')->with('msg','tin tức không tồn tại');
        }
        }else
        {
        return redirect()->route('news-A.index')->with('msg','Liên kết không tồn tại');
        }
        $groups=getGroupNews();
        return view('news.edit',compact('title','editNews','errormessage','groups'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $id=session('id');
        if(empty($id)){
          return back()->with('msg','Liên kết không tồn tại');
        }
        $Update=[
            'title'=>$request->title,
            'image'=>$request->image,
            'summary'=>$request->summary,
            'content'=>$request->content,
            // 'created_at'=>date('Y-m-d H:i:s'),
            // 'id_user'=> Auth::id(),
            'groupNew_id'=>$request->groupNew_id,
          ];
        $this->news->updateNews($Update,$id);
        return redirect()->route('news-A.index')->with('msg','Cập nhập thành công');
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
            $deleteNews=$this->news->editNews($id);
            if(!empty($deleteNews[0])){
               $deleteNews= $this->news->deleteNews($id);
               if($deleteNews){
                $msg="Xoa nguoi dung thanh cong";
               }else{
                $msg="Ban khong the xoa nguoi dung nay ,vui long thu lai";
               }
            }else{
              $msg="nguoi dung khong ton tai";

           }}else{
            $msg="Lien ket khong ton tai";
           }
           return redirect()->route('news-A.index')->with('msg',$msg);
    }
    public function YourList(){
        $title="Quản lý Tin tức";
        $newslists=$this->news->getall();
        $newslistByid=$this->news->getallById(Auth::id());
        $groups=getGroupNews();
        $errormessage="Vui lòng kiểm tra dữ liệu vào";
        return view('news.your',compact('title','newslists','newslistByid','groups','errormessage'));
    }
    public function edit_your(Request $request,$id=0)
    {
        $title="Cập nhập tin tức";
        $errormessage="vùi lòng kiểm tra dữ liệu vào";
         if(!empty($id)){
        $editNews=$this->news->editNews($id);;
        if(!empty($editNews[0])){
        $request->session()->put('id',$id);
        $editNews=$editNews[0];
        }else{
        return redirect()->route('news-A.index')->with('msg','tin tức không tồn tại');
        }
        }else
        {
        return redirect()->route('news-A.index')->with('msg','Liên kết không tồn tại');
        }
        $groups=getGroupNews();
        return view('news.your_edit',compact('title','editNews','errormessage','groups'));
    }
    public function update_your(Request $request)
    {
        $id=session('id');
        if(empty($id)){
          return back()->with('msg','Liên kết không tồn tại');
        }
        $Update=[
            'title'=>$request->title,
            'image'=>$request->image,
            'summary'=>$request->summary,
            'content'=>$request->content,
            // 'created_at'=>date('Y-m-d H:i:s'),
            // 'id_user'=> Auth::id(),
            //'groupNew_id'=>$request->groupNew_id,
          ];
        $this->news->updateNews($Update,$id);
        return redirect()->route('news-A.yourList')->with('msg','Cập nhập thành công');
    }
    public function NewsConfirm()
    {
        $newslists=$this->news->getAllConFirm();
        $errormessage="Vui lòng kiểm tra dữ liệu vào";
        return view('pages.post',compact('newslists','errormessage'));
    }
    public function NewsDetail($id)
    {
        $newslists=$this->news->detailNews($id);
        $errormessage="Vui lòng kiểm tra dữ liệu vào";
        return view('pages.detail',compact('newslists','errormessage'));
    }
}

