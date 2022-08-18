package com.quanlytintuc.dao.impl;

import java.util.List;

import com.quanlytintuc.dao.IBinhLuanDAO;
import com.quanlytintuc.mapper.BinhLuanMapper;
import com.quanlytintuc.model.BinhLuan;

public class BinhLuanDAO extends AbstractDAO<BinhLuan> implements IBinhLuanDAO{

	@Override
	public List<BinhLuan> findAll(Long mabaiviet) {
		String sql = "SELECT * FROM binhluan "
				+ " LEFT JOIN taikhoan ON binhluan.mataikhoan = taikhoan.mataikhoan "
				+ " where binhluan.mabaiviet = ?";
		return query(sql, new BinhLuanMapper(),mabaiviet);
		
		
	}

	@Override
	public Long save(BinhLuan binhluan) {
		String sql = "INSERT INTO binhluan (mataikhoan, mabaiviet, noidung, ngaygui) "
				+ " VALUES (?, ?, ?, ?)";
		return insert(sql,binhluan.getMaTaiKhoan()
							,binhluan.getMaBaiViet()
							,binhluan.getNoiDung()
							,binhluan.getNgayGui());
	}

	@Override
	public void update(BinhLuan binhluan) {
		String sql = "update binhluan SET "
				+ " noidung = ?"
				+ " WHERE mabinhluan = ? ;";
		update(sql,binhluan.getNoiDung(),binhluan.getMaBinhLuan());
		
	}

	@Override
	public void delete(long id) {
		String sql = "DELETE FROM binhluan WHERE mabinhluan = ?";
		update(sql,id);
	}

	@Override
	public BinhLuan findOne(Long mabinhluan) {
		String sql = "Select * From binhluan "
				+ " LEFT JOIN taikhoan ON binhluan.mataikhoan = taikhoan.mataikhoan "
				+" where binhluan.mabinhluan = ?";
		List<BinhLuan> bvs = query(sql, new BinhLuanMapper(),mabinhluan);
		return bvs.isEmpty() ? null : bvs.get(0);
	}

}
