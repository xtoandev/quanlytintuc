#create database quanlytintuc;

use quanlytintuc;


CREATE TABLE quyen(
  maquyen bigint NOT NULL PRIMARY KEY auto_increment,
  tenquyen VARCHAR(255) NOT NULL
);

CREATE TABLE taikhoan (
  mataikhoan bigint NOT NULL PRIMARY KEY auto_increment,
  tendangnhap VARCHAR(150) NOT NULL UNIQUE,
  matkhau VARCHAR(150) NOT NULL,
  maquyen bigint NOT NULL,
  hovaten VARCHAR(255) NOT NULL,
  ngaysinh Date NULL,
  email VARCHAR(255) NULL,
  trangthai int NOT NULL
);
ALTER TABLE taikhoan ADD CONSTRAINT fk_taikhoan_quyen FOREIGN KEY (maquyen) REFERENCES quyen(maquyen);

CREATE TABLE chude (
  machude bigint NOT NULL PRIMARY KEY auto_increment,
  tenchude VARCHAR(255) NOT NULL
);


CREATE TABLE baiviet (
  mabaiviet bigint NOT NULL PRIMARY KEY auto_increment,
  tieude VARCHAR(255) NOT NULL,
  mataikhoan bigint NULL,
  mota TEXT NOT NULL,
  noidung TEXT NOT NULL,
  anhnen VARCHAR(255) NOT NULL,
  hinhanh VARCHAR(255) NULL,
  linkbaiviet VARCHAR(255) NULL,
  ngaydang Date NOT NULL,
  luotxem int NULL,
  trangthai int NOT NULL
);

ALTER TABLE baiviet ADD CONSTRAINT fk_baiviet_taikhan FOREIGN KEY (mataikhoan) REFERENCES taikhoan(mataikhoan);

CREATE TABLE chitietchude (
  mabaiviet bigint NOT NULL ,
  machude bigint NOT NULL
);
ALTER TABLE chitietchude ADD CONSTRAINT pk_chitietchude PRIMARY KEY (mabaiviet,machude);
ALTER TABLE chitietchude ADD CONSTRAINT fk_chitietchude_baiviet FOREIGN KEY (mabaiviet) REFERENCES baiviet(mabaiviet);


CREATE TABLE binhluan(
  mabinhluan bigint NOT NULL PRIMARY KEY auto_increment,
  mataikhoan bigint NOT NULL,
  mabaiviet bigint NOT NULL,
  noidung TEXT NOT NULL,
  ngaygui Date NOT NULL
);
ALTER TABLE binhluan ADD CONSTRAINT fk_binhluan_taikhan FOREIGN KEY (mataikhoan) REFERENCES taikhoan(mataikhoan);


insert into quyen(tenquyen) values('admin');
insert into quyen(tenquyen) values('nguoidung');

insert into taikhoan(tendangnhap ,matkhau ,maquyen ,hovaten ,trangthai) values('admin','123',1,'Phạm Xuân Toán',1);
insert into taikhoan(tendangnhap ,matkhau ,maquyen ,hovaten ,trangthai) values('xuantoan','123',2,'Phạm Xuân Toán',1);
insert into taikhoan(tendangnhap ,matkhau ,maquyen ,hovaten ,trangthai) values('thanhtri','123',2,'Lê Thanh Trí',1);
insert into taikhoan(tendangnhap ,matkhau ,maquyen ,hovaten ,trangthai) values('quocviet','123',2,'Nguyễn Quốc VIệt',1);


insert into chude(tenchude) values('Mới');
insert into chude(tenchude) values('Nổi bật');
insert into chude(tenchude) values('Thời sự');
insert into chude(tenchude) values('Giáo dục');
insert into chude(tenchude) values('Thế giới');
insert into chude(tenchude) values('Tài chính-Kinh doanh');
insert into chude(tenchude) values('Đời sống');
insert into chude(tenchude) values('Văn hóa');
insert into chude(tenchude) values('Giải trí');
insert into chude(tenchude) values('Giới trẻ');
insert into chude(tenchude) values('Giáo dục');
insert into chude(tenchude) values('Thể thao');
insert into chude(tenchude) values('Sức khỏe');
insert into chude(tenchude) values('Công nghệ-Game');



