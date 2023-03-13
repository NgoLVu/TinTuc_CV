<?php

namespace App\Models;
use App\Models\Group_UserModel;
use DB;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserModel extends Model
{
    use HasFactory;
    protected $table="tb_user";
    public function getall(){
        return DB::table($this->table)
        ->select('tb_user.*','group_users.name as group_name')
        ->join('group_users','tb_user.groupUser_id','=','group_users.id')
        ->get();
    }
    public function add($data){
        return DB::table($this->table)->insert($data);
    }
    public function editUser($id){
        return DB::select('select * from '.$this->table.' where id = ?', [$id]);
    }
    public function updateUser($data,$id){
        return DB::table($this->table)->where('id',$id)->update($data);
    }
    public function deleteUser($id){
        return DB::transaction(function () use ($id) {
            DB::table('tb_news')->where('id_user',$id)->delete();
            DB::table($this->table)->where('id',$id)->delete();
        });
    }
}
