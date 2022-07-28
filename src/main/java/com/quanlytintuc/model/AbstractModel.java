package com.quanlytintuc.model;

import java.util.ArrayList;
import java.util.List;

public class AbstractModel<T> {
	
	private long[] ids;
	private List<T> listData = new ArrayList<>();
	
	
	public List<T> getListData() {
		return listData;
	}

	public void setListData(List<T> listData) {
		this.listData = listData;
	}

	public long[] getIds() {
		return ids;
	}

	public void setIds(long[] ids) {
		this.ids = ids;
	}
}
