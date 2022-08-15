package com.quanlytintuc.dao.impl;

import java.util.List;

import com.quanlytintuc.dao.ITaiKhoanDAO;
import com.quanlytintuc.mapper.TaiKhoanMapper;
import com.quanlytintuc.model.TaiKhoan;
import com.quanlytintuc.paging.Pageble;

public class TaiKhoanDAO extends AbstractDAO<TaiKhoan> implements ITaiKhoanDAO{

	@Override
	public TaiKhoan findByEmailAndPassAndStatus(String email, String pass) {
		String sql = "SELECT * FROM taikhoan " + 
				" LEFT JOIN quyen" + 
				" ON taikhoan.maquyen = quyen.maquyen" + 
				" WHERE email = ? and matkhau = ?";
		
		List<TaiKhoan> taikhoan = query(sql, new TaiKhoanMapper(),email,pass);
		return taikhoan.isEmpty() ? null : taikhoan.get(0);
	}

	@Override
	public List<TaiKhoan> findAll(Pageble pageble) {
		String sql = "Select * From taikhoan " 
				+ " LEFT JOIN quyen ON taikhoan.maquyen = quyen.maquyen ";
		//String sql = "Select * From baiviet limit ?, ?";
		if (pageble.getSorter() != null ) {
			sql = sql + "Order by "+ pageble.getSorter().getSortName()+" "+pageble.getSorter().getSortBy()+" ";
		}
		if(pageble.getOffset() != null && pageble.getLimit() != null) {
			sql = sql + " limit ?, ?";
			return query(sql ,new TaiKhoanMapper(),pageble.getOffset(),pageble.getLimit());
		}else {
			return query(sql ,new TaiKhoanMapper());
		}
		
	}

	@Override
	public TaiKhoan findOne(Long mataikhoan) {
		String sql = "Select * From taikhoan "
				+ " LEFT JOIN quyen ON taikhoan.maquyen = quyen.maquyen "
				+" where taikhoan.mataikhoan = ?";
		List<TaiKhoan> dstk = query(sql, new TaiKhoanMapper(),mataikhoan);
		return dstk.isEmpty() ? null : dstk.get(0);
	}

	@Override
	public Long save(TaiKhoan taikhoan) {
		String sql = "insert into taikhoan(email ,matkhau ,maquyen ,hovaten ,trangthai) " + 
				"values(?,?,?,?,?) ";
		return insert(sql,taikhoan.getEmail()
						 , taikhoan.getMatKhau()
						 , taikhoan.getMaQuyen()
						 , taikhoan.getHoVaTen()
						 , taikhoan.getTrangThai());
	}

	@Override
	public void update(TaiKhoan taikhoan) {
		
		String sql = "update taikhoan SET "
				+ " email = ?"
				+ ", matkhau = ?"
				+ ", maquyen = ?"
				+ ", hovaten = ?"
				+ ", trangthai = ? " + 
				" WHERE mataikhoan = ? ;";
		update(sql,taikhoan.getEmail()
						 , taikhoan.getMatKhau()
						 , taikhoan.getMaQuyen()
						 , taikhoan.getHoVaTen()
						 , taikhoan.getTrangThai()
						 , taikhoan.getMaTaiKhoan());
		
	}

	@Override
	public void delete(long id) {
		String sql = "DELETE FROM taikhoan WHERE mataikhoan = ?";
		update(sql,id);
		
	}

	@Override
	public Integer getTotalItems() {
		String sql = "SELECT COUNT(*) FROM taikhoan";
		return sumRowsData(sql);
	}

	

}
