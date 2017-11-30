package com.sahakari.daoimpl;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.sahakari.dao.CustomerDao;
import com.sahakari.dbconnection.DBConnection;
import com.sahakari.model.CustomerModal;
import com.sahakari.model.CustomerModel;

public class CustomerDaoImpl implements CustomerDao {
	PreparedStatement ps=null;
	Connection con=null;
	
	
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
		String query="insert into customertbl ";
		try{
			ps=con.prepareStatement(query);
			ps.executeQuery();
		}
		catch(Exception e){
			System.out.println(e);
		}
		return false;
	}
}
