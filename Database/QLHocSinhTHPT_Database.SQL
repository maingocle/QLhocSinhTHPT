/* Da chinh sua hoan chinh */
USE master
GO
IF EXISTS
(
	SELECT * 
	FROM   master..sysdatabases 
	WHERE  name = N'QLHocSinhTHPT'
)
DROP DATABASE QLHocSinhTHPT
GO

CREATE DATABASE QLHocSinhTHPT
ON
(
	NAME		= 'QLHocSinhTHPT',
	FILENAME	= 'C:\QLHocSinhTHPT.MDF',
	SIZE		= 20,
	MAXSIZE		= 100,
	FILEGROWTH	= 5
)
GO

USE QLHocSinhTHPT
GO
--===================================================================================================================================================
/* Da chinh sua hoan chinh */
CREATE TABLE LOAINGUOIDUNG
(
	MaLoai		VARCHAR (6)		NOT NULL	PRIMARY KEY,
	TenLoaiND	NVARCHAR (30)	NOT NULL
)

INSERT INTO LOAINGUOIDUNG VALUES('LND001','Ban giam hieu')
INSERT INTO LOAINGUOIDUNG VALUES('LND002','Giao vien')
INSERT INTO LOAINGUOIDUNG VALUES('LND003','Nhan vien giao vu')
-----------------------------------------------------------------------------------------------------------------------------------------------------
/* Da chinh sua hoan chinh */
CREATE TABLE  NGUOIDUNG
(
	MaND 		VARCHAR (6) 	NOT NULL	PRIMARY KEY,
	MaLoai		VARCHAR (6)		NOT NULL,
	TenND		NVARCHAR (30)	NOT NULL,
	TenDNhap	VARCHAR (30)	NOT NULL,
	MatKhau		VARCHAR (30)	NOT NULL,
	
	CONSTRAINT F_ND_LND FOREIGN KEY(MaLoai) 	REFERENCES LOAINGUOIDUNG(MaLoai)
)

INSERT INTO NGUOIDUNG VALUES('ND0001','LND001','Mai Ngoc Le',	'admin',		'maingocle')
INSERT INTO NGUOIDUNG VALUES('ND0002','LND002','Tran Thi Huyen',	'tranhuyen',	'tranhuyen')
INSERT INTO NGUOIDUNG VALUES('ND0003','LND003','Nguyen Thi Lan',	'nguyenlan',	'nguyenlan')
--===================================================================================================================================================
/* Da chinh sua hoan chinh */
CREATE TABLE DANTOC
(
	MaDanToc	VARCHAR (6)		NOT NULL	PRIMARY KEY,
	TenDanToc	NVARCHAR (30)	NOT NULL
)

INSERT INTO DANTOC VALUES('DT0001','Kinh')
INSERT INTO DANTOC VALUES('DT0002','Hoa')
INSERT INTO DANTOC VALUES('DT0003','Khome')
INSERT INTO DANTOC VALUES('DT0004','Cham')
-----------------------------------------------------------------------------------------------------------------------------------------------------
/* Da chinh sua hoan chinh */
CREATE TABLE TONGIAO
(
	MaTonGiao	VARCHAR (6)		NOT NULL	PRIMARY KEY,
	TenTonGiao	NVARCHAR (30)	NOT NULL
)

INSERT INTO TONGIAO VALUES('TG0001','Khong')
INSERT INTO TONGIAO VALUES('TG0002','Phat')
INSERT INTO TONGIAO VALUES('TG0003','PG Hoa Hao')
INSERT INTO TONGIAO VALUES('TG0004','Thien Chua')
INSERT INTO TONGIAO VALUES('TG0005','Tin Lanh')
--===================================================================================================================================================
/* Da chinh sua hoan chinh */
CREATE TABLE NAMHOC
(
	MaNamHoc	VARCHAR (6)		NOT NULL	PRIMARY KEY,
	TenNamHoc	VARCHAR (30)	NOT NULL
)

INSERT INTO NAMHOC VALUES('NH0708','2007 - 2008')
INSERT INTO NAMHOC VALUES('NH0809','2008 - 2009')
-----------------------------------------------------------------------------------------------------------------------------------------------------
/* Da chinh sua hoan chinh */
CREATE TABLE HOCKY
(
	MaHocKy		VARCHAR (3)		NOT NULL	PRIMARY KEY,
	TenHocKy	NVARCHAR (30)	NOT NULL,
	HeSo		INT
)

INSERT INTO HOCKY VALUES('HK1','Hoc ky 1', 1)
INSERT INTO HOCKY VALUES('HK2','Hoc ky 2', 2)
--===================================================================================================================================================
/* Da chinh sua hoan chinh */
CREATE TABLE KHOILOP
(
	MaKhoiLop	VARCHAR (6)		NOT NULL	PRIMARY KEY,
	TenKhoiLop	NVARCHAR (30)	NOT NULL
)

INSERT INTO KHOILOP VALUES('KHOI10','Khoi 10')
INSERT INTO KHOILOP VALUES('KHOI11','Khoi 11')
INSERT INTO KHOILOP VALUES('KHOI12','Khoi 12')
-----------------------------------------------------------------------------------------------------------------------------------------------------
/* Da chinh sua hoan chinh */
CREATE TABLE MONHOC
(
	MaMonHoc	VARCHAR (6)		NOT NULL	PRIMARY KEY,
	TenMonHoc	NVARCHAR (30)	NOT NULL,
	SoTiet		INT				NOT NULL,
	HeSo		INT				NOT NULL
)

