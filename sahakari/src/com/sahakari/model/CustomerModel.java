package com.sahakari.model;

public class CustomerModel {
	String districtCode, districtName, pid, memberid, registrationDate, name,
	gender, pdistid, pdistName,
	pvdcmunid, pvdcName, pwardno, pcity, ptole, tdistid, tdistName,
	tvdcmunid, tvdcName, twardno, tcity,
	ttole, cusCitizenshipNo, citizenshipIssuedFrom, citidistName,
	telno, mobno, fatherName, dob, typeid,typeName, statusid, statusName, inputter, authorizer,
	insertStatus, updateStatus, delStatus, address, agentid;
	//document details
	String documentType, documentNumber, issuedDate,issuedDateen,issuedBy,expiryDate,expiryDateen;
	
	@Override
	public String toString() {
		return "CustomerModel [districtCode=" + districtCode + ", districtName=" + districtName + ", pid=" + pid
				+ ", memberid=" + memberid + ", registrationDate=" + registrationDate + ", name=" + name + ", gender="
				+ gender + ", pdistid=" + pdistid + ", pdistName=" + pdistName + ", pvdcmunid=" + pvdcmunid
				+ ", pvdcName=" + pvdcName + ", pwardno=" + pwardno + ", pcity=" + pcity + ", ptole=" + ptole
				+ ", tdistid=" + tdistid + ", tdistName=" + tdistName + ", tvdcmunid=" + tvdcmunid + ", tvdcName="
				+ tvdcName + ", twardno=" + twardno + ", tcity=" + tcity + ", ttole=" + ttole + ", cusCitizenshipNo="
				+ cusCitizenshipNo + ", citizenshipIssuedFrom=" + citizenshipIssuedFrom + ", citidistName="
				+ citidistName + ", telno=" + telno + ", mobno=" + mobno + ", fatherName=" + fatherName + ", dob=" + dob
				+ ", typeid=" + typeid + ", typeName=" + typeName + ", statusid=" + statusid + ", statusName="
				+ statusName + ", inputter=" + inputter + ", authorizer=" + authorizer + ", insertStatus="
				+ insertStatus + ", updateStatus=" + updateStatus + ", delStatus=" + delStatus + ", address=" + address
				+ ", agentid=" + agentid + ", documentType=" + documentType + ", documentNumber=" + documentNumber
				+ ", issuedDate=" + issuedDate + ", issuedDateen=" + issuedDateen + ", issuedBy=" + issuedBy
				+ ", expiryDate=" + expiryDate + ", expiryDateen=" + expiryDateen + ", shareid=" + shareid
				+ ", shareCertNo=" + shareCertNo + ", shareFrom=" + shareFrom + ", shareTo=" + shareTo
				+ ", totalShareNos=" + totalShareNos + ", shareRate=" + shareRate + ", shareAmount=" + shareAmount
				+ ", shareDate=" + shareDate + ", shareCertificateId=" + shareCertificateId + ", cusRelation="
				+ cusRelation + ", cusRelName=" + cusRelName + ", dateOfBirth=" + dateOfBirth + ", fcitizenshipNo="
				+ fcitizenshipNo + ", fremarks=" + fremarks + ", cusJob=" + cusJob + ", cusInstitution="
				+ cusInstitution + ", cusPost=" + cusPost + ", incomePeryear=" + incomePeryear + ", jremarks="
				+ jremarks + ", bankName=" + bankName + ", accountNumber=" + accountNumber + ", accountType="
				+ accountType + ", bremarks=" + bremarks + ", getAgentid()=" + getAgentid() + ", getDocumentType()="
				+ getDocumentType() + ", getDocumentNumber()=" + getDocumentNumber() + ", getIssuedDate()="
				+ getIssuedDate() + ", getIssuedDateen()=" + getIssuedDateen() + ", getIssuedBy()=" + getIssuedBy()
				+ ", getExpiryDate()=" + getExpiryDate() + ", getExpiryDateen()=" + getExpiryDateen()
				+ ", getAddress()=" + getAddress() + ", getPvdcName()=" + getPvdcName() + ", getTdistName()="
				+ getTdistName() + ", getTvdcName()=" + getTvdcName() + ", getCitidistName()=" + getCitidistName()
				+ ", getShareid()=" + getShareid() + ", getShareCertificateId()=" + getShareCertificateId()
				+ ", getShareCertNo()=" + getShareCertNo() + ", getShareFrom()=" + getShareFrom() + ", getShareTo()="
				+ getShareTo() + ", getTotalShareNos()=" + getTotalShareNos() + ", getShareRate()=" + getShareRate()
				+ ", getShareAmount()=" + getShareAmount() + ", getShareDate()=" + getShareDate()
				+ ", getCusRelation()=" + getCusRelation() + ", getCusRelName()=" + getCusRelName()
				+ ", getDateOfBirth()=" + getDateOfBirth() + ", getFcitizenshipNo()=" + getFcitizenshipNo()
				+ ", getFremarks()=" + getFremarks() + ", getCusJob()=" + getCusJob() + ", getCusInstitution()="
				+ getCusInstitution() + ", getCusPost()=" + getCusPost() + ", getIncomePeryear()=" + getIncomePeryear()
				+ ", getJremarks()=" + getJremarks() + ", getBankName()=" + getBankName() + ", getAccountNumber()="
				+ getAccountNumber() + ", getAccountType()=" + getAccountType() + ", getBremarks()=" + getBremarks()
				+ ", getCusCitizenshipNo()=" + getCusCitizenshipNo() + ", getPdistName()=" + getPdistName()
				+ ", getDistrictCode()=" + getDistrictCode() + ", getDistrictName()=" + getDistrictName()
				+ ", getTypeName()=" + getTypeName() + ", getStatusName()=" + getStatusName() + ", getPid()=" + getPid()
				+ ", getMemberid()=" + getMemberid() + ", getRegistrationDate()=" + getRegistrationDate()
				+ ", getName()=" + getName() + ", getGender()=" + getGender() + ", getPdistid()=" + getPdistid()
				+ ", getPvdcmunid()=" + getPvdcmunid() + ", getPwardno()=" + getPwardno() + ", getPcity()=" + getPcity()
				+ ", getPtole()=" + getPtole() + ", getTdistid()=" + getTdistid() + ", getTvdcmunid()=" + getTvdcmunid()
				+ ", getTwardno()=" + getTwardno() + ", getTcity()=" + getTcity() + ", getTtole()=" + getTtole()
				+ ", getCitizenshipIssuedFrom()=" + getCitizenshipIssuedFrom() + ", getTelno()=" + getTelno()
				+ ", getMobno()=" + getMobno() + ", getFatherName()=" + getFatherName() + ", getDob()=" + getDob()
				+ ", getTypeid()=" + getTypeid() + ", getStatusid()=" + getStatusid() + ", getInputter()="
				+ getInputter() + ", getAuthorizer()=" + getAuthorizer() + ", getInsertStatus()=" + getInsertStatus()
				+ ", getUpdateStatus()=" + getUpdateStatus() + ", getDelStatus()=" + getDelStatus() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

	public String getAgentid() {
		return agentid;
	}

	public void setAgentid(String agentid) {
		this.agentid = agentid;
	}

	public String getDocumentType() {
		return documentType;
	}

	public void setDocumentType(String documentType) {
		this.documentType = documentType;
	}

	public String getDocumentNumber() {
		return documentNumber;
	}

	public void setDocumentNumber(String documentNumber) {
		this.documentNumber = documentNumber;
	}

	public String getIssuedDate() {
		return issuedDate;
	}

	public void setIssuedDate(String issuedDate) {
		this.issuedDate = issuedDate;
	}

	public String getIssuedDateen() {
		return issuedDateen;
	}

	public void setIssuedDateen(String issuedDateen) {
		this.issuedDateen = issuedDateen;
	}

	public String getIssuedBy() {
		return issuedBy;
	}

	public void setIssuedBy(String issuedBy) {
		this.issuedBy = issuedBy;
	}

	public String getExpiryDate() {
		return expiryDate;
	}

	public void setExpiryDate(String expiryDate) {
		this.expiryDate = expiryDate;
	}

	public String getExpiryDateen() {
		return expiryDateen;
	}

	public void setExpiryDateen(String expiryDateen) {
		this.expiryDateen = expiryDateen;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPvdcName() {
		return pvdcName;
	}

	public void setPvdcName(String pvdcName) {
		this.pvdcName = pvdcName;
	}

	public String getTdistName() {
		return tdistName;
	}

	public void setTdistName(String tdistName) {
		this.tdistName = tdistName;
	}

	public String getTvdcName() {
		return tvdcName;
	}

	public void setTvdcName(String tvdcName) {
		this.tvdcName = tvdcName;
	}

	public String getCitidistName() {
		return citidistName;
	}

	public void setCitidistName(String citidistName) {
		this.citidistName = citidistName;
	}

	String shareid, shareCertNo, shareFrom,shareTo,totalShareNos,shareRate,shareAmount,shareDate, shareCertificateId;
	public String getShareid() {
		return shareid;
	}

	public void setShareid(String shareid) {
		this.shareid = shareid;
	}

	public String getShareCertificateId() {
		return shareCertificateId;
	}

	public void setShareCertificateId(String shareCertificateId) {
		this.shareCertificateId = shareCertificateId;
	}

	public String getShareCertNo() {
		return shareCertNo;
	}

	public void setShareCertNo(String shareCertNo) {
		this.shareCertNo = shareCertNo;
	}

	public String getShareFrom() {
		return shareFrom;
	}

	public void setShareFrom(String shareFrom) {
		this.shareFrom = shareFrom;
	}

	public String getShareTo() {
		return shareTo;
	}

	public void setShareTo(String shareTo) {
		this.shareTo = shareTo;
	}

	public String getTotalShareNos() {
		return totalShareNos;
	}

	public void setTotalShareNos(String totalShareNos) {
		this.totalShareNos = totalShareNos;
	}

	public String getShareRate() {
		return shareRate;
	}

	public void setShareRate(String shareRate) {
		this.shareRate = shareRate;
	}

	public String getShareAmount() {
		return shareAmount;
	}

	public void setShareAmount(String shareAmount) {
		this.shareAmount = shareAmount;
	}

	public String getShareDate() {
		return shareDate;
	}

	public void setShareDate(String shareDate) {
		this.shareDate = shareDate;
	}

	public String getCusRelation() {
		return cusRelation;
	}

	public void setCusRelation(String cusRelation) {
		this.cusRelation = cusRelation;
	}

	public String getCusRelName() {
		return cusRelName;
	}

	public void setCusRelName(String cusRelName) {
		this.cusRelName = cusRelName;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getFcitizenshipNo() {
		return fcitizenshipNo;
	}

	public void setFcitizenshipNo(String fcitizenshipNo) {
		this.fcitizenshipNo = fcitizenshipNo;
	}

	public String getFremarks() {
		return fremarks;
	}

	public void setFremarks(String fremarks) {
		this.fremarks = fremarks;
	}

	public String getCusJob() {
		return cusJob;
	}

	public void setCusJob(String cusJob) {
		this.cusJob = cusJob;
	}

	public String getCusInstitution() {
		return cusInstitution;
	}

	public void setCusInstitution(String cusInstitution) {
		this.cusInstitution = cusInstitution;
	}

	public String getCusPost() {
		return cusPost;
	}

	public void setCusPost(String cusPost) {
		this.cusPost = cusPost;
	}

	public String getIncomePeryear() {
		return incomePeryear;
	}

	public void setIncomePeryear(String incomePeryear) {
		this.incomePeryear = incomePeryear;
	}

	public String getJremarks() {
		return jremarks;
	}

	public void setJremarks(String jremarks) {
		this.jremarks = jremarks;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String getAccountType() {
		return accountType;
	}

	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}

	public String getBremarks() {
		return bremarks;
	}

	public void setBremarks(String bremarks) {
		this.bremarks = bremarks;
	}

	String cusRelation,cusRelName,dateOfBirth,fcitizenshipNo,fremarks;
	String cusJob, cusInstitution, cusPost, incomePeryear, jremarks;
	String bankName, accountNumber, accountType, bremarks;

	public String getCusCitizenshipNo() {
		return cusCitizenshipNo;
	}

	public void setCusCitizenshipNo(String cusCitizenshipNo) {
		this.cusCitizenshipNo = cusCitizenshipNo;
	}

	public String getPdistName() {
		return pdistName;
	}

	public void setPdistName(String pdistName) {
		this.pdistName = pdistName;
	}

	public String getDistrictCode() {
		return districtCode;
	}

	public void setDistrictCode(String districtCode) {
		this.districtCode = districtCode;
	}

	public String getDistrictName() {
		return districtName;
	}

	public void setDistrictName(String districtName) {
		this.districtName = districtName;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public String getStatusName() {
		return statusName;
	}

	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}

	public String getPid() {
		return pid;
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

	public String getRegistrationDate() {
		return registrationDate;
	}

	public void setRegistrationDate(String registrationDate) {
		this.registrationDate = registrationDate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPdistid() {
		return pdistid;
	}

	public void setPdistid(String pdistid) {
		this.pdistid = pdistid;
	}

	public String getPvdcmunid() {
		return pvdcmunid;
	}

	public void setPvdcmunid(String pvdcmunid) {
		this.pvdcmunid = pvdcmunid;
	}

	public String getPwardno() {
		return pwardno;
	}

	public void setPwardno(String pwardno) {
		this.pwardno = pwardno;
	}

	public String getPcity() {
		return pcity;
	}

	public void setPcity(String pcity) {
		this.pcity = pcity;
	}

	public String getPtole() {
		return ptole;
	}

	public void setPtole(String ptole) {
		this.ptole = ptole;
	}

	public String getTdistid() {
		return tdistid;
	}

	public void setTdistid(String tdistid) {
		this.tdistid = tdistid;
	}

	public String getTvdcmunid() {
		return tvdcmunid;
	}

	public void setTvdcmunid(String tvdcmunid) {
		this.tvdcmunid = tvdcmunid;
	}

	public String getTwardno() {
		return twardno;
	}

	public void setTwardno(String twardno) {
		this.twardno = twardno;
	}

	public String getTcity() {
		return tcity;
	}

	public void setTcity(String tcity) {
		this.tcity = tcity;
	}

	public String getTtole() {
		return ttole;
	}

	public void setTtole(String ttole) {
		this.ttole = ttole;
	}

	
	public String getCitizenshipIssuedFrom() {
		return citizenshipIssuedFrom;
	}

	public void setCitizenshipIssuedFrom(String citizenshipIssuedFrom) {
		this.citizenshipIssuedFrom = citizenshipIssuedFrom;
	}

	public String getTelno() {
		return telno;
	}

	public void setTelno(String telno) {
		this.telno = telno;
	}

	public String getMobno() {
		return mobno;
	}

	public void setMobno(String mobno) {
		this.mobno = mobno;
	}

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}



	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getTypeid() {
		return typeid;
	}

	public void setTypeid(String typeid) {
		this.typeid = typeid;
	}

	public String getStatusid() {
		return statusid;
	}

	public void setStatusid(String statusid) {
		this.statusid = statusid;
	}

	public String getInputter() {
		return inputter;
	}

	public void setInputter(String inputter) {
		this.inputter = inputter;
	}

	public String getAuthorizer() {
		return authorizer;
	}

	public void setAuthorizer(String authorizer) {
		this.authorizer = authorizer;
	}

	public String getInsertStatus() {
		return insertStatus;
	}

	public void setInsertStatus(String insertStatus) {
		this.insertStatus = insertStatus;
	}

	public String getUpdateStatus() {
		return updateStatus;
	}

	public void setUpdateStatus(String updateStatus) {
		this.updateStatus = updateStatus;
	}

	public String getDelStatus() {
		return delStatus;
	}

	public void setDelStatus(String delStatus) {
		this.delStatus = delStatus;
	}

	

	
}
