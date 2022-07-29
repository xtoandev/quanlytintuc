package com.quanlytintuc.model;

import java.util.ArrayList;
import java.util.List;

public class AbstractModel<T> {
	
	private long[] ids;
	private List<T> listData = new ArrayList<>();
	private Integer page;
	private Integer maxPageItems;
	private Integer totalPage;
	private Integer totalItems;
	
	
	public long[] getIds() {
		return ids;
	}
	public void setIds(long[] ids) {
		this.ids = ids;
	}
	public List<T> getListData() {
		return listData;
	}
	public void setListData(List<T> listData) {
		this.listData = listData;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getMaxPageItems() {
		return maxPageItems;
	}
	public void setMaxPageItems(Integer maxPageItems) {
		this.maxPageItems = maxPageItems;
	}
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	public Integer getTotalItems() {
		return totalItems;
	}
	public void setTotalItems(Integer totalItems) {
		this.totalItems = totalItems;
	}
	
	
	

	
	
	
}