INSERT INTO MONHOC VALUES('MH0001','Toan Hoc',		90,	2)
INSERT INTO MONHOC VALUES('MH0002','Vat Ly',		60,	1)
INSERT INTO MONHOC VALUES('MH0003','Hoa Hoc',		60,	1)
INSERT INTO MONHOC VALUES('MH0004','Sinh Hoc',		60,	1)
INSERT INTO MONHOC VALUES('MH0005','Ngu Van',		90,	2)
INSERT INTO MONHOC VALUES('MH0006','Lich Su',		45,	1)
INSERT INTO MONHOC VALUES('MH0007','Dia Ly',		45,	1)
INSERT INTO MONHOC VALUES('MH0008','Anh Van',		45,	1)
INSERT INTO MONHOC VALUES('MH0009','GD Cong Dan',	30,	1)
INSERT INTO MONHOC VALUES('MH0010','Tin Hoc',		30,	1)
INSERT INTO MONHOC VALUES('MH0011','The Duc',		30,	1)
INSERT INTO MONHOC VALUES('MH0012','Quoc Phong',	30,	1)
INSERT INTO MONHOC VALUES('MH0013','Cong Nghe',		30,	1)
--===================================================================================================================================================
/* Da chinh sua hoan chinh */
CREATE TABLE HOCLUC
(
	MaHocLuc		VARCHAR (6)		NOT NULL	PRIMARY KEY,
	TenHocLuc		NVARCHAR (30)	NOT NULL,
	DiemCanDuoi		FLOAT			NOT NULL,
	DiemCanTren		FLOAT			NOT NULL,
	DiemKhongChe	FLOAT			NOT NULL
)

INSERT INTO HOCLUC VALUES('HL0001','Gioi',		8.0,	10.0,	6.5)
INSERT INTO HOCLUC VALUES('HL0002','Kha',		6.5,	7.9,	5.0)
INSERT INTO HOCLUC VALUES('HL0003','Trung binh',5.0,	6.4,	3.5)
INSERT INTO HOCLUC VALUES('HL0004','Yeu',		3.5,	4.9,	2.0)
INSERT INTO HOCLUC VALUES('HL0005','Kem',		0.0,	3.4,	0.0)
-----------------------------------------------------------------------------------------------------------------------------------------------------
/* Da chinh sua hoan chinh */
CREATE TABLE HANHKIEM
(
	MaHanhKiem		VARCHAR (6)		NOT NULL	PRIMARY KEY,
	TenHanhKiem		NVARCHAR (30)	NOT NULL
)

INSERT INTO HANHKIEM VALUES('HK0001','Tot')
INSERT INTO HANHKIEM VALUES('HK0002','Kha')
INSERT INTO HANHKIEM VALUES('HK0003','Trung binh')
INSERT INTO HANHKIEM VALUES('HK0004','Yeu')
-----------------------------------------------------------------------------------------------------------------------------------------------------
/* Da chinh sua hoan chinh */
CREATE TABLE KETQUA
(
	MaKetQua	VARCHAR (6)		NOT NULL	PRIMARY KEY,
	TenKetQua	NVARCHAR (30)	NOT NULL
)

INSERT INTO KETQUA VALUES('KQ0001','Len lop')
INSERT INTO KETQUA VALUES('KQ0002','Thi lai')
INSERT INTO KETQUA VALUES('KQ0003','Ren luyen he')
INSERT INTO KETQUA VALUES('KQ0004','O lai')
--===================================================================================================================================================
/* Da chinh sua hoan chinh */
CREATE TABLE NGHENGHIEP
(
	MaNghe		VARCHAR (6)		NOT NULL	PRIMARY KEY,
	TenNghe		NVARCHAR (30)	NOT NULL
)

INSERT INTO NGHENGHIEP VALUES('NN0001','Noi tro')
INSERT INTO NGHENGHIEP VALUES('NN0002','Giao vien')
INSERT INTO NGHENGHIEP VALUES('NN0003','Cong nhan')
INSERT INTO NGHENGHIEP VALUES('NN0004','Lam ruong')
INSERT INTO NGHENGHIEP VALUES('NN0005','Buon ban')
-----------------------------------------------------------------------------------------------------------------------------------------------------
/* Da chinh sua hoan chinh */
CREATE TABLE GIAOVIEN
(
	MaGiaoVien	VARCHAR (6)		NOT NULL	PRIMARY KEY,
	TenGiaoVien NVARCHAR (30)	NOT NULL,
	DiaChi		NVARCHAR (50)	NOT NULL,
	DienThoai	VARCHAR (15)	NOT NULL,
	MaMonHoc	VARCHAR (6)		NOT NULL,
	
	-- (1 khoa ngoai)
	CONSTRAINT F_GV_MH FOREIGN KEY(MaMonHoc)	REFERENCES MONHOC(MaMonHoc)
)

