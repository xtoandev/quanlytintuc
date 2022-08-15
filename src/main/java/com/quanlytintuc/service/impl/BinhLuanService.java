package com.quanlytintuc.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.quanlytintuc.dao.IBinhLuanDAO;
import com.quanlytintuc.model.BinhLuan;
import com.quanlytintuc.service.IBinhLuanService;

public class BinhLuanService implements IBinhLuanService{
	
	@Inject
	private IBinhLuanDAO binhluanDAO;
	@Override
	public List<BinhLuan> findAll(Long mabaiviet) {
		
		return binhluanDAO.findAll(mabaiviet);
	}

	@Override
	public BinhLuan save(BinhLuan binhluan) {
		Long newID = binhluanDAO.save(binhluan);
		return binhluanDAO.findOne(newID);
	}

	@Override
	public BinhLuan update(BinhLuan binhluan) {
		binhluanDAO.update(binhluan);
		return binhluanDAO.findOne(binhluan.getMaBinhLuan());
	}

	@Override
	public void delete(long[] ids) {
		for(long id : ids) {
			binhluanDAO.delete(id);
		}
		
	}

}
