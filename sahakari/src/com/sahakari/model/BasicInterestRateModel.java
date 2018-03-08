package com.sahakari.model;

public class BasicInterestRateModel {
private String Id, categoryId, intRate, effectiveDateNp,effectiveDateEn;

public String getId() {
	return Id;
}

public void setId(String id) {
	Id = id;
}

public String getCategoryId() {
	return categoryId;
}

public void setCategoryId(String categoryId) {
	this.categoryId = categoryId;
}

public String getIntRate() {
	return intRate;
}

public void setIntRate(String intRate) {
	this.intRate = intRate;
}

public String getEffectiveDateNp() {
	return effectiveDateNp;
}

public void setEffectiveDateNp(String effectiveDateNp) {
	this.effectiveDateNp = effectiveDateNp;
}

public String getEffectiveDateEn() {
	return effectiveDateEn;
}

public void setEffectiveDateEn(String effectiveDateEn) {
	this.effectiveDateEn = effectiveDateEn;
}
}