INSERT INTO GIAOVIEN VALUES('GV0001','Mai Ngoc Le',	'100 Tran Hung Dao, Ninh Binh',	'0975058876','MH0001')
INSERT INTO GIAOVIEN VALUES('GV0002','Tran Thi Huyen',		'Lac Quoi - Tri Ton',				'0976630315','MH0002')
INSERT INTO GIAOVIEN VALUES('GV0003','Nguyen Thi Lan',	'10C Nguyen Trung Truc, Chau Doc',	'0699015456','MH0003')
INSERT INTO GIAOVIEN VALUES('GV0004','Lam Trung Toan',		'Long Dien B, An Phu',				'0845241566','MH0004')
INSERT INTO GIAOVIEN VALUES('GV0005','Huynh Tuc Tri',		'Rach Gia, Kien Giang',				'0123456789','MH0005')
INSERT INTO GIAOVIEN VALUES('GV0006','Le Thi Minh Nguyet',	'000 Long Xuyen, An Giang',			'0123456789','MH0006')
-----------------------------------------------------------------------------------------------------------------------------------------------------
/* Da chinh sua hoan chinh */
CREATE TABLE HOCSINH
(
	MaHocSinh		VARCHAR (6)		NOT NULL	PRIMARY KEY,
	HoTen			NVARCHAR (30)	NOT NULL,
	GioiTinh		BIT,
	NgaySinh		DATETIME,
	NoiSinh			NVARCHAR (50)	NOT NULL,
	MaDanToc		VARCHAR (6)		NOT NULL,
	MaTonGiao		VARCHAR (6)		NOT NULL,
	HoTenCha		NVARCHAR (30)	NOT NULL,
	MaNNghiepCha	VARCHAR (6)		NOT NULL,
	HoTenMe			NVARCHAR (30)	NOT NULL,
	MaNNghiepMe		VARCHAR (6)		NOT NULL,
	
	-- (4 khoa ngoai)
	CONSTRAINT F_HS_DT	FOREIGN KEY(MaDanToc)		REFERENCES DANTOC(MaDanToc),
	CONSTRAINT F_HS_TG	FOREIGN KEY(MaTonGiao)		REFERENCES TONGIAO(MaTonGiao),
	CONSTRAINT F_HS_NNC	FOREIGN KEY(MaNNghiepCha)	REFERENCES NGHENGHIEP(MaNghe),
	CONSTRAINT F_HS_NNM	FOREIGN KEY(MaNNghiepMe)	REFERENCES NGHENGHIEP(MaNghe)
)

