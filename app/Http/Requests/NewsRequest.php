<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class NewsRequest extends FormRequest
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
            'title'=>'required',
            'image'=>'required',
            'summary'=>'required',
            'content'=>'required',
            'id_user'=>'required',
            'groupNew_id'=>'required'
        ];
    }
    public function messages(){
        return [
            'required'=>':attribute bắt buộc phải nhập',
        ];
    }
    public function attributes(){
        return [
            'title'=>'Tiêu đề',
            'image'=>'Hình ảnh',
            'summary'=>'Tóm tắt',
            'content'=>'Nội dung',
            'id_user'=>'người dùng',
            'groupNew_id'=>'Trạng thái'
        ];
    }
}
