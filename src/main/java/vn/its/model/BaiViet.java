package vn.its.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonFormat.Shape;

@Entity
@Table(name = "BAIVIET")
public class BaiViet {

	@Id
	@Column(name = "MABV")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int maBV;

	@Column(name = "TIEUDE")
	private String tieuDe;

	@Column(name = "DANHMUC")
	private String danhMuc;

	@Column(name = "CHITIET")
	private String chiTiet;

	@JsonFormat(shape=Shape.STRING, pattern="dd-MM-yyyy hh:mm:ss")
	@Column(name = "LICHDANG")
	private Date lichDang;

	@Column(name = "TRANGTHAI")
	private String trangThai;

	@Column(name = "NHAN")
	private String nhan;

	public BaiViet() {
		super();
	}

	public BaiViet(int maBV, String tieuDe, String danhMuc, String chiTiet, Date lichDang, String trangThai,
			String nhan) {
		super();
		this.maBV = maBV;
		this.tieuDe = tieuDe;
		this.danhMuc = danhMuc;
		this.chiTiet = chiTiet;
		this.lichDang = lichDang;
		this.trangThai = trangThai;
		this.nhan = nhan;
	}

	public int getMaBV() {
		return maBV;
	}

	public void setMaBV(int maBV) {
		this.maBV = maBV;
	}

	public String getTieuDe() {
		return tieuDe;
	}

	public void setTieuDe(String tieuDe) {
		this.tieuDe = tieuDe;
	}

	public String getDanhMuc() {
		return danhMuc;
	}

	public void setDanhMuc(String danhMuc) {
		this.danhMuc = danhMuc;
	}

	public String getChiTiet() {
		return chiTiet;
	}

	public void setChiTiet(String chiTiet) {
		this.chiTiet = chiTiet;
	}

	public Date getLichDang() {
		return lichDang;
	}

	public void setLichDang(Date lichDang) {
		this.lichDang = lichDang;
	}

	public String getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}

	public String getNhan() {
		return nhan;
	}

	public void setNhan(String nhan) {
		this.nhan = nhan;
	}
}