INSERT INTO HOCSINH VALUES('HS0001','Nguyen Van Tu','0','01/02/1999','Long Xuyen','DT0001','TG0005','Nguyen Tien Dung',	'NN0005','Nguyen Thi Hoa',	'NN0002')
INSERT INTO HOCSINH VALUES('HS0002','Nguyen Ngoc An','0','01/02/1999','Ben Tre','DT0001','TG0002','Nguyen Minh Tien',	'NN0003','Nguyen Thi Lan',	'NN0001')
INSERT INTO HOCSINH VALUES('HS0003','Le Hoang Anh',	'0','04/15/1999','Cho Moi',	'DT0001','TG0004','Le Van Cong',	'NN0005','Ngo Thi Tu',	'NN0005')
INSERT INTO HOCSINH VALUES('HS0004','Huynh Thien Chi','0','01/02/1999','Dong Thap',	'DT0001','TG0003','Huynh Tu',	'NN0002','Nguyen Thi Lien',	'NN0004')
INSERT INTO HOCSINH VALUES('HS0005','Ly Ngoc Duy','0','01/02/1999','Long Xuyen','DT0001','TG0005','Ly Kiet',	'NN0005','Dinh Thi Hoai',	'NN0002')
INSERT INTO HOCSINH VALUES('HS0006','Huynh Ngoc Diep','1','01/02/1999','Ben Tre','DT0001','TG0002','Huynh An',	'NN0003','Dinh Thu Trang',	'NN0001')
INSERT INTO HOCSINH VALUES('HS0007','Tran Thi Hue',	'1','04/15/1999','Cho Moi','DT0001','TG0004','Tran Van Ha',	'NN0005','Nguyen Thi Hoa',	'NN0005')
INSERT INTO HOCSINH VALUES('HS0008','Nguyen Thanh Huy',	'0','01/02/1999','Dong Thap','DT0001','TG0003','Nguyen Van Tung',	'NN0002','Nguyen Thi Lan',	'NN0004')
INSERT INTO HOCSINH VALUES('HS0009','Tran Phuoc Lap','0','01/02/1999','Long Xuyen',	'DT0001','TG0005','Tran Nghia',	'NN0005','Tran Ngoc Ha',	'NN0002')
INSERT INTO HOCSINH VALUES('HS0010','Truong Thi Nga','1','01/02/1999','Ben Tre','DT0001','TG0002','Truong Van Hao',	'NN0003','Dinh Thi Huong',	'NN0001')
INSERT INTO HOCSINH VALUES('HS0011','Nguyen Thi Nga','1','04/15/1999','Cho Moi','DT0001','TG0004','Nguyen Van Minh',	'NN0005','Dinh Hong Ngoc',	'NN0005')
INSERT INTO HOCSINH VALUES('HS0012','Tran Thi Hong Nghi','1','01/02/1999','Dong Thap','DT0001','TG0003','Tran Ngoc Long',	'NN0002','Nguyen Thi Lan',	'NN0004')
INSERT INTO HOCSINH VALUES('HS0013','Huynh Thi My Ngoc','1','01/02/1999','Long Xuyen','DT0001','TG0005','Huynh Minh',	'NN0005','Nguyen Thi Lan',	'NN0002')
INSERT INTO HOCSINH VALUES('HS0014','Tran Thi My Nhan','1','01/02/1999','Ben Tre','DT0001','TG0002','Tran Viet Lam',	'NN0003','Tran Thi Huyen',	'NN0001')
INSERT INTO HOCSINH VALUES('HS0015','Truong Thi Ngoc Nhung','1','04/15/1999','Cho Moi',	'DT0001','TG0004','Truong Kiet',	'NN0005','Nguyen Thi Phuong',	'NN0005')
INSERT INTO HOCSINH VALUES('HS0016','Huynh Quoc Phuong','0','01/02/1999','Dong Thap','DT0001','TG0003','Huynh Quoc Su',	'NN0002','Bui Tra My',	'NN0004')
INSERT INTO HOCSINH VALUES('HS0017','Ly Ngoc Phuong','1','01/02/1999','Long Xuyen',	'DT0001','TG0005','Ly Viet Hung',	'NN0005','Phung Thi Ngoc',	'NN0002')
INSERT INTO HOCSINH VALUES('HS0018','Nguyen Thi Phuong','1','01/02/1999','Ben Tre',	'DT0001','TG0002','Nguyen Tien Manh',	'NN0003','Nguyen Bich Ngoc',	'NN0001')
INSERT INTO HOCSINH VALUES('HS0019','Nguyen Phu Quoc','0','04/15/1999','Cho Moi','DT0001','TG0004','Nguyen Van Minh',	'NN0005','Nguyen Thu Ha',	'NN0005')
INSERT INTO HOCSINH VALUES('HS0020','Vo Thien Quoc','0','01/02/1999','Dong Thap','DT0001','TG0003','Vo Van Luong',	'NN0002','Bui Minh Nguyet',	'NN0004')
INSERT INTO HOCSINH VALUES('HS0021','Tran Van Rang','0','01/02/1999','Long Xuyen','DT0001','TG0005','Tran Van Ha',	'NN0005','Nguyen Hong Phuc',	'NN0002')
INSERT INTO HOCSINH VALUES('HS0022','Vo Huu Tanh','0','01/02/1999','Ben Tre','DT0001','TG0002','Vo Van Hao',	'NN0003','Nguyen Thi Hong',	'NN0001')
INSERT INTO HOCSINH VALUES('HS0023','Le Minh Tam','0','04/15/1999','Cho Moi','DT0001','TG0004','Le Van Luong',	'NN0005','Vu Thi Ngoc',	'NN0005')
INSERT INTO HOCSINH VALUES('HS0024','Nguyen Duc Tam','0','01/02/1999','Dong Thap','DT0001','TG0003','Nguyen Duc Luong',	'NN0002','Bui Ngoc Truc',	'NN0004')
INSERT INTO HOCSINH VALUES('HS0025','Nguyen Thanh Tam','0','01/02/1999','Long Xuyen','DT0001','TG0005','Nguyen Minh Tien',	'NN0005','Bui Thi Tien',	'NN0002')
INSERT INTO HOCSINH VALUES('HS0026','Tran Ngoc Minh Tan','0','01/02/1999','Ben Tre','DT0001','TG0002','Tran Truong',	'NN0003','Nguyen Thi Hien',	'NN0001')
INSERT INTO HOCSINH VALUES('HS0027','Duong Kim Thanh','1','04/15/1999','Cho Moi','DT0001','TG0004','Duong Lam',	'NN0005','Nguyen Thu Trang',	'NN0005')
INSERT INTO HOCSINH VALUES('HS0028','Nguyen Si Thanh','0','01/02/1999','Dong Thap','DT0001','TG0003','Nguyen Hai Minh',	'NN0002','Nguyen Thi Hien',	'NN0004')
INSERT INTO HOCSINH VALUES('HS0029','Do Thi Bich Thao','1','01/02/1999','Long Xuyen','DT0001','TG0005','Do Thuan',	'NN0005','Nguyen Thi Lan',	'NN0002')
INSERT INTO HOCSINH VALUES('HS0030','Ho Minh Thien','0','01/02/1999','Ben Tre',	'DT0001','TG0002','Ho Van Ha',	'NN0003','Nguyen Ngoc Linh',	'NN0001')
INSERT INTO HOCSINH VALUES('HS0031','Nguyen Thi Anh Thu','1','04/15/1999','Cho Moi','DT0001','TG0004','Nguyen Ngoc Toan',	'NN0005','Nguyen Thi Mai',	'NN0005')
INSERT INTO HOCSINH VALUES('HS0032','Pham Nguyen B.Trinh','1','01/02/1999','Dong Thap','DT0001','TG0003','Pham Minh Hieu',	'NN0002','Nguyen Thi Loan',	'NN0004')
INSERT INTO HOCSINH VALUES('HS0033','Vo Ngoc Trinh','1','01/02/1999','Long Xuyen','DT0001','TG0005','Vo Sy Viet',	'NN0005','Nguyen Ngoc Anh',	'NN0002')
INSERT INTO HOCSINH VALUES('HS0034','Nguyen Huynh Minh Tri','0','01/02/1999','Ben Tre',	'DT0001','TG0002','Nguyen Khac Minh',	'NN0003','Dinh Ngoc Truc',	'NN0001')
INSERT INTO HOCSINH VALUES('HS0035','Do Xuan Trinh','0','04/15/1999','Cho Moi',	'DT0001','TG0004','Do Duc Manh',	'NN0005','Do Thu Dieu',	'NN0005')
INSERT INTO HOCSINH VALUES('HS0036','Nguyen Hieu Trung','0','01/02/1999','Dong Thap','DT0001','TG0003','Nguyen Hieu Hien',	'NN0002','Nguyen Thi Ngoc',	'NN0004')
INSERT INTO HOCSINH VALUES('HS0037','Nguyen Thanh Trung','0','01/02/1999','Long Xuyen',	'DT0001','TG0005','Nguyen Thanh Tung',	'NN0005','Nguyen Thuy Linh',	'NN0002')
INSERT INTO HOCSINH VALUES('HS0038','Tran Thanh Truc','1','01/02/1999','Ben Tre','DT0001','TG0002','Tran Nhat Tan',	'NN0003','Vũ Kim Anh',	'NN0001')
INSERT INTO HOCSINH VALUES('HS0039','Cao Minh Tuan','0','04/15/1999','Cho Moi',	'DT0001','TG0004','Cao Minh Duc',	'NN0005','Dinh Th Uyen',	'NN0005')
INSERT INTO HOCSINH VALUES('HS0040','Nguyen Hoang Tuan','0','01/02/1999','Dong Thap','DT0001','TG0003','Nguyen Van Chau',	'NN0002','Nguyen Phương Duyen',	'NN0004')
INSERT INTO HOCSINH VALUES('HS0041','Truong Minh Tuyen','0','01/02/1999','Long Xuyen','DT0001','TG0005','Truong Van Dat',	'NN0005','Mai Thi Quynh',	'NN0002')
INSERT INTO HOCSINH VALUES('HS0042','Le Thanh Tung','0','01/02/1999','Ben Tre','DT0001','TG0002','Le Trung Hieu',	'NN0003','Nguyen Ngoc Han',	'NN0001')
INSERT INTO HOCSINH VALUES('HS0043','Pham Thi Bich Vi','1','04/15/1999','Cho Moi','DT0001','TG0004','Pham Viet Anh',	'NN0005','Le Ngoc Ai',	'NN0005')
INSERT INTO HOCSINH VALUES('HS0044','Dang Quang Vinh','0','01/02/1999','Dong Thap','DT0001','TG0003','Dang Van Dat',	'NN0002','Le Ngoc Anh',	'NN0004')
INSERT INTO HOCSINH VALUES('HS0045','Nguyen Ngoc Vu','0','01/02/1999','Long Xuyen','DT0001','TG0005','Nguyen Van Duyet',	'NN0005','La Thu Phuong',	'NN0002')
INSERT INTO HOCSINH VALUES('HS0046','Ho Thanh Vu','0','01/02/1999','Ben Tre','DT0001','TG0002','Ho Viet Cuong',	'NN0003','La Ngoc Anh',	'NN0001')
INSERT INTO HOCSINH VALUES('HS0047','Phan Quoc Vuong','0','04/15/1999','Cho Moi','DT0001','TG0004','Phan The Tien',	'NN0005','Vu Thi Nguyet',	'NN0005')
--===================================================================================================================================================
/* Da chinh sua hoan chinh */
CREATE TABLE LOP
(
	MaLop		VARCHAR (10)	NOT NULL	PRIMARY KEY,
	TenLop		NVARCHAR (30)	NOT NULL,
	MaKhoiLop	VARCHAR (6)		NOT NULL,
	MaNamHoc	VARCHAR (6)		NOT NULL,
	SiSo		INT 			NOT NULL,
	MaGiaoVien	VARCHAR (6)		NOT NULL,
	
	-- (3 khoa ngoai)
	CONSTRAINT F_LOP_KL FOREIGN KEY(MaKhoiLop)	REFERENCES KHOILOP(MaKhoiLop),
	CONSTRAINT F_LOP_NH FOREIGN KEY(MaNamHoc)	REFERENCES NAMHOC(MaNamHoc),
	CONSTRAINT F_LOP_GV FOREIGN KEY(MaGiaoVien)	REFERENCES GIAOVIEN(MaGiaoVien)
)
INSERT INTO LOP VALUES('LOP1010708','10A1','KHOI10','NH0708', 35,'GV0006')
INSERT INTO LOP VALUES('LOP1020708','10A2','KHOI10','NH0708', 36,'GV0005')
INSERT INTO LOP VALUES('LOP1030708','10A3','KHOI10','NH0708', 34,'GV0004')
INSERT INTO LOP VALUES('LOP1110708','11A1','KHOI11','NH0708', 37,'GV0003')
INSERT INTO LOP VALUES('LOP1120708','11A2','KHOI11','NH0708', 38,'GV0002')
INSERT INTO LOP VALUES('LOP1210708','12A1','KHOI12','NH0708', 39,'GV0001')

