package com.sahakari.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.Connection;
import com.sahakari.dao.CustomerDao;
import com.sahakari.dbconnection.DBConnection;
import com.sahakari.model.CustomerModal;
import com.sahakari.model.CustomerModel;

public class CustomerDaoImpl implements CustomerDao {
	PreparedStatement ps=null;
	Connection con=null;
	Statement stmt=null;
	ResultSet rs=null;
	public boolean checkMemberId(String id){
		int i;
		String query="select pid from customertbl where pid=?";
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, id);
			rs=ps.executeQuery();
			if(rs.next()){
				con.close();
				ps=null;
				rs=null;
				return true;
			}
		}catch(Exception e){
			System.out.println(e);
		}
		return false;
	}
	public int customerForm(CustomerModal modal1) throws SQLException  {
        int success = 0;
        System.out.print("insert vitra daoma");
        con=DBConnection.getConnection();

        String query = "insert into customertable1 values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement pst = con.prepareStatement(query);
        pst.setString(1, modal1.getId1());
        pst.setString(2, modal1.getId2());
        pst.setString(3, modal1.getCustomerCode());
        pst.setString(4, modal1.getMnemonic());
        pst.setString(5, modal1.getShortName());
        pst.setString(6, modal1.getName1());
        pst.setString(7, modal1.getName2());
        pst.setString(8, modal1.getHouseOwnerName());
        pst.setString(9, modal1.getNearByRenownedLocation());
        pst.setString(10, modal1.getHouseOwnerMobileNumber());
        pst.setString(11, modal1.getHouseOwnerEmail());
        pst.setString(12, modal1.getRelationalCode());
        pst.setString(13, modal1.getRelationalCustomer());
        pst.setString(14, modal1.getReverseRelationCode());
        pst.setString(15, modal1.getRelationshipOfficer());
        pst.setString(16, modal1.getOtherOfficer());
        pst.setString(17, modal1.getSector());
        pst.setString(18, modal1.getIndustry());
        pst.setString(19, modal1.getCountry());
        pst.setString(20, modal1.getCustomerStatus());
        pst.setString(21, modal1.getResidence());
        pst.setString(22, modal1.getContactDate());
        pst.setString(23, modal1.getIntroducer());
        pst.setString(24, modal1.getReviewFrequency());
        pst.setString(25, modal1.getCustomerLiability());
        pst.executeUpdate();

        String qry1 = "insert into customertable2 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement pst1 = con.prepareCall(qry1);
        pst1.setString(1, modal1.getId1());
        pst1.setString(2, modal1.getLanguage());
        pst1.setString(3, modal1.getGivenDocumentType());
        pst1.setString(4, modal1.getDateOfBirth());
        pst1.setString(5, modal1.getMaritalStatus());
        pst1.setString(6, modal1.getNumberOfDependents());
        pst1.setString(7, modal1.getPhone1());
        pst1.setString(8, modal1.getSms());
        pst1.setString(9, modal1.getEmail());
        pst1.setString(10, modal1.getEmploymentStatus());
        pst1.setString(11, modal1.getOccupation());
        pst1.setString(12, modal1.getEmployersName());
        pst1.setString(13, modal1.getEmployersAddress());
        pst1.setString(14, modal1.getEmployersBuss());
        pst1.setString(15, modal1.getEmploymentStart());
        pst1.setString(16, modal1.getCustomerCurrency());
        pst1.setString(17, modal1.getSalary());
        pst1.setString(18, modal1.getAnnualBonus());
        pst1.setString(19, modal1.getSalaryDateFrequency());
        pst1.setString(20, modal1.getNetMonthlyIn());
        pst1.setString(21, modal1.getNetMonthlyOut());
        pst1.setString(22, modal1.getResidenceStatus());
        pst1.setString(23, modal1.getResidenceSince());
        pst1.setString(24, modal1.getSpokenLanguage());
        pst1.setString(25, modal1.getRecordStatus());
        pst1.executeUpdate();

        String qry2 = "insert into customertable3 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement pst2 = con.prepareStatement(qry2);
        pst2.setString(1, modal1.getId1());
        pst2.setString(2, modal1.getCurrencyNumber());
        pst2.setString(3, modal1.getInputer());
        pst2.setString(4, modal1.getDateTime());
        pst2.setString(5, modal1.getAuthoriser());
        pst2.setString(6, modal1.getCoCode());
        pst2.setString(7, modal1.getDeptarmentCode());
        pst2.setString(8, modal1.getAuditorCode());
        pst2.setString(9, modal1.getAuditDateTime());
        pst2.setString(10, modal1.getPostingRestrict());
        pst2.setString(11, modal1.getDispoOfficer());
        pst2.setString(12, modal1.getPostCode());
        pst2.setString(13, modal1.getIssuesCheques());
        pst2.setString(14, modal1.getResidenceRegion());
        pst2.setString(15, modal1.getCompanyBook());
        pst2.setString(16, modal1.getAssetClass());
        pst2.setString(17, modal1.getCustomerRating());
        pst2.setString(18, modal1.getTitle());
        pst2.setString(19, modal1.getGivenName());
        pst2.setString(20, modal1.getFamilyName());
        pst2.setString(21, modal1.getGender());
        pst2.setString(22, modal1.getCommType());
        pst2.setString(23, modal1.getPrefChannel());
        pst2.setString(24, modal1.getInterest());
        pst2.setString(25, modal1.getFax1());
        pst2.executeUpdate();

        String qry3 = "insert into customertable4 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement pst3 = con.prepareStatement(qry3);
        pst3.setString(1, modal1.getId1());
        pst3.setString(2, modal1.getReserved1());
        pst3.setString(3, modal1.getReserved2());
        pst3.setString(4, modal1.getReserved3());
        pst3.setString(5, modal1.getReserved4());
        pst3.setString(6, modal1.getReserved5());
        pst3.setString(7, modal1.getReserved6());
        pst3.setString(8, modal1.getReserved7());
        pst3.setString(9, modal1.getReserved8());
        pst3.setString(10, modal1.getReserved9());
        pst3.setString(11, modal1.getReserved10());
        pst3.setString(12, modal1.getReserved11());
        pst3.setString(13, modal1.getReserved12());
        pst3.setString(14, modal1.getReserved13());
        pst3.setString(15, modal1.getReserved14());
        pst3.setString(16, modal1.getReserved15());
        pst3.setString(17, modal1.getReserved16());
        pst3.setString(18, modal1.getReserved17());
        pst3.setString(19, modal1.getReserved18());
        pst3.setString(20, modal1.getReserved19());
        pst3.setString(21, modal1.getReserved20());
        pst3.setString(22, modal1.getReserved21());
        pst3.setString(23, modal1.getReserved22());
        pst3.setString(24, modal1.getReserved23());
        pst3.setString(25, modal1.getReserved24());
        pst3.executeUpdate();

        String qry4 = "insert into customertable5 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement pst4 = con.prepareStatement(qry4);
        pst4.setString(1, modal1.getId1());
        pst4.setString(2, modal1.getDateLastVerified());
        pst4.setString(3, modal1.getCalcRiskClass());
        pst4.setString(4, modal1.getManualRiskClass());
        pst4.setString(5, modal1.getOverrideReason());
        pst4.setString(6, modal1.getTaxId());
        pst4.setString(7, modal1.getRiskLevel());
        pst4.setString(8, modal1.getRiskTolorence());
        pst4.setString(9, modal1.getRiskFromDate());
        pst4.setString(10, modal1.getLastKycReviewDate());
        pst4.setString(11, modal1.getManualNextKycReviewDate());
        pst4.setString(12, modal1.getAutoNextSuitReviewDate());
        pst4.setString(13, modal1.getKycRelationship());
        pst4.setString(14, modal1.getSecureMessage());
        pst4.setString(15, modal1.getAlmCheck());
        pst4.setString(16, modal1.getAlmResult());
        pst4.setString(17, modal1.getLastAlmResultDate());
        pst4.setString(18, modal1.getKycComplete());
        pst4.setString(19, modal1.getInterestBankingService());
        pst4.setString(20, modal1.getMobileBankingService());
        pst4.executeUpdate();

        String qry5 = "insert into customertable6 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement pst5 = con.prepareStatement(qry5);
        pst5.setString(1, modal1.getId1());
        pst5.setString(2, modal1.getTstate());
        System.out.println(modal1.getTstate());
        pst5.setString(3, modal1.getTdistrict());
        pst5.setString(4, modal1.getTmunicipalityVillage());
        pst5.setString(5, modal1.getTwardNo());
        pst5.setString(6, modal1.getTtole());
        pst5.setString(7, modal1.getTstreetAddress());
        pst5.setString(8, modal1.getPstate());
        pst5.setString(9, modal1.getPdistrict());
        pst5.setString(10, modal1.getPmunicipalityVillage());
        pst5.setString(11, modal1.getPwardNo());
        pst5.setString(12, modal1.getPtole());
        pst5.setString(13, modal1.getPstreetAddress());
        pst5.setString(14, modal1.getImage());

        success = pst5.executeUpdate();
        return success;

    }
	public boolean insertCustomer(CustomerModel cm){
		String query="insert into customertbl(memberid, registrationDate, name, gender, pdistid, pvdcmunid, pwardno, pcity, ptole, tdistid, tvdcmunid, twardno, tcity,ttole,citizenshipNo,citizenshipIssuedFrom,telno, mobno,fatherName,spouseName,dob,typeid,statusid,inputter,authorizer,insertStatus, updateStatus, delStatus, address, pid) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ";
		try{
			int i=0;
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, cm.getMemberid());
			ps.setString(2, cm.getRegistrationDate());
			ps.setString(3, cm.getName());
			ps.setString(4, cm.getGender());
			ps.setString(5, cm.getPdistid());
			ps.setString(6, cm.getPvdcmunid());
			ps.setString(7, cm.getPwardno());
			ps.setString(8, cm.getPcity());
			ps.setString(9, cm.getPtole());
			ps.setString(10, cm.getTdistid());
			ps.setString(11, cm.getTvdcmunid());
			ps.setString(12, cm.getTwardno());
			ps.setString(13, cm.getTcity());
			ps.setString(14, cm.getTtole());
			ps.setString(15, cm.getCusCitizenshipNo());
			ps.setString(16, cm.getCitizenshipIssuedFrom());
			ps.setString(17, cm.getTelno());
			ps.setString(18, cm.getMobno());
			ps.setString(19, cm.getFatherName());
			ps.setString(20, cm.getSpouseName());
			ps.setString(21, cm.getDob());
			ps.setString(22, cm.getTypeid());
			ps.setString(23, cm.getStatusid());
			ps.setString(24, cm.getInputter());
			ps.setString(25, cm.getAuthorizer());
			ps.setString(26, cm.getInsertStatus());
			ps.setString(27, cm.getUpdateStatus());
			ps.setString(28, cm.getDelStatus());
			ps.setString(29, cm.getAddress());
			ps.setString(30, cm.getPid());
			i=ps.executeUpdate();
			if(i>0){
				return true;
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return false;
	}
	public boolean insertCustomerJob(CustomerModel cm){
		int i;
		String maxpid="(SELECT max(pid) from customertbl)";
		String query="insert into jobdetail(pid,cusJob,cusInstitution,cusPost,incomePeryear,remarks, inputter,authorizer) values("+maxpid+",?,?,?,?,?,?,?)";
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, cm.getCusJob());
			ps.setString(2, cm.getCusInstitution());
			ps.setString(3, cm.getCusPost());
			ps.setString(4, cm.getIncomePeryear());
			ps.setString(5, cm.getJremarks());
			ps.setString(6, cm.getInputter());
			ps.setString(7, cm.getAuthorizer());
			i=ps.executeUpdate();
			if(i>0){
				return true;
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return false;
	}
	public boolean insertCustomerFamily(CustomerModel cm){
		int i;
		String maxpid="(SELECT max(pid) from customertbl)";
		String query="insert into familydetail(pid, cusRelation, cusRelName, dateOfBirth, citizenshipNo, remarks, inputter, authorizer) values("+maxpid+",?,?,?,?,?,?,?)";
		
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, cm.getCusRelation());
			ps.setString(2, cm.getCusRelName());
			ps.setString(3, cm.getDateOfBirth());
			ps.setString(4, cm.getFcitizenshipNo());
			ps.setString(5,cm.getFremarks());
			ps.setString(6, cm.getInputter());
			ps.setString(7, cm.getAuthorizer());
			i=ps.executeUpdate();
			if(i>0){
				return true;
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return false;
	}
	public boolean insertCustomerBank(CustomerModel cm){
		int i;
		String maxpid="(SELECT max(pid) from customertbl)";
		String query="insert into bankaccountdetail(pid, bankName, accountNumber, accountType, remarks, inputter, authorizer) values("+maxpid+",?,?,?,?,?,?)";
		
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, cm.getBankName());
			ps.setString(2, cm.getAccountNumber());
			ps.setString(3, cm.getAccountType());
			ps.setString(4, cm.getBremarks());
			ps.setString(5, cm.getInputter());
			ps.setString(6, cm.getAuthorizer());
			i=ps.executeUpdate();
			if(i>0){
				return true;
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return false;
	}
	public boolean deleteCustomerDao(String pid)
	{
		int rs[];
		String query="delete from customertbl where pid='"+pid+"'";
		String query1="delete from familydetail where pid='"+pid+"'";
		String query2="delete from jobdetail where pid='"+pid+"'";
		String query3="delete from bankaccountdetail where pid='"+pid+"'";
		
		try {
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			stmt.addBatch(query);
			stmt.addBatch(query1);
			stmt.addBatch(query2);
			stmt.addBatch(query3);
			rs=stmt.executeBatch();
			if(rs.length==4)
			{
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("deleteCustomerDao");
		}
		
		return false;
	}
	public boolean updateCustomer(String pid, CustomerModel cm){
		String query="update customertbl set memberid=?, registrationDate=?, name=?, gender=?, pdistid=?, pvdcmunid=?, pwardno=?, pcity=?, ptole=?, tdistid=?, tvdcmunid=?, twardno=?, tcity=?,ttole=?,citizenshipNo=?,citizenshipIssuedFrom=?,telno=?, mobno=?,fatherName=?,spouseName=?,dob=?,typeid=?,statusid=?,inputter=?,authorizer=?,insertStatus=?, updateStatus=?, delStatus=?, address=? where pid='"+pid+"'";
		try{
			int i=0;
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, cm.getMemberid());
			ps.setString(2, cm.getRegistrationDate());
			ps.setString(3, cm.getName());
			ps.setString(4, cm.getGender());
			ps.setString(5, cm.getPdistid());
			ps.setString(6, cm.getPvdcmunid());
			ps.setString(7, cm.getPwardno());
			ps.setString(8, cm.getPcity());
			ps.setString(9, cm.getPtole());
			ps.setString(10, cm.getTdistid());
			ps.setString(11, cm.getTvdcmunid());
			ps.setString(12, cm.getTwardno());
			ps.setString(13, cm.getTcity());
			ps.setString(14, cm.getTtole());
			ps.setString(15, cm.getCusCitizenshipNo());
			ps.setString(16, cm.getCitizenshipIssuedFrom());
			ps.setString(17, cm.getTelno());
			ps.setString(18, cm.getMobno());
			ps.setString(19, cm.getFatherName());
			ps.setString(20, cm.getSpouseName());
			ps.setString(21, cm.getDob());
			ps.setString(22, cm.getTypeid());
			ps.setString(23, cm.getStatusid());
			ps.setString(24, cm.getInputter());
			ps.setString(25, cm.getAuthorizer());
			ps.setString(26, cm.getInsertStatus());
			ps.setString(27, cm.getUpdateStatus());
			ps.setString(28, cm.getDelStatus());
			ps.setString(29, cm.getAddress());
			i=ps.executeUpdate();
			if(i>0){
				return true;
			}
		}catch(Exception e){
			System.out.println(e);
		}
		return false;
		
	}
	public boolean insertCustomerJob(String pid, CustomerModel cm, String clientdb){
		int i;
		String query="insert into jobdetail (cusJob,cusInstitution,cusPost,incomePeryear,remarks where pid='"+pid+"'";
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, cm.getCusJob());
			ps.setString(2, cm.getCusInstitution());
			ps.setString(3, cm.getCusPost());
			ps.setString(4, cm.getIncomePeryear());
			ps.setString(5, cm.getJremarks());
			i=ps.executeUpdate();
			if(i>0){
				return true;
			}
		}catch(Exception e){
			System.out.println(e);
		}
		
		return false;
	}
	public boolean deleteCustomerRelationBankDetail(String pid){
		int[] i;
		String query="delete from familydetail where pid='"+pid+"'";
		String query1="delete from bankaccountdetail where pid='"+pid+"'";
		String query2="delete from jobdetail where pid='"+pid+"'";
		try{
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			stmt.addBatch(query);
			stmt.addBatch(query1);
			stmt.addBatch(query2);
			i=stmt.executeBatch();
			if(i.length==3){
				System.out.println("relation and bank and job deleted");
				con.close();
				stmt=null;
				return true;
			}
			
		}
		catch(Exception e){
			System.out.println(e);
		}
		return false;
	}
	public void updateCustomerFamily(CustomerModel cm){
		String query="insert into familydetail(pid, cusRelation, cusRelName, dateOfBirth, citizenshipNo, remarks, inputter, authorizer) values(?,?,?,?,?,?,?,?)";
		
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, cm.getPid());
			ps.setString(2, cm.getCusRelation());
			ps.setString(3, cm.getCusRelName());
			ps.setString(4, cm.getDateOfBirth());
			ps.setString(5, cm.getFcitizenshipNo());
			ps.setString(6,cm.getFremarks());
			ps.setString(7, cm.getInputter());
			ps.setString(8, cm.getAuthorizer());
			int i=ps.executeUpdate();
			if(i>0){
				System.out.println("family update successful");
			}
		}
		catch(Exception e){
			System.out.println("update family error "+e);
		}
		System.out.println("family update unsuccessful");
		
	}
	public void updateCustomerBank(CustomerModel cm){
		int i;
	String query="insert into bankaccountdetail(pid, bankName, accountNumber, accountType, remarks,inputter,authorizer) values(?,?,?,?,?,?,?)";
		
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, cm.getPid());
			ps.setString(2, cm.getBankName());
			ps.setString(3, cm.getAccountNumber());
			ps.setString(4, cm.getAccountType());
			ps.setString(5, cm.getBremarks());
			ps.setString(6, cm.getInputter());
			ps.setString(7, cm.getAuthorizer());
		
			i=ps.executeUpdate();
			if(i>0){
				System.out.println("bank update successful");
			}
		}
		catch(Exception e){
			System.out.println("update bank error "+e);
		}
		System.out.println("bank update unsuccessful");
	}
	public void updateCustomerJob(CustomerModel cm){
		String query="insert into jobdetail(pid,cusJob,cusInstitution,cusPost,incomePeryear,remarks,inputter,authorizer) values(?,?,?,?,?,?,?,?)";
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, cm.getPid());
			ps.setString(2, cm.getCusJob());
			ps.setString(3, cm.getCusInstitution());
			ps.setString(4, cm.getCusPost());
			ps.setString(5, cm.getIncomePeryear());
			ps.setString(6, cm.getJremarks());
			ps.setString(7, cm.getInputter());
			ps.setString(8, cm.getAuthorizer());
			int i=ps.executeUpdate();
			if(i>0){
				System.out.println("job update successful");
			}
		}
		catch(Exception e){
			System.out.println("update job error "+e);
		}
		System.out.println("job update unsuccessful");
	}
	public String selectPid(String memberid){
		String pid="";
		String query="select pid from customertbl where memberid=?";
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, memberid);
			rs=ps.executeQuery();
			if(rs.next()){
				pid=rs.getString("pid");
				con.close();
				ps=null;
				rs=null;
				return pid;
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		
		return null;
	}
	public boolean addShareCertificate(CustomerModel cm){
		int i=0;
		String query="insert into shareCertificate (pid,shareCertNo,shareFrom,shareTo,totalShareNos,shareRate,shareAmount,shareDate,inputter,shareid)values(?,?,?,?,?,?,?,?,?,?)";
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, cm.getPid());
			ps.setString(2, cm.getShareCertNo());
			ps.setString(3, cm.getShareFrom());
			ps.setString(4, cm.getShareTo());
			ps.setString(5, cm.getTotalShareNos());
			ps.setString(6, cm.getShareRate());
			ps.setString(7, cm.getShareAmount());
			ps.setString(8, cm.getShareDate());
			ps.setString(9, cm.getInputter());
			ps.setString(10,cm.getShareid());
			i=ps.executeUpdate();
			if(i>0){
				con.close();
				ps=null;
				return true;
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return false;
	}
	public boolean deleteShareCertificate(String id){
		String query="delete from shareCertificate where id=?";
		int i;
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, id);
			i=ps.executeUpdate();
			if(i>0){
				con.close();
				ps=null;
				return true;
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return false;
	}
	public boolean updateShareCertificate(CustomerModel cm){
		String query="update sharecertificate set shareCertNo=?,shareFrom=?,shareTo=?,totalShareNos=?,shareRate=?,shareAmount=?,shareDate=?, shareid=? where id=? ";
		int i;
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, cm.getShareCertNo());
			ps.setString(2, cm.getShareFrom());
			ps.setString(3, cm.getShareTo());
			ps.setString(4, cm.getTotalShareNos());
			ps.setString(5, cm.getShareRate());
			ps.setString(6, cm.getShareAmount());
			ps.setString(7, cm.getShareDate());
			ps.setString(8, cm.getShareid());
			ps.setString(9, cm.getShareCertificateId());
			i=ps.executeUpdate();
			if(i>0){
				con.close();
				ps=null;
				return true;
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return false;
	}
	public String acccountnogen(String memberid)
	{
		String query="select max(accountNumber)+1 as accountNumber from accountstbl where pid='"+memberid+"'";
		con=DBConnection.getConnection();
		try {
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			
			if(rs.next())
			{
				String accountNumber=rs.getString("accountNumber");
				con.close();
				ps.close();
				rs=null;
				return accountNumber;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public boolean addMemberDocumentDetails(CustomerModel cm){
		String query="insert into documentdetails (pid, documentType, documentNumber,issuedDate,issuedDateen,issuedBy,expiryDate,expiryDateen) values (?,?,?,?,?,?,?,?)";
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1,cm.getPid() );
			ps.setString(2, cm.getDocumentType());
			ps.setString(3, cm.getDocumentNumber());
			ps.setString(4, cm.getIssuedDate());
			ps.setString(5, cm.getIssuedDateen());
			ps.setString(6, cm.getIssuedBy());
			ps.setString(7, cm.getExpiryDate());
			ps.setString(8, cm.getExpiryDateen());
			int i=ps.executeUpdate();
			if(i>0){
				con.close();
				ps.close();
				return true;
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return false;
	}
	public boolean updateDocuments(CustomerModel cm)
	{
		String query="update documentdetails set documentType=?, documentNumber=?, issuedBy=?,issedDate=?,issuedDateen=?,expiryDate=?,expiryDateen=? ";
		con=DBConnection.getConnection();
		int rs=0;
		
		try {
			ps=con.prepareStatement(query);
			ps.setString(1, cm.getDocumentType());
			ps.setString(2, cm.getDocumentNumber());
			ps.setString(3, cm.getIssuedBy());
			ps.setString(4, cm.getIssuedDate());
			ps.setString(5, cm.getIssuedDateen());
			ps.setString(6, cm.getExpiryDate());
			ps.setString(7, cm.getExpiryDateen());
			rs=ps.executeUpdate();
			if(rs>0)
			{
				return true;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
