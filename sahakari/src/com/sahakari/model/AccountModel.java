package com.sahakari.model;

public class AccountModel {
	String pid, memberid, accountNumber,alternativeAccounId, accountName, limitRef, inputter;
	String categoryId, categoryHead;
	String accountType, accountTypeHead;

	public String getAccountTypeHead() {
		return accountTypeHead;
	}

	public void setAccountTypeHead(String accountTypeHead) {
		this.accountTypeHead = accountTypeHead;
	}

	public String getAccountNumber() {
		return accountNumber;
	}

	public String getCategoryHead() {
		return categoryHead;
	}

	public void setCategoryHead(String categoryHead) {
		this.categoryHead = categoryHead;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String getPid() {
		return pid;
	}

	public String getInputter() {
		return inputter;
	}

	public void setInputter(String inputter) {
		this.inputter = inputter;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public String getAlternativeAccounId() {
		return alternativeAccounId;
	}

	public void setAlternativeAccounId(String alternativeAccounId) {
		this.alternativeAccounId = alternativeAccounId;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public String getAccountType() {
		return accountType;
	}

	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}

	public String getAccountName() {
		return accountName;
	}

	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}

	public String getLimitRef() {
		return limitRef;
	}

	public void setLimitRef(String limitRef) {
		this.limitRef = limitRef;
	} 
}