INSERT INTO LOP VALUES('LOP1010809','10A1','KHOI10','NH0809', 39,'GV0001')
INSERT INTO LOP VALUES('LOP1020809','10A2','KHOI10','NH0809', 38,'GV0002')
INSERT INTO LOP VALUES('LOP1030809','10A3','KHOI10','NH0809', 35,'GV0003')
INSERT INTO LOP VALUES('LOP1110809','11A1','KHOI11','NH0809', 40,'GV0004')
INSERT INTO LOP VALUES('LOP1120809','11A2','KHOI11','NH0809', 38,'GV0005')
INSERT INTO LOP VALUES('LOP1210809','12A1','KHOI12','NH0809', 38,'GV0006')
-----------------------------------------------------------------------------------------------------------------------------------------------------
/* Da chinh sua hoan chinh */
CREATE TABLE PHANLOP
(
	MaNamHoc	VARCHAR (6)		NOT NULL,
	MaKhoiLop	VARCHAR (6)		NOT NULL,
	MaLop		VARCHAR (10)	NOT NULL,
	MaHocSinh	VARCHAR (6)		NOT NULL,
	
	PRIMARY KEY(MaNamHoc, MaKhoiLop, MaLop, MaHocSinh),
	
	-- (4 khoa ngoai)
	CONSTRAINT F_PL_NH		FOREIGN KEY(MaNamHoc)	REFERENCES NAMHOC(MaNamHoc),
	CONSTRAINT F_PL_KHOI	FOREIGN KEY(MaKhoiLop)	REFERENCES KHOILOP(MaKhoiLop),
	CONSTRAINT F_PL_LOP		FOREIGN KEY(MaLop)		REFERENCES LOP(MaLop),
	CONSTRAINT F_PL_HS		FOREIGN KEY(MaHocSinh)	REFERENCES HOCSINH(MaHocSinh)
)
INSERT INTO PHANLOP VALUES('NH0708','KHOI10','LOP1010708','HS0001')
INSERT INTO PHANLOP VALUES('NH0708','KHOI10','LOP1010708','HS0002')
INSERT INTO PHANLOP VALUES('NH0708','KHOI10','LOP1010708','HS0003')
INSERT INTO PHANLOP VALUES('NH0708','KHOI10','LOP1010708','HS0004')
INSERT INTO PHANLOP VALUES('NH0708','KHOI10','LOP1010708','HS0005')
INSERT INTO PHANLOP VALUES('NH0708','KHOI10','LOP1010708','HS0006')
INSERT INTO PHANLOP VALUES('NH0708','KHOI10','LOP1010708','HS0007')
INSERT INTO PHANLOP VALUES('NH0708','KHOI10','LOP1010708','HS0008')
INSERT INTO PHANLOP VALUES('NH0708','KHOI10','LOP1010708','HS0009')
INSERT INTO PHANLOP VALUES('NH0708','KHOI10','LOP1010708','HS0010')

