package com.quanlytintuc.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.quanlytintuc.dao.IBaiVietDAO;
import com.quanlytintuc.dao.IChuDeDAO;
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

}
