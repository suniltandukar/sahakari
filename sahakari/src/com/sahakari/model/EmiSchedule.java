package com.sahakari.model;

public class EmiSchedule {
	
	private String accountNumber;
	private String sno;
	private String emi;
	private String interestinstallment;
	private String principalinstallment;
	private String principalbal;
	public String getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}
	public String getSno() {
		return sno;
	}
	public void setSno(String sno) {
		this.sno = sno;
	}
	public String getEmi() {
		return emi;
	}
	public void setEmi(String emi) {
		this.emi = emi;
	}
	public String getInterestinstallment() {
		return interestinstallment;
	}
	public void setInterestinstallment(String interestinstallment) {
		this.interestinstallment = interestinstallment;
	}
	public String getPrincipalinstallment() {
		return principalinstallment;
	}
	public void setPrincipalinstallment(String principalinstallment) {
		this.principalinstallment = principalinstallment;
	}
	public String getPrincipalbal() {
		return principalbal;
	}
	public void setPrincipalbal(String principalbal) {
		this.principalbal = principalbal;
	}
	@Override
	public String toString() {
		return "LoanSchedule [accountNumber=" + accountNumber + ", sno=" + sno + ", emi=" + emi
				+ ", interestinstallment=" + interestinstallment + ", principalinstallment=" + principalinstallment
				+ ", principalbal=" + principalbal + "]";
	}
}