INSERT INTO PHANLOP VALUES('NH0708','KHOI10','LOP1020708','HS0011')
INSERT INTO PHANLOP VALUES('NH0708','KHOI10','LOP1020708','HS0012')
INSERT INTO PHANLOP VALUES('NH0708','KHOI10','LOP1020708','HS0013')
INSERT INTO PHANLOP VALUES('NH0708','KHOI10','LOP1020708','HS0014')
INSERT INTO PHANLOP VALUES('NH0708','KHOI10','LOP1020708','HS0015')
INSERT INTO PHANLOP VALUES('NH0708','KHOI10','LOP1020708','HS0016')
INSERT INTO PHANLOP VALUES('NH0708','KHOI10','LOP1020708','HS0017')
INSERT INTO PHANLOP VALUES('NH0708','KHOI10','LOP1020708','HS0018')
INSERT INTO PHANLOP VALUES('NH0708','KHOI10','LOP1020708','HS0019')
INSERT INTO PHANLOP VALUES('NH0708','KHOI10','LOP1020708','HS0020')

INSERT INTO PHANLOP VALUES('NH0708','KHOI11','LOP1110708','HS0021')
INSERT INTO PHANLOP VALUES('NH0708','KHOI11','LOP1110708','HS0022')
INSERT INTO PHANLOP VALUES('NH0708','KHOI11','LOP1110708','HS0023')
INSERT INTO PHANLOP VALUES('NH0708','KHOI11','LOP1110708','HS0024')
INSERT INTO PHANLOP VALUES('NH0708','KHOI11','LOP1110708','HS0025')
INSERT INTO PHANLOP VALUES('NH0708','KHOI11','LOP1110708','HS0026')
INSERT INTO PHANLOP VALUES('NH0708','KHOI11','LOP1110708','HS0027')
INSERT INTO PHANLOP VALUES('NH0708','KHOI11','LOP1110708','HS0028')
INSERT INTO PHANLOP VALUES('NH0708','KHOI11','LOP1110708','HS0029')
INSERT INTO PHANLOP VALUES('NH0708','KHOI11','LOP1110708','HS0030')

INSERT INTO PHANLOP VALUES('NH0708','KHOI11','LOP1120708','HS0031')
INSERT INTO PHANLOP VALUES('NH0708','KHOI11','LOP1120708','HS0032')
INSERT INTO PHANLOP VALUES('NH0708','KHOI11','LOP1120708','HS0033')
INSERT INTO PHANLOP VALUES('NH0708','KHOI11','LOP1120708','HS0034')
INSERT INTO PHANLOP VALUES('NH0708','KHOI11','LOP1120708','HS0035')
INSERT INTO PHANLOP VALUES('NH0708','KHOI11','LOP1120708','HS0036')
INSERT INTO PHANLOP VALUES('NH0708','KHOI11','LOP1120708','HS0037')
INSERT INTO PHANLOP VALUES('NH0708','KHOI11','LOP1120708','HS0038')
INSERT INTO PHANLOP VALUES('NH0708','KHOI11','LOP1120708','HS0039')
INSERT INTO PHANLOP VALUES('NH0708','KHOI11','LOP1120708','HS0040')

INSERT INTO PHANLOP VALUES('NH0708','KHOI12','LOP1210708','HS0041')
INSERT INTO PHANLOP VALUES('NH0708','KHOI12','LOP1210708','HS0042')
INSERT INTO PHANLOP VALUES('NH0708','KHOI12','LOP1210708','HS0043')
INSERT INTO PHANLOP VALUES('NH0708','KHOI12','LOP1210708','HS0044')
INSERT INTO PHANLOP VALUES('NH0708','KHOI12','LOP1210708','HS0045')
INSERT INTO PHANLOP VALUES('NH0708','KHOI12','LOP1210708','HS0046')
INSERT INTO PHANLOP VALUES('NH0708','KHOI12','LOP1210708','HS0047')
-----------------------------------------------------------------------------------------------------------------------------------------------------
/* Da chinh sua hoan chinh */
CREATE TABLE PHANCONG
(
	STT			INT				IDENTITY	PRIMARY KEY,
	MaNamHoc	VARCHAR (6)		NOT NULL,
	MaLop		VARCHAR (10)	NOT NULL,
	MaMonHoc	VARCHAR (6)		NOT NULL,
	MaGiaoVien	VARCHAR (6)		NOT NULL,
	
	-- PRIMARY KEY(MaNamHoc, MaLop, MaMonHoc, MaGiaoVien),
	
	-- (4 khoa ngoai)
	CONSTRAINT F_PC_NH	FOREIGN KEY(MaNamHoc)	REFERENCES NAMHOC(MaNamHoc),
	CONSTRAINT P_PC_LOP	FOREIGN KEY(MaLop)		REFERENCES LOP(MaLop),
	CONSTRAINT P_PC_MH	FOREIGN KEY(MaMonHoc)	REFERENCES MONHOC(MaMonHoc),
	CONSTRAINT P_PC_GV	FOREIGN KEY(MaGiaoVien)	REFERENCES GIAOVIEN(MaGiaoVien)
)

