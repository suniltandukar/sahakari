<link rel="import" href="include.jsp">
<div class="breadcrumb-line">
	<nav aria-label="breadcrumb" role="navigation">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><i class="fa fa-home"
				aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Customer</li>
			<li class="breadcrumb-item active" aria-current="page">Add
				Customer</li>
		</ol>
	</nav>
</div>
<div class="panel panel-default">
	<div class="panel-body">
		<form class="form-horizontal" id="form1" method="post"
			enctype="multipart/form-data" action="customer.add">
					<ul class="nav nav-tabs">
						<li><button type="submit" class="btn btn-success"
								form="form1" name="customerForm">Submit</button>&nbsp;&nbsp;&nbsp;</li>
						<li class="active"><a data-toggle="tab" data-target="#1">Tab1</a></li>
						<li><a data-toggle="tab" data-target="#2">Tab2</a></li>
						<li><a data-toggle="tab" data-target="#3">Tab3</a></li>
						<li><a data-toggle="tab" data-target="#4">Reserved</a></li>
						<li><a data-toggle="tab" data-target="#5">Tab5</a></li>
						<li><a data-toggle="tab" data-target="#6">Tab6</a></li>
						<li><a data-toggle="tab" data-target="#7">Tab7</a></li>
					</ul>
					<div class="tab-content">
						<div id="1" class="tab-pane fade in active">
							<table class="table">
								<tr>
									<td><label for="username">@ID.....</label> <input
										class="form-control" type="text" name="id1" /></td>
									<td><label for="usrname">@ID.....</label> <input
										class="form-control" type="text" name="id2" /></td>
									<td><label for="customer_code">CUSTOMER CODE</label> <input
										class="form-control" type="text" name="customer_code" /></td>
								</tr>
								<tr>
									<td><label for="mnemonic">MNEMONIC</label> <input
										class="form-control" type="text" name="mnemonic" /></td>
									<td><label for="usrname">SHORT NAME</label> <input
										class="form-control" type="text" name="short_name" /></td>
									<td><label for="name1">NAME_1</label> <input
										class="form-control" type="text" name="name1" /></td>
								</tr>
								<tr>
									<td><label for="name2">NAME_2</label> <input
										class="form-control" type="text" name="name2" /></td>
									<td><label for="usrname">HOUSE OWNER NAME</label> <input
										class="form-control" type="text" name="houseOwnerName" /></td>
									<td><label for="usrname">HOUSE OWNER MOBILE NUMBER</label>
										<input class="form-control" type="text"
										name="houseOwnerMobileNumber" /></td>
								</tr>
								<tr>
									<td><label for="usrname">HOUSE OWNER EMAIL</label> <input
										class="form-control" type="text" name="houseOwnerEmail" /></td>
									<td><label for="usrname">RELATIONAL CODE</label> <input
										class="form-control" type="text" name="relationalCode" /></td>
									<td><label for="usrname">RELATIONAL CUSTOMER</label> <input
										class="form-control" type="text" name="relationalCustomer" />
									</td>
								</tr>
								<tr>
									<td><label for="usrname">REVERSE RELATION CODE</label> <input
										class="form-control" type="text" name="reverseRelationCode" />
									</td>
									<td><label for="usrname">RELATIONSHIP OFFICER</label> <input
										class="form-control" type="text" name="relationshipOfficer" />
									</td>
									<td><label for="usrname">OTHER OFFICER</label> <input
										class="form-control" type="text" name="otherOfficer" /></td>
								</tr>
								<tr>
									<td><label for="nearByLocation">NEAR BY RENOWNED
											LOCATION</label> <input class="form-control" type="text"
										name="nearByRenownedLocation" /></td>
									<td><label for="usrname">INDUSTRY</label> <input
										class="form-control" type="text" name="industry" /></td>
									<td><label for="usrname">COUNTRY</label> <input
										class="form-control" type="text" name="country" /></td>
								</tr>
								<tr>
									<td><label for="usrname">CUSTOMER STATUS</label> <input
										class="form-control" type="text" name="customerStatus" /></td>
									<td><label for="usrname">RESIDENCE</label> <input
										class="form-control" type="text" name="residence" /></td>
									<td><label for="usrname">CONTACT DATE</label> <input
										class="form-control" type="date" name="contactDate" /></td>
								</tr>
								<!--21 field -->
								<tr>
									<td><label for="usrname">INTRODUCER</label> <input
										class="form-control" type="text" name="introducer" /></td>
									<td><label for="usrname">REVIEW FREQUENCY</label> <input
										class="form-control" type="text" name="reviewFrequency" /></td>
									<td><label for="usrname">CUSTOMER LIABILITY</label> <input
										class="form-control" type="text" name="customerLiability" />
									</td>
								</tr>
								<tr>
									<td><label for="usrname">SECTOR</label> <input
										class="form-control" type="text" name="sector" /></td>
								</tr>
							</table>
							</div>
							<div id="2" class="tab-pane fade">
								<table class="table">
									<tr>
										<td><label for="usrname">LANGUAGE</label> <input
											class="form-control" type="text" name="language" /></td>
										<td><label for="usrname">GIVEN DOCUMENT TYPE</label> <select
											name="givenDocumentType" class="form-control">
												<option value="citizenship">CITIZENSHIP CARD</option>
												<option value="passport">PASSPORT</option>
												<option value="birth_certificate">BIRTH CERTIFICATE</option>
												<option value="election_identity_card">ELECTION
													IDENTITY CARD</option>
												<option value="land_owner_certificate">LAND OWNER
													CERTIFICATE</option>
												<option value="license">LICENSE</option>
												<option value="govt_idcard">GOVERNMENT OFFICE
													IDENTITY CARD</option>
										</select></td>
										<td><label for="usrname">DATE OF BIRTH</label> <input
											class="form-control" type="date" name="dateOfBirth" /></td>
									</tr>
									<tr>
										<td><label for="usrname">MARITAL STATUS</label>
											<div class="radio">
												<label> <input type="radio" name="maritalStatus"
													id="married" value="married" /> MARRIED
												</label>
											</div>
											<div class="radio">
												<label> <input type="radio" name="maritalStatus"
													id="unmarried" value="unmarried" /> UNMARRIED
												</label>
											</div>
											<div class="radio">
												<label> <input type="radio" name="maritalStatus"
													id="divorced" value="divorced" /> DIVORCED
												</label>
											</div>
											<div class="radio">
												<label> <input type="radio" name="maritalStatus"
													id="widowed" value="widowed" /> WIDOWED
												</label>
											</div></td>
										<td><label for="usrname">NUMBER OF DEPENDENTS</label> <input
											class="form-control" type="text" name="numberOfDependents" />
										</td>
										<td><label for="usrname">PHONE 1</label> <input
											class="form-control" type="text" name="phone1" /></td>
									</tr>
									<tr>
										<td><label for="usrname">SMS</label> <input
											class="form-control" type="text" name="sms" /></td>
										<td><label for="usrname">EMAIL</label> <input
											class="form-control" type="text" name="email" /></td>
										<td><label for="usrname">EMPLOYMENT STATUS</label> <input
											class="form-control" type="text" name="employmentStatus" />
										</td>
									</tr>
									<tr>
										<td><label for="usrname">OCCUPATION</label> <input
											class="form-control" type="text" name="occupation" /></td>
										<td><label for="usrname">EMPLOYERS NAME</label> <input
											class="form-control" type="text" name="employersName" /></td>
										<td><label for="usrname">EMPLOYERS ADDRESS</label> <input
											class="form-control" type="text" name="employersAddress" />
										</td>
									</tr>
									<tr>
										<td><label for="usrname">EMPLOYERS BUSS</label> <input
											class="form-control" type="text" name="employersBuss" /></td>
										<td><label for="usrname">EMPLOYMENT START </label> <input
											class="form-control" type="text" name="employmentStart" /></td>
										<td><label for="usrname">CUSTOMER CURRENCY</label> <input
											class="form-control" type="text" name="customerCurrency" />
										</td>
									</tr>
									<tr>
										<td><label for="usrname">SALARY</label> <input
											class="form-control" type="text" name="salary" /></td>
										<td><label for="usrname">ANNUAL BONUS </label> <input
											class="form-control" type="text" name="annualBonus" /></td>
										<td><label for="usrname">SALARY DATE FREQUENCY</label> <input
											class="form-control" type="text" name="salaryDateFrequency" />
										</td>
									</tr>
									<tr>
										<td><label for="usrname">NET MONTHLY IN</label> <input
											class="form-control" type="text" name="netMonthlyIn" /></td>
										<td><label for="usrname">NET MONTHLY OUT</label> <input
											class="form-control" type="text" name="netMonthlyOut" /></td>
										<td><label for="usrname">RESIDENCE STATUS</label>
											<div class="radio">
												<label> <input type="radio" name="residenceStatus"
													id="permanent" value="permanent" /> PERMANENT
												</label>
											</div>
											<div class="radio">
												<label> <input type="radio" name="residenceStatus"
													id="temporary" value="temporary" /> TEMPORARY
												</label>
											</div></td>
									</tr>
									<tr>
										<td><label for="usrname">RESIDENCE SINCE</label> <input
											class="form-control" type="text" name="residenceSince" /></td>
										<td><label for="usrname">SPOKEN LANGUAGE</label> <input
											class="form-control" type="text" name="spokenLanguage" /></td>
										<td><label for="usrname">RECORD STATUS</label> <input
											class="form-control" type="text" name="recordStatus" /></td>
									</tr>
								</table>
								</div>
								<div id="3" class="tab-pane fade ">
									<table class="table">
										<tr>
											<td><label for="usrname">CURRENCY NUMBER</label> <input
												class="form-control" type="text" name="currencyNumber" /></td>
											<td><label for="usrname">INPUTER</label> <input
												class="form-control" type="text" name="inputer" /></td>
											<td><label for="usrname">DATE-TIME</label> <input
												class="form-control" type="datetime-local" name="dateTime" />
											</td>
										</tr>
										<tr>
											<td><label for="usrname">AUTHORISER </label> <input
												class="form-control" type="text" name="authoriser" /></td>
											<td><label for="usrname">CO.CODE</label> <input
												class="form-control" type="text" name="coCode" /></td>
											<td><label for="usrname">DEPARTMENT CODE </label> <input
												class="form-control" type="text" name="deptarmentCode" /></td>
										</tr>
										<tr>
											<td><label for="usrname">AUDITOR CODE</label> <input
												class="form-control" type="text" name="auditorCode" /></td>
											<td><label for="usrname">AUDIT DATE-TIME</label> <input
												class="form-control" type="datetime-local"
												name="auditDateCode" /></td>
											<td><label for="usrname">POSTING RESTRICT</label> <input
												class="form-control" type="text" name="postingRestrict" />
											</td>
										</tr>
										<tr>
											<td><label for="usrname">DISPO OFFICER</label> <input
												class="form-control" type="text" name="dispoOfficer" /></td>
											<td><label for="usrname">POST CODE</label> <input
												class="form-control" type="text" name="postCode" /></td>
											<td><label for="usrname">ISSUES CHEQUES </label> <input
												class="form-control" type="text" name="issuesCheques" /></td>
										</tr>
										<tr>
											<td><label for="residenceRegion">RESIDENCE
													REGION</label> <input class="form-control" type="text"
												name="residenceRegion" /></td>
											<td><label for="companyBook">COMPANY BOOK</label> <input
												class="form-control" type="text" name="companyBook" /></td>
											<td><label for="assetClass">ASSET CLASS</label> <input
												class="form-control" type="text" name="assetClass" /></td>
										</tr>
										<tr>
											<td><label for="customerRating">CUSTOMER RATING</label>
												<input class="form-control" type="text"
												name="customerRating" /></td>
											<td><label for="title">TITLE</label> <input
												class="form-control" type="text" name="title" /></td>
											<td><label for="givenName">GIVEN NAME</label> <input
												class="form-control" type="text" name="givenName" /></td>
										</tr>
										<tr>
											<td><label for="familyName">FAMILY NAME</label> <input
												class="form-control" type="text" name="familyName" /></td>
											<td><label for="gender">GENDER</label>
												<div class="radio">
													<label> <input type="radio" name="gender" id="male"
														value="male" /> MALE
													</label>
												</div>
												<div class="radio">
													<label> <input type="radio" name="gender"
														id="female" value="female" /> FEMALE
													</label>
												</div></td>
											<td><label for="commType">COMM TYPE</label> <input
												class="form-control" type="text" name="commType" /></td>
										</tr>
										<tr>
											<td><label for="prefChannel">PREF CHANNEL</label> <input
												class="form-control" type="text" name="prefChannel" /></td>
											<td><label for="interest">INTERESTS</label> <input
												class="form-control" type="text" name="interest" /></td>
											<td><label for="fax1">FAX 1</label> <input
												class="form-control" type="text" name="fax1" /></td>
										</tr>
									</table>
									</div>
									<div id="4" class="tab-pane fade  ">
										<table class="table">
											<tr>
												<td><label for="usrname">RESERVED1</label> <input
													class="form-control" type="text" name="reserved1" /></td>
												<td><label for="reserved2">RESERVED2</label> <input
													class="form-control" type="text" name="reserved2" /></td>
												<td><label for="reserved3">RESERVED3</label> <input
													class="form-control" type="text" name="reserved3" /></td>
											</tr>
											<tr>
												<td><label for="reserved4">RESERVED4</label> <input
													class="form-control" type="text" name="reserved4" /></td>
												<td><label for="reserved5">RESERVED5</label> <input
													class="form-control" type="text" name="reserved5" /></td>
												<td><label for="reserved6">RESERVED6</label> <input
													class="form-control" type="text" name="reserved6" /></td>
											</tr>
											<tr>
												<td><label for="reserved7">RESERVED7</label> <input
													class="form-control" type="text" name="reserved7" /></td>
												<td><label for="reserved8">RESERVED8</label> <input
													class="form-control" type="text" name="reserved8" /></td>
												<td><label for="reserved9">RESERVED9</label> <input
													class="form-control" type="text" name="reserved9" /></td>
											</tr>
											<tr>
												<td><label for="reserved10">RESERVED10</label> <input
													class="form-control" type="text" name="reserved10" /></td>
												<td><label for="reserved11">RESERVED11</label> <input
													class="form-control" type="text" name="reserved11" /></td>
												<td><label for="reserved12">RESERVED12</label> <input
													class="form-control" type="text" name="reserved12" /></td>
											</tr>
											<tr>
												<td><label for="reserved13">RESERVED13</label> <input
													class="form-control" type="text" name="reserved13" /></td>
												<td><label for="reserved14">RESERVED14</label> <input
													class="form-control" type="text" name="reserved14" /></td>
												<td><label for="reserved15">RESERVED15</label> <input
													class="form-control" type="text" name="reserved15" /></td>
											</tr>
											<tr>
												<td><label for="reserved16">RESERVED16</label> <input
													class="form-control" type="text" name="reserved16" /></td>
												<td><label for="reserved17">RESERVED17</label> <input
													class="form-control" type="text" name="reserved17" /></td>
												<td><label for="reserved18">RESERVED18</label> <input
													class="form-control" type="text" name="reserved18" /></td>
											</tr>
											<tr>
												<td><label for="reserved19">RESERVED19</label> <input
													class="form-control" type="text" name="reserved19" /></td>
												<td><label for="reserved20">RESERVED20</label> <input
													class="form-control" type="text" name="reserved20" /></td>
												<td><label for="reserved21">RESERVED21</label> <input
													class="form-control" type="text" name="reserved21" /></td>
											</tr>
											<tr>
												<td><label for="reserved22">RESERVED22</label> <input
													class="form-control" type="text" name="reserved22" /></td>
												<td><label for="reserved23">RESERVED23</label> <input
													class="form-control" type="text" name="reserved23" /></td>
												<td><label for="reserved24">RESERVED24</label> <input
													class="form-control" type="text" name="reserved24" /></td>
											</tr>
										</table>
									</div>
									<div id="5" class="tab-pane fade  ">
										<table class="table">
											<tr>
												<td><label for="dateLastVerified">DATE LAST
														VERIFIED</label> <input class="form-control" type="date"
													name="dateLastVerified" /></td>
												<td><label for="calcRiskClass">CALC RISK CLASS</label>
													<input class="form-control" type="text"
													name="calcRiskClass" /></td>
												<td><label for="manualRiskClass">MANUAL RISK
														CLASS</label> <input class="form-control" type="text"
													name="manualRiskClass" /></td>
											</tr>
											<tr>
												<td><label for="overrideReason">OVERRIDE REASON</label>
													<input class="form-control" type="text"
													name="overrideReason" /></td>
												<td><label for="taxId">TAX ID</label> <input
													class="form-control" type="text" name="taxId" /></td>
												<td><label for="riskLevel">RISK LEVEL</label> <input
													class="form-control" type="text" name="riskLevel" /></td>
											</tr>
											<tr>
												<td><label for="riskTolorence">RISK TOLERANCE </label>
													<input class="form-control" type="text"
													name="riskTolorence" /></td>
												<td><label for="riskFromDate">RISK FROM DATE</label> <input
													class="form-control" type="date" name="riskFromDate" /></td>
												<td><label for="lastKycReviewDate">LAST KYC
														REVIEW DATE</label> <input class="form-control" type="date"
													name="lastKycReviewDate" /></td>
											</tr>
											<tr>
												<td><label for="manualNextKycReviewDate">MANUAL
														NEXT KYC REVIEW DATE</label> <input class="form-control"
													type="date" name="manualNextKycReviewDate" /></td>
												<td><label for="autoNextSuitReviewDate">AUTO
														NEXT SUIT REVIEW DATE</label> <input class="form-control"
													type="date" name="autoNextSuitReviewDate" /></td>
												<td><label for="kycRelationship">KYC
														RELATIONSHIP</label> <input class="form-control" type="text"
													name="kycRelationship" /></td>
											</tr>
											<tr>
												<td><label for="secureMessage">SECURE MESSAGE</label> <input
													class="form-control" type="text" name="secureMessage" /></td>
												<td><label for="almCheck">ALM CHECK</label> <input
													class="form-control" type="text" name="almCheck" /></td>
												<td><label for="almResult">ALM RESULT</label> <input
													class="form-control" type="text" name="almResult" /></td>
											</tr>
											<tr>
												<td><label for="lastAlmResultDate">LAST ALM
														RESULT DATE</label> <input class="form-control" type="date"
													name="lastAlmResultDate" /></td>
												<td><label for="kycComplete">KYC COMPLETE</label> <input
													class="form-control" type="text" name="kycComplete" /></td>
												<td><label for="interestBankingService">INTEREST
														BANKING SERVICE</label>
													<div class="radio">
														<label> <input type="radio"
															name="interestBankingService" id="yes" value="yes" />
															YES
														</label>
													</div>
													<div class="radio">
														<label> <input type="radio"
															name="interestBankingService" id="no" value="no" /> NO
														</label>
													</div></td>
											</tr>
											<tr>
												<td><label for="mobileBankingService">MOBILE
														BANKING SERVICE</label>
													<div class="radio">
														<label> <input type="radio"
															name="mobileBankingService" id="yesm" value="yesm" />
															YES
														</label>
													</div>
													<div class="radio">
														<label> <input type="radio"
															name="mobileBankingService" id="nom" value="nom" /> NO
														</label>
													</div></td>
												<td><label for="usrname">Image</label> <input
													class="form-control" type="file" name="image" /><br>
												</td>
											</tr>
										</table>
									</div>
									<div id="6" class="tab-pane fade  ">
										<table class="table">
											<tr>
												<td><label for="temporaryAddress">Temporary
														Address</label> <input type="text" class="form-control"
													name="temporary_address"></td>
											</tr>
											<tr>
												<td><label for="tstate">STATE</label> <select
													name="tstate" class="form-control">
														<option value="state1">State 1</option>
														<option value="state2">State 2</option>
														<option value="state3">State 3</option>
														<option value="state4">State 4</option>
														<option value="state5">State 5</option>
														<option value="state6">State 6</option>
														<option value="state7">State 7</option>
												</select></td>
												<td><label for="district">DISTRICT</label> <input
													class="form-control" type="text" name="tdistrict" /></td>
												<td><label for="usrname">MUNICIPALITY/VILLAGE</label> <input
													class="form-control" type="text"
													name="tmunicipality_village" /></td>
											</tr>
											<tr>
												<td><label for="usrname">WARD NUMBER</label> <input
													class="form-control" type="text" name="tward_number" /></td>
												<td><label for="usrname">TOLE</label> <input
													class="form-control" type="text" name="ttole" /></td>
												<td><label for="usrname">STREET ADDRESS</label> <input
													class="form-control" type="text" name="tstreet_address" />
												</td>
											</tr>
										</table>
									</div>
									<div id="7" class="tab-pane fade  ">
										<table class="table">
											<tr>
												<td><label for="permanentAddress">Permanent
														Addrress</label> <input type="text" class="form-control"
													name="permanent_address"></td>
											</tr>
											<tr>
												<td><label for="pstate">STATE</label> <select
													name="pstate" class="form-control">
														<option value="state1">State 1</option>
														<option value="state2">State 2</option>
														<option value="state3">State 3</option>
														<option value="state4">State 4</option>
														<option value="state5">State 5</option>
														<option value="state6">State 6</option>
														<option value="state7">State 7</option>
												</select></td>
												<td><label for="district">DISTRICT</label> <input
													class="form-control" type="text" name="pdistrict" /></td>
												<td><label for="usrname">MUNICIPALITY/VILLAGE</label> <input
													class="form-control" type="text"
													name="pmunicipality_village" /></td>
											</tr>
											<tr>
												<td><label for="usrname">WARD NUMBER</label> <input
													class="form-control" type="text" name="pward_number" /></td>
												<td><label for="usrname">TOLE</label> <input
													class="form-control" type="text" name="ptole" /></td>
												<td><label for="usrname">STREET ADDRESS</label> <input
													class="form-control" type="text" name="pstreet_address" />
												</td>
											</tr>
										</table>
									</div>
						</div>
		</form>
	</div>
</div>
<div class="modal fade" id="myModal" role="dialog">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-body">
				<p>
					<b>${msg }</b>
				</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
<script>
<%if (request.getAttribute("msg") != null) {%>
	$('#myModal').modal('show');
<%}%>
</script>
