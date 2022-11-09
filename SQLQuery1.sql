-- unique: duy nhất--> trong toàn bộ bảng từ nào có từ khoá unique thì không thể có 2 giá trị trùng nhau
-- not null: trường đó không được phép null
--default: giá trị mặc định của trường đó nếu không gán giá trị khi insert
CREATE TABLE test_primarykey
(
id INT UNIQUE NOT NULL,
name NVARCHAR(100)DEFAULT 'v'
)
GO
-- khi đã tạo bảng muốn sửa cột thành primary key
ALTER TABLE dbo.test_primarykey ADD PRIMARY KEY(id)

CREATE TABLE tes_primarykey2
(id INT NOT NULL,
name NVARCHAR(100) DEFAULT'v'
PRIMARY KEY(id)
)
--khoá chính có 2 trường
CREATE TABLE testpk
(
id INT NOT NULL,
id1 INT NOT NULL,
name NVARCHAR(100) DEFAULT'v'
PRIMARY KEY(id,id1)
)
INSERT dbo.testpk
(
    id,
    id1,
    name
)
VALUES
(   0,  -- id - int
    0,  -- id1 - int
    N'' -- name - nvarchar(100)
    )