INSERT INTO PHANCONG VALUES('NH0708','LOP1010708','MH0001','GV0001')
INSERT INTO PHANCONG VALUES('NH0708','LOP1010708','MH0002','GV0002')
INSERT INTO PHANCONG VALUES('NH0708','LOP1010708','MH0003','GV0003')
INSERT INTO PHANCONG VALUES('NH0708','LOP1010708','MH0004','GV0004')

INSERT INTO PHANCONG VALUES('NH0708','LOP1020708','MH0001','GV0001')
INSERT INTO PHANCONG VALUES('NH0708','LOP1020708','MH0002','GV0002')
INSERT INTO PHANCONG VALUES('NH0708','LOP1020708','MH0003','GV0003')
INSERT INTO PHANCONG VALUES('NH0708','LOP1020708','MH0004','GV0004')

INSERT INTO PHANCONG VALUES('NH0708','LOP1110708','MH0001','GV0001')
INSERT INTO PHANCONG VALUES('NH0708','LOP1110708','MH0002','GV0002')
INSERT INTO PHANCONG VALUES('NH0708','LOP1110708','MH0003','GV0003')
INSERT INTO PHANCONG VALUES('NH0708','LOP1110708','MH0004','GV0004')
--===================================================================================================================================================
/* Da chinh sua hoan chinh */
CREATE TABLE LOAIDIEM
(
	MaLoai		VARCHAR (6)		NOT NULL	PRIMARY KEY,
	TenLoai		NVARCHAR (30)	NOT NULL,
	HeSo		INT				NOT NULL
)

