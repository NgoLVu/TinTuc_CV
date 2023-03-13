<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name'=>'required',
            'email'=>'required',
            'password'=>'required|min:6|max:32',
            'groupUser_id'=>'required'
        ];
    }
    public function messages(){
        return [
            'required'=>':attribute bắt buộc phải nhập',
            'password.min'=>':attribute không được nhỏ hơn 6 ký tự',
            'password.max'=>':attribute không được lớn hơn 32 ký tự',
        ];
    }
    public function attributes(){
        return [
            'name'=>'Tên người dùng',
            'email'=>'Email',
            'password'=>'mật khẩu',
            'groupUser_id'=>'nhóm người dùng'
        ];
    }
}