insert into baiviet (tieude ,mataikhoan ,mota ,noidung ,anhnen,ngaydang,trangthai) 
values('TP.HCM đã công bố điểm thi tốt nghiệp THPT, bạn đọc tra cứu tại đây'
,2
,'Đúng 0 giờ ngày 24.7, Sở GD- ĐT TP.HCM công bố điểm thi tốt nghiệp THPT năm 2022 của gần 85.000 thí sinh dự thi.'
,'Để chấm bài thi của 85.000 thí sinh dự thi, Sở GD-ĐT TP.HCM đã huy động 405 cán bộ, giáo viên tham gia Ban chấm thi tự luận và 92 giáo viên tham gia Ban chấm thi trắc nghiệm.'
,'https://image.thanhnien.vn/w2048/Uploaded/2022/krlqcqjwq/2022_07_23/hinh-thi-9458.jpg'
,'2022-07-24'
,'1');

insert into baiviet (tieude ,mataikhoan ,mota ,noidung ,anhnen,ngaydang,trangthai) 
values('Phạt đến 1 tỉ đồng nếu nhập khẩu phế liệu chứa chất phóng xạ'
,3
,'Chính phủ vừa ban hành Nghị định số 45/2022/NĐ-CP (Nghị định 45) quy định về xử phạt vi phạm hành chính trong lĩnh vực bảo vệ môi trường. Trong đó, quy định phạt đến 1 tỉ đồng với hành vi nhập khẩu phế liệu chứa chất phóng xạ.'
,'Bên cạnh đó, có thể áp dụng các hình thức phạt bổ sung: tước quyền sử dụng có thời hạn đối với: giấy phép môi trường; giấy chứng nhận đủ điều kiện hoạt động dịch vụ quan trắc môi trường; giấy phép tiếp cận nguồn gen; giấy phép khảo nghiệm sinh vật biến đổi gen…

Hoặc đình chỉ hoạt động có thời hạn; tịch thu tang vật, phương tiện dùng để vi phạm hành chính; khôi phục lại tình trạng ban đầu; phá dỡ công trình, thiết bị lắp đặt vi phạm…

Thời hiệu xử phạt vi phạm hành chính trong lĩnh vực bảo vệ môi trường là 2 năm.

Với các hành vi được đánh giá là nghiêm trọng như nhập khẩu phế liệu chứa chất phóng xạ; nhập khẩu phế liệu không thuộc danh mục phế liệu được phép nhập khẩu… sẽ bị phạt tiền từ 900 triệu đồng đến 1 tỉ đồng.'
,'https://image.thanhnien.vn/w2048/Uploaded/2022/rkwagt/2022_07_25/phelieu-8350.jpg'
,'2022-07-25'
,'1');

