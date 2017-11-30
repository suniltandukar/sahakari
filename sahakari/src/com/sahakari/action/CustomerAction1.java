package com.sahakari.action;

import com.sahakari.dao.CustomerDao;
import com.sahakari.daoimpl.CustomerDaoImpl;
import com.sahakari.model.CustomerModal;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class CustomerAction1 {
	CustomerModal modal1=new CustomerModal();
	public int addcustomerdetail(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		try (PrintWriter out = response.getWriter()) {
            System.out.print("inside servlet");
            File file;
            int maxSize = 500000000 * 1000;
            int maxFactSize = 500000000 * 1000;
            String path = "D://projects//SahakariImages";
            String type = request.getContentType(); //Get the file

            if (type.contains("multipart/form-data")) {
                //check the file is multipart or not                
                DiskFileItemFactory disFact = new DiskFileItemFactory();
                disFact.setSizeThreshold(maxFactSize);
                disFact.setRepository(new File("c:\\temp")); //Store file temporarily
                ServletFileUpload upload = new ServletFileUpload(disFact); //used to upload file
                upload.setSizeMax(maxSize);
                List lis = upload.parseRequest(request);
                Iterator itr = lis.iterator();
                while (itr.hasNext()) {
                    FileItem item = (FileItem) itr.next();
                    if (!item.isFormField()) {
                        String image = item.getName();
                        file = new File(path, image);
                        modal1.setImage(image);
                        if (file.exists()) {
                            out.println("file already exist.");
                            out.println("<a href=customerForm.jsp>" + "Go Back" + "</a>");
                        } else {
                            item.write(file);
                        }
                    } else {
                        String fieldname = item.getFieldName();
                        String fieldvalue = item.getString();
                        if (fieldname.equals("id1")) {
                            System.out.print(fieldvalue);
                            String id1 = fieldvalue;
                            modal1.setId1(id1);
                        } else if (fieldname.equals("id2")) {
                            System.out.print(fieldvalue);
                            String id2 = fieldvalue;
                            modal1.setId2(id2);
                        } else if (fieldname.equals("customer_code")) {
                            System.out.print(fieldvalue);
                            String customer_code = fieldvalue;
                            modal1.setCustomerCode(customer_code);
                        } else if (fieldname.equals("mnemonic")) {
                            System.out.print(fieldvalue);
                            String mnemonic = fieldvalue;
                            modal1.setMnemonic(mnemonic);
                        } else if (fieldname.equals("short_name")) {
                            System.out.print(fieldvalue);
                            String short_name = fieldvalue;
                            modal1.setShortName(short_name);
                        } else if (fieldname.equals("name1")) {
                            System.out.print(fieldvalue);
                            String name1 = fieldvalue;
                            modal1.setName1(name1);
                        } else if (fieldname.equals("name2")) {
                            System.out.print(fieldvalue);
                            String name2 = fieldvalue;
                            modal1.setName2(name2);
                        } else if (fieldname.equals("houseOwnerName")) {
                            System.out.print(fieldvalue);
                            String houseOwnerName = fieldvalue;
                            modal1.setHouseOwnerName(houseOwnerName);
                        } else if (fieldname.equals("houseOwnerMobileNumber")) {
                            String houseOwnerMobileNumber = fieldvalue;
                            modal1.setHouseOwnerMobileNumber(houseOwnerMobileNumber);
                        } else if (fieldname.equals("houseOwnerEmail")) {
                            String houseOwnerEmail = fieldvalue;
                            modal1.setHouseOwnerEmail(houseOwnerEmail);

                        } else if (fieldname.equals("relationalCode")) {
                            String relationalCode = fieldvalue;
                            modal1.setRelationalCode(relationalCode);

                        } else if (fieldname.equals("relationalCustomer")) {
                            String relationalCustomer = fieldvalue;
                            modal1.setRelationalCustomer(relationalCustomer);
                        } else if (fieldname.equals("reverseRelationCode")) {
                            String reverseRelationCode = fieldvalue;
                            modal1.setReverseRelationCode(reverseRelationCode);

                        } else if (fieldname.equals("relationshipOfficer")) {
                            String relationshipOfficer = fieldvalue;
                            modal1.setRelationshipOfficer(relationshipOfficer);

                        } else if (fieldname.equals("otherOfficer")) {
                            String otherOfficer = fieldvalue;
                            modal1.setOtherOfficer(otherOfficer);

                        } else if (fieldname.equals("nearByRenownedLocation")) {
                            String nearByRenownedLocation = fieldvalue;
                            modal1.setNearByRenownedLocation(nearByRenownedLocation);

                        } else if (fieldname.equals("industry")) {
                            String industry = fieldvalue;
                            modal1.setIndustry(industry);

                        } else if (fieldname.equals("country")) {
                            String country = fieldvalue;
                            modal1.setCountry(country);

                        } else if (fieldname.equals("customerStatus")) {
                            String customerStatus = fieldvalue;
                            modal1.setCustomerStatus(customerStatus);

                        } else if (fieldname.equals("residence")) {
                            String residence = fieldvalue;
                            modal1.setResidence(residence);

                        } else if (fieldname.equals("contactDate")) {
                            String contactDate = fieldvalue;
                            modal1.setContactDate(contactDate);

                        } else if (fieldname.equals("introducer")) {
                            String introducer = fieldvalue;
                            modal1.setIntroducer(introducer);

                        } else if (fieldname.equals("reviewFrequency")) {
                            String reviewFrequency = fieldvalue;
                            modal1.setReviewFrequency(reviewFrequency);

                        } else if (fieldname.equals("customerLiability")) {
                            String customerLiability = fieldvalue;
                            modal1.setCustomerLiability(customerLiability);

                        } else if (fieldname.equals("sector")) {
                            String sector = fieldvalue;
                            modal1.setSector(sector);

                        } else if (fieldname.equals("language")) {
                            String language = fieldvalue;
                            modal1.setLanguage(language);

                        } else if (fieldname.equals("givenDocumentType")) {
                            String givenDocumentType = fieldvalue;
                            modal1.setGivenDocumentType(givenDocumentType);

                        } else if (fieldname.equals("dateOfBirth")) {
                            String dateOfBirth = fieldvalue;
                            modal1.setDateOfBirth(dateOfBirth);

                        } else if (fieldname.equals("maritalStatus")) {
                            String maritalStatus = fieldvalue;
                            modal1.setMaritalStatus(maritalStatus);

                        } else if (fieldname.equals("numberOfDependents")) {
                            String numberOfDependents = fieldvalue;
                            modal1.setNumberOfDependents(numberOfDependents);

                        } else if (fieldname.equals("phone1")) {
                            String phone1 = fieldvalue;
                            modal1.setPhone1(phone1);

                        } else if (fieldname.equals("sms")) {
                            String sms = fieldvalue;
                            modal1.setSms(sms);

                        } else if (fieldname.equals("email")) {
                            String email = fieldvalue;
                            modal1.setEmail(email);

                        } else if (fieldname.equals("employmentStatus")) {
                            String employmentStatus = fieldvalue;
                            modal1.setEmploymentStatus(employmentStatus);

                        } else if (fieldname.equals("occupation")) {
                            String occupation = fieldvalue;
                            modal1.setOccupation(occupation);

                        } else if (fieldname.equals("employersName")) {
                            String employersName = fieldvalue;
                            modal1.setEmployersName(employersName);

                        } else if (fieldname.equals("employersAddress")) {
                            String employersAddress = fieldvalue;
                            modal1.setEmployersAddress(employersAddress);

                        } else if (fieldname.equals("employersBuss")) {
                            String employersBuss = fieldvalue;
                            modal1.setEmployersBuss(employersBuss);

                        } else if (fieldname.equals("employmentStart")) {
                            String employmentStart = fieldvalue;
                            modal1.setEmploymentStart(employmentStart);

                        } else if (fieldname.equals("customerCurrency")) {
                            String customerCurrency = fieldvalue;
                            modal1.setCustomerCurrency(customerCurrency);

                        } else if (fieldname.equals("salary")) {
                            String salary = fieldvalue;
                            modal1.setSalary(salary);

                        } else if (fieldname.equals("annualBonus")) {
                            String annualBonus = fieldvalue;
                            modal1.setAnnualBonus(annualBonus);

                        } else if (fieldname.equals("salaryDateFrequency")) {
                            String salaryDateFrequency = fieldvalue;
                            modal1.setSalaryDateFrequency(salaryDateFrequency);

                        } else if (fieldname.equals("netMonthlyIn")) {
                            String netMonthlyIn = fieldvalue;
                            modal1.setNetMonthlyIn(netMonthlyIn);

                        } else if (fieldname.equals("netMonthlyOut")) {
                            String netMonthlyOut = fieldvalue;
                            modal1.setNetMonthlyOut(netMonthlyOut);

                        } else if (fieldname.equals("residenceStatus")) {
                            String residenceStatus = fieldvalue;
                            modal1.setResidenceStatus(residenceStatus);

                        } else if (fieldname.equals("residenceSince")) {
                            String residenceSince = fieldvalue;
                            modal1.setResidenceSince(residenceSince);

                        } else if (fieldname.equals("spokenLanguage")) {
                            String spokenLanguage = fieldvalue;
                            modal1.setSpokenLanguage(spokenLanguage);

                        } else if (fieldname.equals("recordStatus")) {
                            String recordStatus = fieldvalue;
                            modal1.setRecordStatus(recordStatus);

                        } else if (fieldname.equals("currencyNumber")) {
                            String currencyNumber = fieldvalue;
                            modal1.setCurrencyNumber(currencyNumber);

                        } else if (fieldname.equals("inputer")) {
                            String inputer = fieldvalue;
                            modal1.setInputer(inputer);

                        } else if (fieldname.equals("dateTime")) {
                            String dateTime = fieldvalue;
                            modal1.setDateTime(dateTime);

                        } else if (fieldname.equals("authoriser")) {
                            String authoriser = fieldvalue;
                            modal1.setAuthoriser(authoriser);

                        } else if (fieldname.equals("coCode")) {
                            String coCode = fieldvalue;
                            modal1.setCoCode(coCode);

                        } else if (fieldname.equals("deptarmentCode")) {
                            String deptarmentCode = fieldvalue;
                            modal1.setDeptarmentCode(deptarmentCode);

                        } else if (fieldname.equals("auditorCode")) {
                            String auditorCode = fieldvalue;
                            modal1.setAuditorCode(auditorCode);

                        } else if (fieldname.equals("auditDateCode")) {
                            String auditDateCode = fieldvalue;
                            modal1.setAuditDateTime(auditDateCode);

                        } else if (fieldname.equals("postingRestrict")) {
                            String postingRestrict = fieldvalue;
                            modal1.setPostingRestrict(postingRestrict);

                        } else if (fieldname.equals("dispoOfficer")) {
                            String dispoOfficer = fieldvalue;
                            modal1.setDispoOfficer(dispoOfficer);

                        } else if (fieldname.equals("postCode")) {
                            String postCode = fieldvalue;
                            modal1.setPostCode(postCode);

                        } else if (fieldname.equals("issuesCheques")) {
                            String issuesCheques = fieldvalue;
                            modal1.setIssuesCheques(issuesCheques);

                        } else if (fieldname.equals("residenceRegion")) {
                            String residenceRegion = fieldvalue;
                            modal1.setResidenceRegion(residenceRegion);

                        } else if (fieldname.equals("companyBook")) {
                            String companyBook = fieldvalue;
                            modal1.setCompanyBook(companyBook);

                        } else if (fieldname.equals("assetClass")) {
                            String assetClass = fieldvalue;
                            modal1.setAssetClass(assetClass);

                        } else if (fieldname.equals("customerRating")) {
                            String customerRating = fieldvalue;
                            modal1.setCustomerRating(customerRating);

                        } else if (fieldname.equals("title")) {
                            String title = fieldvalue;
                            modal1.setTitle(title);

                        } else if (fieldname.equals("givenName")) {
                            String givenName = fieldvalue;
                            modal1.setGivenName(givenName);

                        } else if (fieldname.equals("familyName")) {
                            String familyName = fieldvalue;
                            modal1.setFamilyName(familyName);

                        } else if (fieldname.equals("gender")) {
                            String gender = fieldvalue;
                            modal1.setGender(gender);

                        } else if (fieldname.equals("commType")) {
                            String commType = fieldvalue;
                            modal1.setCommType(commType);

                        } else if (fieldname.equals("prefChannel")) {
                            String prefChannel = fieldvalue;
                            modal1.setPrefChannel(prefChannel);

                        } else if (fieldname.equals("interest")) {
                            String interest = fieldvalue;
                            modal1.setInterest(interest);

                        } else if (fieldname.equals("fax1")) {
                            String fax1 = fieldvalue;
                            modal1.setFax1(fax1);

                        } else if (fieldname.equals("reserved1")) {
                            String reserved1 = fieldvalue;
                            modal1.setReserved1(reserved1);

                        } else if (fieldname.equals("reserved2")) {
                            String reserved2 = fieldvalue;
                            modal1.setReserved2(reserved2);

                        } else if (fieldname.equals("reserved3")) {
                            String reserved3 = fieldvalue;
                            modal1.setReserved3(reserved3);

                        } else if (fieldname.equals("reserved4")) {
                            String reserved4 = fieldvalue;
                            modal1.setReserved4(reserved4);

                        } else if (fieldname.equals("reserved5")) {
                            String reserved5 = fieldvalue;
                            modal1.setReserved5(reserved5);

                        } else if (fieldname.equals("reserved6")) {
                            String reserved6 = fieldvalue;
                            modal1.setReserved6(reserved6);

                        } else if (fieldname.equals("reserved7")) {
                            String reserved7 = fieldvalue;
                            modal1.setReserved7(reserved7);

                        } else if (fieldname.equals("reserved8")) {
                            String reserved8 = fieldvalue;
                            modal1.setReserved8(reserved8);

                        } else if (fieldname.equals("reserved9")) {
                            String reserved9 = fieldvalue;
                            modal1.setReserved9(reserved9);

                        } else if (fieldname.equals("reserved10")) {
                            String reserved10 = fieldvalue;
                            modal1.setReserved10(reserved10);

                        } else if (fieldname.equals("reserved11")) {
                            String reserved11 = fieldvalue;
                            modal1.setReserved11(reserved11);

                        } else if (fieldname.equals("reserved12")) {
                            String reserved12 = fieldvalue;
                            modal1.setReserved12(reserved12);

                        } else if (fieldname.equals("reserved13")) {
                            String reserved13 = fieldvalue;
                            modal1.setReserved13(reserved13);

                        } else if (fieldname.equals("reserved14")) {
                            String reserved14 = fieldvalue;
                            modal1.setReserved14(reserved14);

                        } else if (fieldname.equals("reserved15")) {
                            String reserved15 = fieldvalue;
                            modal1.setReserved15(reserved15);

                        } else if (fieldname.equals("reserved16")) {
                            String reserved16 = fieldvalue;
                            modal1.setReserved16(reserved16);

                        } else if (fieldname.equals("reserved17")) {
                            String reserved17 = fieldvalue;
                            modal1.setReserved17(reserved17);

                        } else if (fieldname.equals("reserved18")) {
                            String reserved18 = fieldvalue;
                            modal1.setReserved18(reserved18);

                        } else if (fieldname.equals("reserved19")) {
                            String reserved19 = fieldvalue;
                            modal1.setReserved19(reserved19);

                        } else if (fieldname.equals("reserved20")) {
                            String reserved20 = fieldvalue;
                            modal1.setReserved20(reserved20);

                        } else if (fieldname.equals("reserved21")) {
                            String reserved21 = fieldvalue;
                            modal1.setReserved21(reserved21);

                        } else if (fieldname.equals("reserved22")) {
                            String reserved22 = fieldvalue;
                            modal1.setReserved22(reserved22);

                        } else if (fieldname.equals("reserved23")) {
                            String reserved23 = fieldvalue;
                            modal1.setReserved23(reserved23);

                        } else if (fieldname.equals("reserved24")) {
                            String reserved24 = fieldvalue;
                            modal1.setReserved24(reserved24);

                        } else if (fieldname.equals("dateLastVerified")) {
                            String dateLastVerified = fieldvalue;
                            modal1.setDateLastVerified(dateLastVerified);

                        } else if (fieldname.equals("calcRiskClass")) {
                            String calcRiskClass = fieldvalue;
                            modal1.setCalcRiskClass(calcRiskClass);

                        } else if (fieldname.equals("manualRiskClass")) {
                            String manualRiskClass = fieldvalue;
                            modal1.setManualRiskClass(manualRiskClass);

                        } else if (fieldname.equals("overrideReason")) {
                            String overrideReason = fieldvalue;
                            modal1.setOverrideReason(overrideReason);

                        } else if (fieldname.equals("taxId")) {
                            String taxId = fieldvalue;
                            modal1.setTaxId(taxId);

                        } else if (fieldname.equals("riskLevel")) {
                            String riskLevel = fieldvalue;
                            modal1.setRiskLevel(riskLevel);

                        } else if (fieldname.equals("riskTolorence")) {
                            String riskTolorence = fieldvalue;
                            modal1.setRiskTolorence(riskTolorence);

                        } else if (fieldname.equals("riskFromDate")) {
                            String riskFromDate = fieldvalue;
                            modal1.setRiskFromDate(riskFromDate);

                        } else if (fieldname.equals("lastKycReviewDate")) {
                            String lastKycReviewDate = fieldvalue;
                            modal1.setLastKycReviewDate(lastKycReviewDate);

                        } else if (fieldname.equals("manualNextKycReviewDate")) {
                            String manualNextKycReviewDate = fieldvalue;
                            modal1.setManualNextKycReviewDate(manualNextKycReviewDate);

                        } else if (fieldname.equals("autoNextSuitReviewDate")) {
                            String autoNextSuitReviewDate = fieldvalue;
                            modal1.setAutoNextSuitReviewDate(autoNextSuitReviewDate);

                        } else if (fieldname.equals("kycRelationship")) {
                            String kycRelationship = fieldvalue;
                            modal1.setKycRelationship(kycRelationship);

                        } else if (fieldname.equals("secureMessage")) {
                            String secureMessage = fieldvalue;
                            modal1.setSecureMessage(secureMessage);

                        } else if (fieldname.equals("almCheck")) {
                            String almCheck = fieldvalue;
                            modal1.setAlmCheck(almCheck);

                        } else if (fieldname.equals("almResult")) {
                            String almResult = fieldvalue;
                            modal1.setAlmResult(almResult);

                        } else if (fieldname.equals("lastAlmResultDate")) {
                            String lastAlmResultDate = fieldvalue;
                            modal1.setLastAlmResultDate(lastAlmResultDate);

                        } else if (fieldname.equals("kycComplete")) {
                            String kycComplete = fieldvalue;
                            modal1.setKycComplete(kycComplete);

                        } else if (fieldname.equals("interestBankingService")) {
                            String interestBankingService = fieldvalue;
                            modal1.setInterestBankingService(interestBankingService);

                        } else if (fieldname.equals("mobileBankingService")) {
                            String mobileBankingService = fieldvalue;
                            modal1.setMobileBankingService(mobileBankingService);

                        } else if (fieldname.equals("tstate")) {
                            String tstate = fieldvalue;
                            modal1.setTstate(tstate);

                        } else if (fieldname.equals("tdistrict")) {
                            String tdistrict = fieldvalue;
                            modal1.setTdistrict(tdistrict);

                        } else if (fieldname.equals("tmunicipality_village")) {
                            String tmunicipality_village = fieldvalue;
                            modal1.setTmunicipalityVillage(tmunicipality_village);

                        } else if (fieldname.equals("tward_number")) {
                            String tward_number = fieldvalue;
                            modal1.setTwardNo(tward_number);

                        } else if (fieldname.equals("ttole")) {
                            String ttole = fieldvalue;
                            modal1.setTtole(ttole);

                        } else if (fieldname.equals("tstreet_address")) {
                            String tstreet_address = fieldvalue;
                            modal1.setTstreetAddress(tstreet_address);

                        } else if (fieldname.equals("pstate")) {
                            String pstate = fieldvalue;
                            modal1.setPstate(pstate);

                        } else if (fieldname.equals("pdistrict")) {
                            String pdistrict = fieldvalue;
                            modal1.setPdistrict(pdistrict);

                        } else if (fieldname.equals("pmunicipality_village")) {
                            String pmunicipality_village = fieldvalue;
                            modal1.setPmunicipalityVillage(pmunicipality_village);

                        } else if (fieldname.equals("pward_number")) {
                            String pward_number = fieldvalue;
                            modal1.setPwardNo(pward_number);

                        } else if (fieldname.equals("ptole")) {
                            String ptole = fieldvalue;
                            modal1.setPtole(ptole);

                        } else if (fieldname.equals("pstreet_address")) {
                            String pstreet_address = fieldvalue;
                            modal1.setPstreetAddress(pstreet_address);

                        }

                    }
                }

            }
            CustomerDao c=new CustomerDaoImpl();
            
            int success = c.customerForm(modal1);
          
            return success;
        }
		
	}
	

}
