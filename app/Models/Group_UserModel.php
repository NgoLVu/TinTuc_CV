<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use DB;
class Group_UserModel extends Model
{
    use HasFactory;
    protected $table="group_users";
    public function getall(){
        return DB::table($this->table)->get();
    }
    // public function add($data){
    //     return DB::table($this->table)->insert($data);
    // }
    // public function edit($id){
    //     return DB::select('select * from'.$this->table.'where id = ?', [$id]);
    // }
    // public function update($data,$id){
    //     return DB::table($this->table)->where('id',$id)->update($data);
    // }
    // public function delete($id){
    //     return DB::table($this->table)->where('id',$id)->delete();
    // }
}
