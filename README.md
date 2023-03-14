<pre> 
Project web tin tức ứng tuyển:
csdl:
bảng user:id,name,email,password,groupUser_id(0);//với nhóm người dùng mặc định là 0
bảng News:id,tilte,summary,content,created_at,user_id,groupNew_id(0);//với nhóm bài viết mặc định là 0
bảng nhóm người dùng:(id,name) :admin(1),user(0);
bảng nhóm bài viết: (id,name):nhóm chưa xác nhận (0),nhóm xác nhận (1);
Sơ đồ quan hệ:
-Bảng user có khóa ngoại (n-1) với bảng groupUser ; 1 nhóm có nhiều người dùng
-Bảng news có khóa ngoại (n-1) với bảng groupNews,user; 1 người có nhiều bài viết,1 nhóm có nhiều bài viết
Truy vấn:
::Tự tạo database và table trong mysql và id sử dụng auto:
-Sử dụng truy vấn thông thường:
User:
	+Thêm:Insert into user(id,hoten,email,password,groupUser_id) value ("","hoten","email","password","groupUser_id");
	+Sửa/Cập nhập:Update user set name(với đổi tên người dùng),password(đổi mật khẩu) where id="id sửa";
	+Xóa:detete from user where id="id can xoa";
	+Hiện thị có điều kiện:select*from user where groupUser_id="";(khi chạy trên web thì không có chức năng xóa,sửa đối với điều kiện là groupUser_id(1)chỉ được thực hiện trên server)
Group(bảng này dùng cho  2 bảng nhóm người dùng và nhóm bài viết):	
	+Thêm:insert into group value ("","name"); 
	+Sửa:update group set name where id="id sửa";
	+Xóa:detete from group where id="id xóa";
	+Hiển thị:select*from group;
News:
	+Thêm sửa xóa như các bảng trên
	+Hiển thị:đối với admin sẽ hiện thị cả,còn user thì chỉ hiện thị mỗi bài của mình
-Sử dụng query builder trong laravel:
Table:User,News,Group(cả 2 bảng nhóm user,news):
	+Thêm: DB::table($this->table)->insert($data);
	+Sửa: DB::table($this->table)->where('id',$id)->update($data);
	+Xóa: DB::table($this->table)->where('id',$id)->delete();
	+Hiển thị:DB::table($this->table)->get();
</pre>
