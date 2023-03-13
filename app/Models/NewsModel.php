<?php

namespace App\Models;
use DB;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NewsModel extends Model
{
    use HasFactory;
    protected $table="tb_news";
    public function getall(){
        return DB::table($this->table)
        ->select('tb_news.*','tb_user.name as userID','group_news.name as status')
        ->join('tb_user','tb_user.id','=','tb_news.id_user')
        ->join('group_news','group_news.id','=','tb_news.groupNew_id')
        ->get();
    }
    public function getallById($id){
        return DB::table($this->table)
        ->where('id_user',$id)
        ->select('tb_news.*','tb_user.name as userID','group_news.name as status')
        ->join('tb_user','tb_user.id','=','tb_news.id_user')
        ->join('group_news','group_news.id','=','tb_news.groupNew_id')
        ->get();
    }
    public function detailNews($id){
        return DB::table($this->table)
        ->select('tb_news.*','tb_user.name as userID','group_news.name as status')
        ->join('tb_user','tb_user.id','=','tb_news.id_user')
        ->join('group_news','group_news.id','=','tb_news.groupNew_id')
            ->where('id', $id)
            ->first();
    }
    public function add($data){
        return DB::table($this->table)->insert($data);
    }
    public function editNews($id){
        return DB::select('select * from '.$this->table.' where id = ?', [$id]);
    }
    public function updateNews($data,$id){
        return DB::table($this->table)->where('id',$id)->update($data);
    }
    public function deleteNews($id){
        return DB::table($this->table)->where('id',$id)->delete();
    }
}
