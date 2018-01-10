package com.sahakari.dao;

import java.util.List;

import com.sahakari.model.CategoryModel;

public interface CategoryDao {

	public boolean insertCategory(CategoryModel cm);
	public List<CategoryModel> selectCategories();

}
