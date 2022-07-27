package com.quanlytintuc.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.quanlytintuc.dao.IBaiVietDAO;
import com.quanlytintuc.model.BaiViet;
import com.quanlytintuc.service.IBaiVietService;

public class BaiVietService implements IBaiVietService {

	@Inject
	private IBaiVietDAO baivietDAO;
	
	@Override
	public List<BaiViet> findByMaChuDe(Long machude) {
		return baivietDAO.findByMaChuDe(machude);
	}

	@Override
	public List<BaiViet> findAll() {
		// TODO Auto-generated method stub
		return baivietDAO.findAll();
	}

	@Override
	public BaiViet save(BaiViet baiviet) {
		// TODO Auto-generated method stub
		Long newID = baivietDAO.save(baiviet);
		System.out.println("them =" + newID);
		return null;
	}

}
