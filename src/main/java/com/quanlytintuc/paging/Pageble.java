package com.quanlytintuc.paging;

import com.quanlytintuc.sort.Sorter;

public interface Pageble {
	Integer getPage();
	Integer getOffset();
	Integer getLimit();
	Sorter getSorter();
}
