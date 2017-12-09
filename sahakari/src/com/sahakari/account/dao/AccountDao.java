package com.sahakari.account.dao;

import java.util.List;

import com.sahakari.model.AccountModel;

public interface AccountDao {

	public boolean insertAccount(AccountModel am);

	public String selectpid(AccountModel am);
	public List<AccountModel> getCategories();
	public String selectAccountTypeFromCategory(String categoryId);
	public AccountModel getAccountTypes(String accountType);

	public List<AccountModel> viewAccount();

	public boolean deleteAccount(String pid);
	

}
