package com.sahakari.dao;

import java.util.List;

import com.sahakari.model.AccountModel;
import com.sahakari.model.EmiSchedule;

public interface LoanDao {
	public boolean insertLoan(AccountModel am);

	public AccountModel getEditDetails(String accountNo);

	public boolean updateLoan(AccountModel ac);

	public List<EmiSchedule> getEmiSchedule();

}
