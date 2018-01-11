package com.sahakari.dao;

import java.util.List;

import com.sahakari.model.CategoryModel;

public interface CategoryDao {
	public List<CategoryModel> accounttype();
	public boolean insertCategory(CategoryModel cm);
	public List<CategoryModel> selectCategories();
	public CategoryModel getSpecificCategoryDetail(String id);
	public boolean deleteCategory(String id);
	public boolean updateCategory(CategoryModel cm, String previousid);
	

}