package com.quanlytintuc.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.quanlytintuc.dao.ITaiKhoanDAO;
import com.quanlytintuc.model.TaiKhoan;
import com.quanlytintuc.paging.Pageble;
import com.quanlytintuc.service.ITaiKhoanService;

public class TaiKhoanService implements ITaiKhoanService{
	@Inject
	private ITaiKhoanDAO taikhoanDAO;
	
	@Override
	public TaiKhoan findByEmailAndPassAndStatus(String email, String pass) {
		return taikhoanDAO.findByEmailAndPassAndStatus(email, pass);
	}

	@Override
	public List<TaiKhoan> findAll(Pageble pageble) {
		return taikhoanDAO.findAll(pageble);
	}

	@Override
	public TaiKhoan findOne(Long mataikhoan) {
		return taikhoanDAO.findOne(mataikhoan);
		
	}

	@Override
	public TaiKhoan save(TaiKhoan taikhoan) {
		Long newID = taikhoanDAO.save(taikhoan);
		return taikhoanDAO.findOne(newID);
	}

	@Override
	public TaiKhoan update(TaiKhoan taikhoan) {
		taikhoanDAO.update(taikhoan);
		return taikhoanDAO.findOne(taikhoan.getMaTaiKhoan());
		
	}

	@Override
	public void delete(long[] ids) {
		// TODO Auto-generated method stub
		for(long id : ids) {
			taikhoanDAO.delete(id);
		}
	}

	@Override
	public Integer getTotalItems() {
		return taikhoanDAO.getTotalItems();
	}

}
