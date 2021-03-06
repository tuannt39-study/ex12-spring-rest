CREATE TABLE BaiViet(
    MaBV number(6) NOT NULL,
    TieuDe NVARCHAR2(100),
    DanhMuc NVARCHAR2(50),
    ChiTiet NVARCHAR2(1000),
    LichDang TIMESTAMP(6),
    TrangThai NVARCHAR2(50),
    Nhan NVARCHAR2(50),
    PRIMARY KEY (MaBV)
);

CREATE SEQUENCE MaBV START WITH 1;

CREATE OR REPLACE TRIGGER "ITSOL."TRIGGER4" 
BEFORE INSERT ON BaiViet 
FOR EACH ROW
BEGIN
  SELECT MaBV.NEXTVAL
  INTO   :new.MaBV
  FROM   dual;
END;

SELECT MAXE, BIENKIEMSOAT, TENXE, NAMSANXUAT, HANGSANXUAT, BAOHIEM, GHICHU FROM ITSOL.OTO
                    
INSERT
INTO ITSOL.BaiViet (TieuDe, DanhMuc, ChiTiet, LichDang, TrangThai, Nhan) 
VALUES ('Hình ảnh thực tế về iPhone 1', 'Công nghệ', 'IPhone X là tương lai của điện thoại thông minh Apple', '01-SEP-17 10.02.44', 'Duyệt', 'su-kien iphone apple');
INSERT
INTO ITSOL.BaiViet (TieuDe, DanhMuc, ChiTiet, LichDang, TrangThai, Nhan) 
VALUES ('Hình ảnh thực tế về iPhone 2', 'Công nghệ', 'IPhone X là tương lai của điện thoại thông minh Apple', '01-SEP-17 10.02.44', 'Duyệt', 'su-kien iphone apple');

SELECT MaBV, TieuDe, DanhMuc, ChiTiet, LichDang, TrangThai, Nhan FROM ITSOL.BaiViet;
UPDATE "ITSOL.."BAIVIET" SET TRANGTHAI = 'Đặt lịch' WHERE ROWID = 'AAAE7LAABAAAK/5AAB' AND ORA_ROWSCN = '441879';

UPDATE ITSOL.BaiViet SET TRANGTHAI = 'Đặt lịch' WHERE ROWID = 'AAAE7LAABAAAK/5AAB' AND ORA_ROWSCN = '441879';

CREATE TABLE OTO(
    MaXe NUMBER(6),
    BienKiemSoat NUMBER(6),
    TenXe NVARCHAR2(10),
    NamSanXuat DATE,
    HangSanXuat NVARCHAR2(10),
    BaoHiem NVARCHAR2(2) DEFAULT 'NO',
    GhiChu NVARCHAR2(10),
    PRIMARY KEY (MaXe)
);

CREATE SEQUENCE MaXe START WITH 1;

CREATE OR REPLACE TRIGGER "ITSOL.."TRIGGER5" 
BEFORE INSERT ON OTO 
FOR EACH ROW
BEGIN
  SELECT MaXe.NEXTVAL
  INTO   :new.MaXe
  FROM   dual;
END;

INSERT INTO 
"ITSOL"."OTO" (BIENKIEMSOAT, TENXE, NAMSANXUAT, HANGSANXUAT, BAOHIEM, GHICHU) 
VALUES ('86335', 'Camry2', TO_DATE('2016-12-30', 'YYYY-MM-DD'), 'TOYOTA', 'NO', 'NO');

INSERT INTO 
"ITSOL"."OTO" (BIENKIEMSOAT, TENXE, NAMSANXUAT, HANGSANXUAT, BAOHIEM, GHICHU) 
VALUES ('31379', 'S600', TO_DATE('2002-12-30', 'YYYY-MM-DD'), 'BMW', 'B', 'YES');

INSERT INTO 
"ITSOL"."OTO" (BIENKIEMSOAT, TENXE, NAMSANXUAT, HANGSANXUAT, BAOHIEM, GHICHU) 
VALUES ('65230', 'I20', TO_DATE('2002-12-30', 'YYYY-MM-DD'), 'HUYNDAI', 'NO', 'YES');

INSERT INTO 
"ITSOL"."OTO" (BIENKIEMSOAT, TENXE, NAMSANXUAT, HANGSANXUAT, BAOHIEM, GHICHU) 
VALUES ('23106', 'Camry3', TO_DATE('2002-12-30', 'YYYY-MM-DD'), 'TOYOTA', 'B', 'NO');

INSERT INTO 
"ITSOL"."OTO" (BIENKIEMSOAT, TENXE, NAMSANXUAT, HANGSANXUAT, BAOHIEM, GHICHU) 
VALUES ('32662', 'S650', TO_DATE('1991-12-30', 'YYYY-MM-DD'), 'BMW', 'A', '29');

INSERT INTO 
"ITSOL"."OTO" (BIENKIEMSOAT, TENXE, NAMSANXUAT, HANGSANXUAT, BAOHIEM, GHICHU) 
VALUES ('27753', 'I30', TO_DATE('1991-12-30', 'YYYY-MM-DD'), 'HUYNDAI', 'A', '27');

INSERT INTO 
"ITSOL"."OTO" (BIENKIEMSOAT, TENXE, NAMSANXUAT, HANGSANXUAT, BAOHIEM, GHICHU) 
VALUES ('49658', 'Camry4', TO_DATE('1991-12-30', 'YYYY-MM-DD'), 'TOYOTA', 'A', '30');

INSERT INTO 
"ITSOL"."OTO" (BIENKIEMSOAT, TENXE, NAMSANXUAT, HANGSANXUAT, BAOHIEM, GHICHU) 
VALUES ('13021', 'I40', TO_DATE('1991-12-30', 'YYYY-MM-DD'), 'HUYNDAI', 'A', '28');

SELECT
MAXE, BIENKIEMSOAT, TENXE, NAMSANXUAT, HANGSANXUAT, BAOHIEM, GHICHU 
FROM ITSOL.OTO
WHERE NAMSANXUAT >= TO_DATE('01-01-1996', 'dd-MM-yyyy') AND NAMSANXUAT <= TO_DATE('31-12-2004','dd-MM-yyyy');

SELECT
MAXE, BIENKIEMSOAT, TENXE, NAMSANXUAT, HANGSANXUAT, BAOHIEM, GHICHU 
FROM ITSOL.OTO
WHERE NAMSANXUAT >= TO_DATE('01-01-2005', 'dd-MM-yyyy');

SELECT
MAXE, BIENKIEMSOAT, TENXE, NAMSANXUAT, HANGSANXUAT, BAOHIEM, GHICHU 
FROM ITSOL.OTO
WHERE NAMSANXUAT <= TO_DATE('31-12-1995','dd-MM-yyyy');