INSERT INTO LOAIDIEM VALUES('LD0001','Kiem tra mieng',	1)
INSERT INTO LOAIDIEM VALUES('LD0002','Kiem tra 15 phut',1)
INSERT INTO LOAIDIEM VALUES('LD0003','Kiem tra 1 tiet',	2)
INSERT INTO LOAIDIEM VALUES('LD0004','Thi hoc ky',		1)
-----------------------------------------------------------------------------------------------------------------------------------------------------
/* Da chinh sua hoan chinh */
CREATE TABLE DIEM
(
	STT			INT				IDENTITY	PRIMARY KEY,
	MaHocSinh	VARCHAR (6)		NOT NULL,
	MaMonHoc	VARCHAR (6)		NOT NULL,
	MaHocKy		VARCHAR (3)		NOT NULL,
	MaNamHoc	VARCHAR (6)		NOT NULL,
	MaLop		VARCHAR (10)	NOT NULL,
	MaLoai		VARCHAR (6)		NOT NULL,
	Diem		FLOAT			NOT NULL,
	
	-- (5 khoa ngoai)
	CONSTRAINT F_DIEM_HS	FOREIGN KEY(MaHocSinh)	REFERENCES HOCSINH(MaHocSinh),
	CONSTRAINT F_DIEM_MH	FOREIGN KEY(MaMonHoc)	REFERENCES MONHOC(MaMonHoc),
	CONSTRAINT F_DIEM_HK	FOREIGN KEY(MaHocKy)	REFERENCES HOCKY(MaHocKy),
	CONSTRAINT F_DIEM_NH	FOREIGN KEY(MaNamHoc)	REFERENCES NAMHOC(MaNamHoc),
	CONSTRAINT F_DIEM_LOP	FOREIGN KEY(MaLop)		REFERENCES LOP(MaLop),
	CONSTRAINT F_DIEM_LD	FOREIGN KEY(MaLoai)		REFERENCES LOAIDIEM(MaLoai)
)
--===================================================================================================================================================
/* Da chinh sua hoan chinh */
CREATE TABLE KQ_HOC_KY_MON_HOC
(
	MaHocSinh	VARCHAR (6)		NOT NULL,
	MaLop		VARCHAR (10)	NOT NULL,
	MaMonHoc	VARCHAR (6)		NOT NULL,
	MaHocKy		VARCHAR (3)		NOT NULL,
	MaNamHoc	VARCHAR (6)		NOT NULL,
	DTBKiemTra	FLOAT			NOT NULL,
	DTBMonHocKy	FLOAT			NOT NULL,	-- Cua tung mon
	
	PRIMARY KEY(MaHocSinh, MaLop, MaMonHoc, MaHocKy, MaNamHoc),
	
	-- (5 khoa ngoai)
	CONSTRAINT F_KQHKMH_HS FOREIGN KEY(MaHocSinh)	REFERENCES HOCSINH(MaHocSinh),
	CONSTRAINT F_KQHKMH_LO FOREIGN KEY(MaLop)		REFERENCES LOP(MaLop),
	CONSTRAINT F_KQHKMH_MH FOREIGN KEY(MaMonHoc)	REFERENCES MONHOC(MaMonHoc),
	CONSTRAINT F_KQHKMH_HK FOREIGN KEY(MaHocKy)		REFERENCES HOCKY(MaHocKy),
	CONSTRAINT F_KQHKMH_NH FOREIGN KEY(MaNamHoc)	REFERENCES NAMHOC(MaNamHoc)
)
-----------------------------------------------------------------------------------------------------------------------------------------------------
/* Da chinh sua hoan chinh */
CREATE TABLE KQ_CA_NAM_MON_HOC
(
	MaHocSinh	VARCHAR (6)		NOT NULL,
	MaLop		VARCHAR (10)	NOT NULL,
	MaMonHoc	VARCHAR (6)		NOT NULL,
	MaNamHoc	VARCHAR (6)		NOT NULL,
	DiemThiLai	FLOAT,
	DTBCaNam	FLOAT			NOT NULL,	-- Cua tung mon
	
	PRIMARY KEY(MaHocSinh, MaLop, MaMonHoc, MaNamHoc),
	
	-- (4 khoa ngoai)
	CONSTRAINT F_KQCNMH_HS 	FOREIGN KEY(MaHocSinh)		REFERENCES HOCSINH(MaHocSinh),
	CONSTRAINT F_KQCNMH_LOP	FOREIGN KEY(MaLop)			REFERENCES LOP(MaLop),
	CONSTRAINT F_KQCNMH_MH 	FOREIGN KEY(MaMonHoc)		REFERENCES MONHOC(MaMonHoc),
	CONSTRAINT F_KQCNMH_NH	FOREIGN KEY(MaNamHoc)		REFERENCES NAMHOC(MaNamHoc)
)
-----------------------------------------------------------------------------------------------------------------------------------------------------
/* Da chinh sua hoan chinh */
CREATE TABLE KQ_HOC_KY_TONG_HOP
(
	MaHocSinh	VARCHAR (6)		NOT NULL,
	MaLop		VARCHAR (10)	NOT NULL,
	MaHocKy		VARCHAR (3)		NOT NULL,
	MaNamHoc	VARCHAR (6)		NOT NULL,
	MaHocLuc	VARCHAR (6)		NOT NULL,
	MaHanhKiem	VARCHAR (6)		NOT NULL,
	DTBMonHocKy	FLOAT,						-- Cua tat ca cac mon
	
	PRIMARY KEY(MaHocSinh, MaHocKy, MaLop, MaNamHoc),
	
	-- (6 khoa ngoai)
	CONSTRAINT F_KQHK_HS	FOREIGN KEY(MaHocSinh)		REFERENCES HOCSINH(MaHocSinh),
	CONSTRAINT F_KQHK_LOP	FOREIGN KEY(MaLop)			REFERENCES LOP(MaLop),
	CONSTRAINT F_KQHK_HK	FOREIGN KEY(MaHocKy)		REFERENCES HOCKY(MaHocKy),
	CONSTRAINT F_KQHK_NH	FOREIGN KEY(MaNamHoc)		REFERENCES NAMHOC(MaNamHoc),
	CONSTRAINT F_KQHK_HL	FOREIGN KEY(MaHocLuc)		REFERENCES HOCLUC(MaHocLuc),
	CONSTRAINT F_KQHK_HKIEM	FOREIGN KEY(MaHanhKiem)		REFERENCES HANHKIEM(MaHanhKiem)
)
-----------------------------------------------------------------------------------------------------------------------------------------------------
/* Da chinh sua hoan chinh */
CREATE TABLE KQ_CA_NAM_TONG_HOP
(
	MaHocSinh	VARCHAR (6)		NOT NULL,
	MaLop		VARCHAR (10)	NOT NULL,
	MaNamHoc	VARCHAR (6)		NOT NULL,
	MaHocLuc	VARCHAR (6)		NOT NULL,
	MaHanhKiem	VARCHAR (6)		NOT NULL,
	DTBCaNam	FLOAT			NOT NULL,	-- Cua tat ca cac mon
	MaKetQua	VARCHAR (6)		NOT NULL,
	
	PRIMARY KEY(MaHocSinh, MaLop, MaNamHoc),
	
	-- (6 khoa ngoai)
	CONSTRAINT F_KQCN_HS	FOREIGN KEY(MaHocSinh)		REFERENCES HOCSINH(MaHocSinh),
	CONSTRAINT F_KQCN_LOP	FOREIGN KEY(MaLop)			REFERENCES LOP(MaLop),
	CONSTRAINT F_KQCN_NH	FOREIGN KEY(MaNamHoc)		REFERENCES NAMHOC(MaNamHoc),
	CONSTRAINT F_KQCN_HL	FOREIGN KEY(MaHocLuc)		REFERENCES HOCLUC(MaHocLuc),
	CONSTRAINT F_KQCN_HKIEM	FOREIGN KEY(MaHanhKiem)		REFERENCES HANHKIEM(MaHanhKiem),
	CONSTRAINT F_KQCN_KQ	FOREIGN KEY(MaKetQua)		REFERENCES KETQUA(MaKetQua)
)
--===================================================================================================================================================
/* Da chinh sua hoan chinh */
CREATE TABLE QUYDINH
(
	TuoiCanDuoi		INT		NOT NULL,
	TuoiCanTren		INT		NOT NULL,
	SiSoCanDuoi		INT		NOT NULL,
	SiSoCanTren		INT		NOT NULL,
	ThangDiem		INT		NOT NULL,
	TenTruong		NVARCHAR (100),
	DiaChiTruong	NVARCHAR (100)
)
INSERT INTO QUYDINH VALUES(15, 20, 30, 40, 10, 'THPT Hoa Lu A', '79 Tran Hung Dao - TPNB')
--===================================================================================================================================================