insert into baiviet (tieude ,mataikhoan ,mota ,noidung ,anhnen,ngaydang,trangthai) 
values('Triển vọng mới cho cây đậu nành Việt Nam'
,4
,'Vinasoy đang sở hữu 1.533 nguồn gen đậu nành quý không biến đổi gen (non-GMO). Từ nguồn gen quý này, Vinasoy đã và đang lai tạo được giống chất lượng, năng suất cao gấp đôi các giống truyền thống. Điều này mở ra cơ hội lớn cho việc khôi phục sản xuất, chủ động nguồn cung trong nước nhất là nguồn cung đậu nành cho việc chế biến thực phẩm.'
,'Nụ cười tươi trên cánh đồng Cư Jút
Những ngày đầu tháng 7, người dân Hợp tác xã Sản xuất đậu nành Nam Dong (Cư Jút, Đắk Nông) đang đếm ngược đến ngày thu hoạch. Chị Lê Thị Hạnh, có đến 1,5 ha trồng đậu nành, tâm sự: “Trước đây trồng đậu nành truyền thống năng suất rất thấp, chỉ khoảng 1,7 tấn/ha. Năm nay tôi trồng giống đậu nành Vinasoy 02-NS, dù chỉ sắp đến ngày thu hoạch nhưng với kinh nghiệm gần 30 năm trồng đậu nành thì hiện nay có thể ước tính năng suất ít nhất cũng đạt trên 3 tấn/ha. Mình nhìn thấy số lượng quả trên cây rất nhiều, quả đồng đều, tỷ lệ quả đạt 3 hạt cao và không bị lép. Thêm một ưu điểm là giống này lại ít sâu bệnh. Năm nay lại thuận lợi là mưa nhiều nên rất nhẹ phân thuốc và công chăm sóc. Vụ này chi phí đầu tư kể cả công thu hoạch ước khoảng 700.000 - 800.000 đồng/ha. Đầu ra đã được doanh nghiệp ký hợp đồng bao tiêu với giá cao hơn giá thị trường. Năm nay coi như trồng đậu nành ở đây vừa trúng mùa lại được giá”. Ông Nguyễn Văn Trung, Giám đốc Hợp tác xã Sản xuất đậu nành Nam Dong, cho biết: “Hợp tác xã có 115 xã viên với diện tích 150 ha đã hợp tác với Công ty Vinasoy trồng đậu nành nhiều năm qua. Sự hợp tác đã mang lại hiệu quả cao trong sản xuất và cả kinh tế nên bà con rất phấn khởi”.

Còn ông Hồ Sơn, Trưởng phòng NN-PTNT huyện Cư Jút, cho biết thêm: “Địa phương có tiềm năng lớn với các loại cây họ đậu, trước đây nổi tiếng với cây đậu nành hoa trắng. Nhưng sau quá trình canh tác nhiều năm đã bị thoái hóa giảm cả chất lượng và năng suất. Giống đậu nành Vinasoy 02-NS được lai tạo từ giống Cư Jút hoa trắng bản địa với giống mới có năng suất cao và chất lượng đậu nành vẫn giữ được hương vị thơm ngon truyền thống”.'
,'https://image.thanhnien.vn/w2048/Uploaded/2022/jop…2_07_06/hinh-anh-chi-hanh-tren-canh-dong-6548.jpg'
,'2022-07-25'
,'1');

insert into baiviet (tieude ,mataikhoan ,mota ,noidung ,anhnen,ngaydang,trangthai) 
values('TP.HCM đã công bố điểm thi tốt nghiệp THPT, bạn đọc tra cứu tại đây'
,2
,'Đúng 0 giờ ngày 24.7, Sở GD- ĐT TP.HCM công bố điểm thi tốt nghiệp THPT năm 2022 của gần 85.000 thí sinh dự thi.'
,'Để chấm bài thi của 85.000 thí sinh dự thi, Sở GD-ĐT TP.HCM đã huy động 405 cán bộ, giáo viên tham gia Ban chấm thi tự luận và 92 giáo viên tham gia Ban chấm thi trắc nghiệm.'
,'https://image.thanhnien.vn/w2048/Uploaded/2022/krlqcqjwq/2022_07_23/hinh-thi-9458.jpg'
,'2022-07-24'
,'1');

insert into chitietchude (mabaiviet ,machude ) values(1,1);
insert into chitietchude (mabaiviet ,machude ) values(1,4);
insert into chitietchude (mabaiviet ,machude ) values(2,6);
insert into chitietchude (mabaiviet ,machude ) values(2,2);
insert into chitietchude (mabaiviet ,machude ) values(3,1);
insert into chitietchude (mabaiviet ,machude ) values(3,5);
insert into chitietchude (mabaiviet ,machude ) values(4,2);
insert into chitietchude (mabaiviet ,machude ) values(4,8);
