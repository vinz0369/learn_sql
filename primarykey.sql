CREATE DATABASE primary_foreign
GO
USE primary_foreign
GO
CREATE TABLE BoMon
( 
MaBM CHAR(10) PRIMARY KEY,
Name NVARCHAR(100) DEFAULT N'Tên bộ môn')
GO
CREATE TABLE Lop
(
MaLop CHAR(10),
Name NVARCHAR(100) DEFAULT N'Tên lớp')
GO
-- điều kiện cần để tạo khoá ngoại
-- tham chiếu tới khoá chính
-- unique , not null
-- cùng kiểu dữ liệu
-- cùng số lượng trường có sắp xếp
-- lợi ích:
-- đảm bảo toàn vẹn dữ liệu, không có trường hợp tham chiếu tới dữ liệu không tồn tại

CREATE TABLE GiaoVien
(
MaGV CHAR(10),
Name NVARCHAR(100) DEFAULT N'Tên giáo viên',
Diachi NVARCHAR(100) DEFAULT N'Địa chỉ',
ngaysinh DATE,
sex BIT,
MaBM CHAR(10),
FOREIGN KEY( MaBM) REFERENCES dbo.BoMon(MaBM)
)
GO
ALTER TABLE dbo.GiaoVien ADD PRIMARY KEY(MaGV)
CREATE TABLE hocsinh
(
mahs CHAR(10),
malop CHAR(10),
name NVARCHAR(100) DEFAULT N'tên học sinh')
-- tạo khoá ngoại sau khi tạo bảng
ALTER TABLE dbo.hocsinh ADD FOREIGN KEY(malop) REFERENCES dbo.Lop(MaLop)
