package com.sahakari.dao;

import com.sahakari.model.AccountModel;

public interface LoanDao {
	public boolean insertLoan(AccountModel am);

	public AccountModel getEditDetails(String accountNo);

	public boolean updateLoan(AccountModel ac);

}
