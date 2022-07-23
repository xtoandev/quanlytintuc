create database quanlytintuc;

use quanlytintuc;


CREATE TABLE quyen(
  maquyen bigint NOT NULL PRIMARY KEY auto_increment,
  tenquyen VARCHAR(255) NOT NULL
);

CREATE TABLE taikhoan (
  mataikhoan bigint NOT NULL PRIMARY KEY auto_increment,
  tendangnhap VARCHAR(150) NOT NULL,
  matkhau VARCHAR(150) NOT NULL,
  maquyen bigint NOT NULL,
  trangthai int NOT NULL,
  ngaysinh TIMESTAMP NULL,
  email VARCHAR(255) NULL
);
ALTER TABLE taikhoan ADD CONSTRAINT fk_taikhoan_quyen FOREIGN KEY (maquyen) REFERENCES quyen(maquyen);

CREATE TABLE chudelon (
  machude bigint NOT NULL PRIMARY KEY auto_increment,
  tenchude VARCHAR(255) NULL
);

CREATE TABLE chudecon (
  machudecon bigint NOT NULL PRIMARY KEY auto_increment,
  machude bigint,
  tenchudecon VARCHAR(255) NULL
);
ALTER TABLE chudecon ADD CONSTRAINT fk_chudecon_chude FOREIGN KEY (machude) REFERENCES chudelon(machude);

CREATE TABLE baiviet (
  mabaiviet bigint NOT NULL PRIMARY KEY auto_increment,
  tieude VARCHAR(255) NULL,
  mataikhoan bigint NOT NULL,
  mota TEXT NULL,
  noidung TEXT NULL,
  anhnen VARCHAR(255) NULL,
  hinhanh VARCHAR(255) NULL,
  linkbaiviet VARCHAR(255) NULL,
  ngaydang TIMESTAMP NULL
);

ALTER TABLE baiviet ADD CONSTRAINT fk_baiviet_taikhan FOREIGN KEY (mataikhoan) REFERENCES taikhoan(mataikhoan);

CREATE TABLE chitietchude (
  mabaiviet bigint NOT NULL PRIMARY KEY auto_increment,
  machude bigint NOT NULL
);
ALTER TABLE chitietchude ADD CONSTRAINT fk_chitietchude_baiviet FOREIGN KEY (mabaiviet) REFERENCES baiviet(mabaiviet);

CREATE TABLE binhluan(
  mabinhluan bigint NOT NULL PRIMARY KEY auto_increment,
  mataikhoan bigint NOT NULL,
  mabaiviet bigint NOT NULL,
  noidung TEXT NULL,
  ngaygui TIMESTAMP NULL
);
ALTER TABLE binhluan ADD CONSTRAINT fk_binhluan_taikhan FOREIGN KEY (mataikhoan) REFERENCES taikhoan(mataikhoan);
