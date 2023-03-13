<?php
use App\Models\Group_UserModel;
use App\Models\Group_NewsModel;
function getGroupUsers(){
    $record=new Group_UserModel;
    return $record->getall();
}
function getGroupNews(){
    $record=new Group_NewsModel;
    return $record->getall();
}
