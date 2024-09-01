# tạo database
create DATABASE node44
use node44
#cách chạy :ctrl +enter
# tạo table 
# tạo table users 
# không được đặt trùng tên với keyword 
# không có các ký tự đặt biệt :space ,%^&*
# tên table không được viêt in hoa 
create table users (
 user_id INT,
 full_name VARCHAR(50),
 email VARCHAR(50),
 pass_word VARCHAR(255),
 age INT
)

#tạo data như thế nào 
-- Insert data into the users table
INSERT INTO users (user_id, full_name, email, pass_word)
VALUES 
INSERT INTO users (user_id, full_name, email, pass_word, age) VALUES
(1, 'John Doe', 'john.doe@example.com', 'password123', 30),
(2, 'Jane Smith', 'jane.smith@example.com', 'password456', 25),
(3, 'Alice Johnson', 'alice.johnson@example.com', 'password789', 28),
(4, 'Bob Brown', 'bob.brown@example.com', 'password101', 32),
(5, 'Charlie Davis', 'charlie.davis@example.com', 'password202', 27),
(6, 'Diana Evans', 'diana.evans@example.com', 'password303', 29),
(7, 'Evan Foster', 'evan.foster@example.com', 'password404', 31),
(8, 'Fiona Green', 'fiona.green@example.com', 'password505', 26),
(9, 'George Harris', 'george.harris@example.com', 'password606', 33),
(10, 'Hannah Irving', 'hannah.irving@example.com', 'password707', 24),
(11, 'Ian Jackson', 'ian.jackson@example.com', 'password808', 35),
(12, 'Julia King', 'julia.king@example.com', 'password909', 22),
(13, 'Kevin Lewis', 'kevin.lewis@example.com', 'password010', 34),
(14, 'Laura Miller', 'laura.miller@example.com', 'password111', 23),
(15, 'Michael Nelson', 'michael.nelson@example.com', 'password212', 36),
(16, 'Nina Owens', 'nina.owens@example.com', 'password313', 21),
(17, 'Oscar Perez', 'oscar.perez@example.com', 'password414', 37),
(18, 'Paula Quinn', 'paula.quinn@example.com', 'password515', 20),
(19, 'Quincy Roberts', 'quincy.roberts@example.com', 'password616', 38),
(20, 'Rachel Scott', 'rachel.scott@example.com', 'password717', 39);

#tương tác với data 
#Query (lấy dữ liệu )
thêm,xóa sửa 

select *from users 
SELECT full_name as 'Họ tên' from users 

#thêm column tuổi 

alter table users 
add column age INT

#đổi kiểu dữ liệu cho column full_name
alter table users
MODIFY COLUMN full_name VARCHAR(255)

#tìm những người có tuổi từ 25-30
#c1
select *from users 
where age between 25 and 30

#c2
select *from users 
where age <=30 and age >=25

#filter những người tên john

select *from users 
where full_name like '%John%' and age BETWEEN 25 and 29

#sắp xếp tuổi theo thứ tự giảm dần
select *from users
order BY age asc
limit 5

#thêm ràng buộc constraint cho column 
alter table users 
modify column full_name VARCHAR(255) not null ,
modify column email VARCHAR(50) not null ,
modify column pass_word VARCHAR(255) not null 

thêm khóa chính (primary key) cho column user_id 
alter table users 
modify column user_id int primary key auto_increment , 

#update data 
update users
set full_name ='Gia Bảo'
where user_id=1

select *from users
where user_id=1


#delete data
#hard delete -xóa hẳn data khỏi hệ thống
delete from users
where user_id=2 

#soft delete -> thêm flag is_deleted để không show data
alter table users
add column is_deleted int not NULL DEFAULT 1

#order by age desc
#limit 1


#texst gop commit 1 