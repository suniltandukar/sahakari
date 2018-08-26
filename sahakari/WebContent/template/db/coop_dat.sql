-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2018 at 07:52 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `coop_dat`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `CLEARCOOP_DATA`()
BEGIN
delete from customertbl;
delete from accountstbl;
delete from documentdetails;
delete from familydetail;
delete from files;
delete from jobdetail;
delete from memberdocuments;
delete from multipletransactiontbl;
delete from shareacledgertbl;
delete from sharecertificate;
delete from staff;
delete from statementtbl;
delete from tblagent;
delete from tblchequeissue;
delete from tblchequeissuecus;
delete from tblcommission;
delete from tblgr;
delete from tblguarenters;
delete from tblloancolltmp;
delete from tblloandetail;
delete from tblreceipt;
delete from tblrepayschedule;
delete from tblrepayscheduletemp;
delete from tblsharecert;
delete from tblshareholder;
delete from tblworkingoffice;
delete from teller;
delete from tellertransactiontbl;
delete from transactiontbl;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `accountstbl`
--

CREATE TABLE IF NOT EXISTS `accountstbl` (
  `accountNumber` varchar(20) CHARACTER SET utf8 NOT NULL,
  `pid` varchar(20) DEFAULT NULL,
  `alternativeAccountId` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `categoryId` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `accountType` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `accountName` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `limitRef` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `postingRestriction` int(11) DEFAULT NULL,
  `interestLiqAccount` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `principalLiqAccount` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `accountOpeningDate` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `valueDate` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `openingBal` double(16,2) DEFAULT '0.00',
  `debitMovement` double(16,2) DEFAULT '0.00',
  `creditMovement` double(16,2) DEFAULT '0.00',
  `clearedBal` double(16,2) DEFAULT '0.00',
  `workingBal` double(16,2) DEFAULT '0.00',
  `dateLastDr` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `amountLastDr` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `trcodeLastDr` int(11) DEFAULT NULL,
  `dateLastCr` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `amountLastCr` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `trcodeLastCr` int(11) DEFAULT NULL,
  `accountStatus` int(11) DEFAULT NULL,
  `curNumber` int(11) DEFAULT NULL,
  `recordStatus` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `branchCode` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `inputter` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `authorizer` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `interestType` varchar(1) DEFAULT NULL,
  `interestRate` double(16,2) DEFAULT NULL,
  `principalAmount` double(16,2) DEFAULT NULL,
  `startDateNP` varchar(10) DEFAULT NULL,
  `startDateEn` date DEFAULT NULL,
  `maturityDateNP` varchar(10) DEFAULT NULL,
  `maturityDateEn` date DEFAULT NULL,
  `repaymentStartDateNp` varchar(10) DEFAULT NULL,
  `repaymentStartDateEn` date DEFAULT NULL,
  `repaymentFrequency` varchar(3) DEFAULT NULL,
  `loanDrawdownAc` varchar(20) DEFAULT NULL,
  `chargeDebitAc` varchar(20) DEFAULT NULL,
  `chargeAmount` double(16,2) DEFAULT NULL,
  `chargePaymentDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountstbl`
--

INSERT INTO `accountstbl` (`accountNumber`, `pid`, `alternativeAccountId`, `categoryId`, `accountType`, `accountName`, `limitRef`, `postingRestriction`, `interestLiqAccount`, `principalLiqAccount`, `accountOpeningDate`, `valueDate`, `openingBal`, `debitMovement`, `creditMovement`, `clearedBal`, `workingBal`, `dateLastDr`, `amountLastDr`, `trcodeLastDr`, `dateLastCr`, `amountLastCr`, `trcodeLastCr`, `accountStatus`, `curNumber`, `recordStatus`, `branchCode`, `inputter`, `authorizer`, `interestType`, `interestRate`, `principalAmount`, `startDateNP`, `startDateEn`, `maturityDateNP`, `maturityDateEn`, `repaymentStartDateNp`, `repaymentStartDateEn`, `repaymentFrequency`, `loanDrawdownAc`, `chargeDebitAc`, `chargeAmount`, `chargePaymentDate`) VALUES
('010010000001001', '0000001', '', '11101', NULL, 'Sunil Karki', '', NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 52100.00, 52100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sahakari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('010010000001002', '0000001', '', '11201', NULL, 'Sunil Karki', '', NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, -52100.00, -52100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sahakari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('010010000001003', '0000001', '', '14101', NULL, 'Sunil Karki', '', NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sahakari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Triggers `accountstbl`
--
DELIMITER $$
CREATE TRIGGER `TrgNwaccount` BEFORE INSERT ON `accountstbl`
 FOR EACH ROW BEGIN
DECLARE nwacnumber varchar(20);
if new.accountNumber='NULL' then
Select max(accountNumber)+1 into nwacnumber from accountstbl where pid=LPAD(new.pid,7,'0');
if nwacnumber is NULL then
set nwacnumber=concat('01001',lpad(new.pid,7,'0'),'001');
end if;
  SET NEW.accountNumber = lpad(nwacnumber,15,'0');
SET NEW.PID = lpad(NEW.pid,7,'0');

end if;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `accountstblmain`
--

CREATE TABLE IF NOT EXISTS `accountstblmain` (
  `MCode` int(11) DEFAULT NULL,
  `MHead` varchar(50) DEFAULT NULL,
  `MHeadNep` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountstblmain`
--

INSERT INTO `accountstblmain` (`MCode`, `MHead`, `MHeadNep`) VALUES
(1, 'Liabilities', 'bfloTj'),
(2, 'Assets', ';DklQ'),
(3, 'Expenses', 'vr{'),
(4, 'Incomes', 'cfDbfgL'),
(5, 'Off Bal Asset', 'a}l]G; l;6 aflx/ ;DklQ'),
(6, 'Off Bal Lia', 'a}l]G; l;6 aflx/ bfloTj');

-- --------------------------------------------------------

--
-- Table structure for table `accountstblmain1`
--

CREATE TABLE IF NOT EXISTS `accountstblmain1` (
  `MCode` int(11) NOT NULL DEFAULT '0',
  `MHead` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountstblmain1`
--

INSERT INTO `accountstblmain1` (`MCode`, `MHead`) VALUES
(11, 'Deposits');

-- --------------------------------------------------------

--
-- Table structure for table `accountstblmain2`
--

CREATE TABLE IF NOT EXISTS `accountstblmain2` (
  `MCode` int(11) NOT NULL DEFAULT '0',
  `MHead` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountstblmain2`
--

INSERT INTO `accountstblmain2` (`MCode`, `MHead`) VALUES
(112, 'Saving Deposits'),
(113, 'Time Deposits');

-- --------------------------------------------------------

--
-- Table structure for table `accounttype`
--

CREATE TABLE IF NOT EXISTS `accounttype` (
  `accountType` varchar(3) CHARACTER SET utf8 NOT NULL,
  `accountTypeHead` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `inputter` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `authorizer` varchar(150) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounttype`
--

INSERT INTO `accounttype` (`accountType`, `accountTypeHead`, `inputter`, `authorizer`) VALUES
('FIN', 'Financial Account', 'admin', 'admin'),
('ACC', 'Customer Account', 'admin', 'admin'),
('PLA', ' Profit and Loss Account', 'admin', 'admin'),
('LNA', 'Loan Account', 'admin', 'admin'),
('OFF', 'Off-balance sheet account', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bankaccountdetail`
--

CREATE TABLE IF NOT EXISTS `bankaccountdetail` (
  `id` int(11) NOT NULL,
  `pid` varchar(20) NOT NULL,
  `bankName` varchar(35) CHARACTER SET utf8 NOT NULL,
  `accountNumber` varchar(50) CHARACTER SET utf8 NOT NULL,
  `accountType` varchar(30) CHARACTER SET utf8 NOT NULL,
  `remarks` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `inputter` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `authorizer` varchar(150) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bankaccountdetail`
--

INSERT INTO `bankaccountdetail` (`id`, `pid`, `bankName`, `accountNumber`, `accountType`, `remarks`, `inputter`, `authorizer`) VALUES
(22, '5697', '', '', '', '', 'sunilkarki', 'abc'),
(23, '5698', '', '', '', '', 'sunilkarki', 'abc'),
(24, '5699', '', '', '', '', 'sunilkarki', 'abc'),
(27, '5701', '', '', '', '', 'sunilkarki', '0'),
(28, '5702', '', '', '', '', 'sunil', 'abc'),
(29, '5703', '', '', '', '', 'sunil', 'abc'),
(30, '5704', '', '', '', '', 'sunil', 'abc'),
(31, '5705', '', '', '', '', 'sunil', 'abc'),
(32, '5706', '', '', '', '', 'sunil', 'abc'),
(33, '999', '', '', '', '', 'sunil', 'abc'),
(34, '999', '', '', '', '', 'sunil', 'abc'),
(35, '00001000', '', '', '', '', 'sunil', '0'),
(36, '999', '', '', '', '', 'sunil', 'abc'),
(37, '5707', '', '', '', '', 'sunil', 'abc'),
(38, '5708', '', '', '', '', 'sunil', 'abc'),
(39, '5709', '', '', '', '', 'sunil', 'abc'),
(40, '5710', '', '', '', '', 'sunil', 'abc'),
(42, '2', '', '', '', '', 'sunil', 'abc'),
(43, '3', '', '', '', '', 'sunil', 'abc'),
(44, '4', '', '', '', '', 'sunil', 'abc'),
(46, '1', '', '', '', '', 'sunil', '0'),
(47, '5', '', '', '', '', 'sunil', 'abc'),
(48, '6', 'lllll', '123545', 'jklj', 'oo', 'sunil', 'abc'),
(49, '6', '', '', '', '', 'sunil', 'abc'),
(51, '0000007', '', '', '', '', 'sunil', '0'),
(52, '6', '', '', '', '', 'sunil', 'abc'),
(53, '0000002', '', '', '', '', 'sahakari', 'abc'),
(62, '0001141', '', '', '', '', 'sahakari', '0'),
(66, '0000004', '', '', '', '', 'sahakari', '0'),
(67, '00000001', '', '', '', '', 'sahakari', 'abc'),
(68, '0000002', '', '', '', '', 'sahakari', 'abc'),
(69, '0000001', '', '', '', '', 'sahakari', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `basicintrate_deposit`
--

CREATE TABLE IF NOT EXISTS `basicintrate_deposit` (
  `Id` varchar(10) DEFAULT NULL,
  `categoryId` varchar(5) DEFAULT NULL,
  `intRate` double(5,2) DEFAULT NULL,
  `effectiveDateNp` varchar(10) DEFAULT NULL,
  `effectiveDateEn` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `branchtbl`
--

CREATE TABLE IF NOT EXISTS `branchtbl` (
  `companyId` varchar(4) DEFAULT NULL,
  `branchId` varchar(4) NOT NULL,
  `branchName` varchar(35) DEFAULT NULL,
  `branchAddress` varchar(35) DEFAULT NULL,
  `branchPhone` varchar(16) DEFAULT NULL,
  `branchFax` varchar(16) DEFAULT NULL,
  `branchemail` varchar(70) DEFAULT NULL,
  `reserve1` varchar(70) DEFAULT NULL,
  `reserve2` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branchtbl`
--

INSERT INTO `branchtbl` (`companyId`, `branchId`, `branchName`, `branchAddress`, `branchPhone`, `branchFax`, `branchemail`, `reserve1`, `reserve2`) VALUES
('01', '001', 'Kalimati', '12', '12', '12', NULL, NULL, NULL),
('01', '002', 'Baneshwor', '12', '12', '12', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `categoryId` varchar(5) CHARACTER SET utf8 NOT NULL,
  `categoryHead` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `accountType` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `inputter` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `authorizer` varchar(150) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryId`, `categoryHead`, `accountType`, `inputter`, `authorizer`) VALUES
('10000', 'Liabilities', '', 'admin', 'admin'),
('11000', 'Deposits', '', 'admin', 'admin'),
('11101', 'Current Deposit', 'ACC', 'admin', 'admin'),
('11201', 'Saving Deposit', 'ACC', 'admin', 'admin'),
('11202', 'Sewa Nibritta Bachat Khata', 'ACC', 'admin', 'admin'),
('11203', 'Shramjyoti Baal Bachat Khaata', 'ACC', 'admin', 'admin'),
('11204', 'Shramjyoti Super Saving A/c', 'ACC', 'admin', 'admin'),
('11301', '1 Year Periodic Deposit', 'ACC', 'admin', 'admin'),
('11302', '2 Year Periodic Deposit', 'ACC', 'admin', 'admin'),
('11303', '3 Year Periodic Deposit', 'ACC', 'admin', 'admin'),
('11304', '6 Months Periodic Deposit', 'ACC', 'admin', 'admin'),
('11305', 'Periodic Deposit', 'ACC', 'admin', 'admin'),
('11306', 'Periodic Deposit', 'ACC', 'admin', 'admin'),
('11307', 'Periodic Deposit', 'ACC', 'admin', 'admin'),
('12100', 'Sundry Payables', '', 'admin', 'admin'),
('12101', 'Sundry Creditors', 'FIN', 'admin', 'admin'),
('12103', 'Deposits', 'FIN', 'admin', 'admin'),
('12104', 'Audit fee', 'FIN', 'admin', 'admin'),
('12105', 'Udharo Kharid Khata', 'FIN', 'admin', 'admin'),
('12106', 'Peshki Prapti Hisab', 'FIN', 'admin', 'admin'),
('12107', 'Karmachari Hitkosh Khata', 'FIN', 'admin', 'admin'),
('12108', 'Sapati Hisab Khata', 'FIN', 'admin', 'admin'),
('12109', 'Anya Bhuktani Dinuparne Khata', 'FIN', 'admin', 'admin'),
('12200', 'Tax Payables', '', 'admin', 'admin'),
('12201', 'Tax payable for share holder saving', 'ACC', 'admin', 'admin'),
('12202', 'Tax payable for monthly saving int', 'ACC', 'admin', 'admin'),
('12203', 'tax payable renumeration', 'ACC', 'admin', 'admin'),
('12204', 'Tax on Saving Interest', 'ACC', 'admin', 'admin'),
('13000', 'Suspense Accounts', '', 'admin', 'admin'),
('13101', 'Suspense Liability Ac', 'FIN', 'admin', 'admin'),
('14000', 'Capital Account', '', 'admin', 'admin'),
('14100', 'Share Capital', '', 'admin', 'admin'),
('14101', 'Share Capital', 'ACC', 'admin', 'admin'),
('14200', 'Misc Kosh', '', 'admin', 'admin'),
('14201', 'Jageda Kosh', 'FIN', 'admin', 'admin'),
('14202', 'Anya Kosh', 'FIN', 'admin', 'admin'),
('14203', 'Ghata Purti fund', 'FIN', 'admin', 'admin'),
('14204', 'sanstha social devlopment fund', 'FIN', 'admin', 'admin'),
('14205', 'Dubante loan fund', 'FIN', 'admin', 'admin'),
('18000', 'Provision', '', 'admin', 'admin'),
('18100', 'Provisions for Staff', '', 'admin', 'admin'),
('18101', 'Provision for Gratuity', 'FIN', 'admin', 'admin'),
('18102', 'Provision For Bonus', 'FIN', 'admin', 'admin'),
('18103', 'Doubtful debt provision fund', 'FIN', 'admin', 'admin'),
('18200', 'Provision For dividend', 'FIN', 'admin', 'admin'),
('18300', 'Loan Loss provision', 'FIN', 'admin', 'admin'),
('19000', 'Profit Account', 'FIN', 'admin', 'admin'),
('19101', 'Profit', 'FIN', 'admin', 'admin'),
('20000', 'Assets', 'FIN', 'admin', 'admin'),
('21000', 'Cash And Bank accounts', '', 'admin', 'admin'),
('21100', 'Cash', '', 'admin', 'admin'),
('21101', 'Vault', 'FIN', 'admin', 'admin'),
('21102', 'Cash', 'FIN', 'admin', 'admin'),
('21103', 'Petty Cash', 'FIN', 'admin', 'admin'),
('21104', 'Teller Cash', 'FIN', 'admin', 'admin'),
('21200', 'Bank Accounts', '', 'admin', 'admin'),
('21201', 'Bank ....', 'FIN', 'admin', 'admin'),
('21203', 'Agricultural Dev Bank Ltd', 'FIN', 'admin', 'admin'),
('22000', 'Advance/ Receivables', '', 'admin', 'admin'),
('22100', 'Staff and Member Advance', 'FIN', 'admin', 'admin'),
('22101', 'Udharo Bikri Tatha Asuli Hisab', 'FIN', 'admin', 'admin'),
('22102', 'Advance', 'FIN', 'admin', 'admin'),
('22103', 'Beruju Hisab', 'FIN', 'admin', 'admin'),
('22104', 'Dharauti Hisab', 'FIN', 'admin', 'admin'),
('22105', 'Anibarya Bachat Hisab', 'FIN', 'admin', 'admin'),
('22106', 'Anya Paunu parne Rakam', 'FIN', 'admin', 'admin'),
('22901', 'Interest Receivable contra', 'FIN', 'admin', 'admin'),
('23000', 'Fixed assets', '', 'admin', 'admin'),
('23101', 'Land and Building', 'FIN', 'admin', 'admin'),
('23102', 'Furniture', 'FIN', 'admin', 'admin'),
('23103', 'Office Equipments', 'FIN', 'admin', 'admin'),
('23104', 'Veichle', 'FIN', 'admin', 'admin'),
('23109', 'misc assets', 'FIN', 'admin', 'admin'),
('25000', 'Loan Accounts', '', 'admin', 'admin'),
('25100', 'Working Capital', '', 'admin', 'admin'),
('25101', 'Loan Ac', 'LNA', 'admin', 'admin'),
('25500', 'Term loan', '', 'admin', 'admin'),
('25501', '.... Loan', 'LNA', 'admin', 'admin'),
('26000', 'Misc Assets', '', 'admin', 'admin'),
('26101', 'Dhito patra kharid Khata', 'FIN', 'admin', 'admin'),
('26102', 'Muddati Khata in Bank', 'FIN', 'admin', 'admin'),
('26103', 'Bachat Khata in bank', 'FIN', 'admin', 'admin'),
('26104', 'Share Kharid Khata in bank', 'FIN', 'admin', 'admin'),
('29000', 'Loss Accounts', '', 'admin', 'admin'),
('29101', 'Loss', 'ACC', 'admin', 'admin'),
('30000', 'Expenses', '', 'admin', 'admin'),
('31000', 'Staff Expenses', '', 'admin', 'admin'),
('31101', 'Salary', 'PLA', 'admin', 'admin'),
('31102', 'Regular Allowances', 'PLA', 'admin', 'admin'),
('31103', 'Misc Allowances', 'PLA', 'admin', 'admin'),
('31104', 'Overtime', 'PLA', 'admin', 'admin'),
('31105', 'Bonus Exp', 'PLA', 'admin', 'admin'),
('31106', 'Staff Dress exp', 'PLA', 'admin', 'admin'),
('31107', 'dashain exp', 'PLA', 'admin', 'admin'),
('32000', 'Office Expenses', '', 'admin', 'admin'),
('32101', 'House Rent', 'PLA', 'admin', 'admin'),
('32102', 'Electricity', 'PLA', 'admin', 'admin'),
('32103', 'Telephone/Postage', 'PLA', 'admin', 'admin'),
('32104', 'Stationary/Printing', 'PLA', 'admin', 'admin'),
('32105', 'Mentainance', 'PLA', 'admin', 'admin'),
('32106', 'Meeting Expenses', 'PLA', 'admin', 'admin'),
('32107', 'Travelling', 'PLA', 'admin', 'admin'),
('32108', 'Business Promotion', 'PLA', 'admin', 'admin'),
('32109', 'Staff Welfare and Training', 'PLA', 'admin', 'admin'),
('32110', 'Entertainment', 'PLA', 'admin', 'admin'),
('32111', 'Misc.Office Expenses', 'PLA', 'admin', 'admin'),
('32112', 'Transportation expenses', 'PLA', 'admin', 'admin'),
('32113', 'Newspaper', 'PLA', 'admin', 'admin'),
('32114', 'Computer Expenses', 'PLA', 'admin', 'admin'),
('32115', 'Printing', 'PLA', 'admin', 'admin'),
('32116', 'Email and fax+Gift Exp', 'PLA', 'admin', 'admin'),
('32117', 'Guest Welcome(Food/Tea)', 'PLA', 'admin', 'admin'),
('32118', 'Other expenses', 'PLA', 'admin', 'admin'),
('32119', 'Tax expenses', 'PLA', 'admin', 'admin'),
('32120', 'Advertisement', 'PLA', 'admin', 'admin'),
('32121', 'Annual General Meeting', 'PLA', 'admin', 'admin'),
('32122', 'Vharman and Gosti', 'PLA', 'admin', 'admin'),
('32123', 'Field Tour Exp', 'PLA', 'admin', 'admin'),
('32124', 'Electricity Charge exp', 'PLA', 'admin', 'admin'),
('32125', 'software udate expenses', 'PLA', 'admin', 'admin'),
('32127', 'social community expenses', 'PLA', 'admin', 'admin'),
('33000', 'Interest Expenses', '', 'admin', 'admin'),
('33101', 'Interest Exp', 'PLA', 'admin', 'admin'),
('33102', 'Interest On Savings', 'PLA', 'admin', 'admin'),
('34000', 'Other Expenses', '', 'admin', 'admin'),
('34101', 'Audit Expenses', 'PLA', 'admin', 'admin'),
('34102', 'Misc.Fees', 'PLA', 'admin', 'admin'),
('34103', 'audit and fees', 'PLA', 'admin', 'admin'),
('34201', 'Donations', 'PLA', 'admin', 'admin'),
('35000', 'Rebate Exp', 'PLA', 'admin', 'admin'),
('35101', 'Interest Rebate', 'PLA', 'admin', 'admin'),
('36000', 'Commissions', '', 'admin', 'admin'),
('36101', 'Insurance', 'PLA', 'admin', 'admin'),
('36102', 'Commissions', 'PLA', 'admin', 'admin'),
('36103', 'Renuwals', 'PLA', 'admin', 'admin'),
('37000', 'Depreciation expenses', '', 'admin', 'admin'),
('37101', 'Depreciation Expenses', 'PLA', 'admin', 'admin'),
('37102', 'Fixed assets Deprication', 'PLA', 'admin', 'admin'),
('38000', 'WOF Expenses', '', 'admin', 'admin'),
('38101', 'Write off Expenses-Principle', 'PLA', 'admin', 'admin'),
('38102', 'Write off Expenses - Interest', 'PLA', 'admin', 'admin'),
('38103', 'Write off expenses for fixed asset', 'PLA', 'admin', 'admin'),
('38104', 'other woff expenses', 'PLA', 'admin', 'admin'),
('39000', 'Provision Expenses', 'PLA', 'admin', 'admin'),
('39100', 'Loan Loss provision', '', 'admin', 'admin'),
('39101', 'Prov. exp for good loan', 'PLA', 'admin', 'admin'),
('39102', 'Prov. exp for bad loan', 'PLA', 'admin', 'admin'),
('40000', 'Incomes', '', 'admin', 'admin'),
('41000', 'Interest Income from Loan', '', 'admin', 'admin'),
('41100', 'Interest Income from Loan', 'PLA', 'admin', 'admin'),
('41101', 'Interest Income', 'PLA', 'admin', 'admin'),
('42000', 'Misc Income', '', 'admin', 'admin'),
('42101', 'Lagani Bata Prapta Byaj', 'PLA', 'admin', 'admin'),
('42102', 'Bank Interest Income', 'PLA', 'admin', 'admin'),
('42103', 'Late Fee', 'PLA', 'admin', 'admin'),
('42104', 'Passbook Fee', 'PLA', 'admin', 'admin'),
('42105', 'Admission Fee', 'PLA', 'admin', 'admin'),
('42106', 'Membership Fee', 'PLA', 'admin', 'admin'),
('42107', 'Form Sale Income', 'PLA', 'admin', 'admin'),
('42108', 'Service Charge', 'PLA', 'admin', 'admin'),
('42109', 'Other income', 'PLA', 'admin', 'admin'),
('43000', 'Write off incomes', '', 'admin', 'admin'),
('43101', 'Write off income-Principle', 'PLA', 'admin', 'admin'),
('43102', 'Write off income- Interest', 'PLA', 'admin', 'admin'),
('43103', 'Write off income for fixed asset', 'PLA', 'admin', 'admin'),
('43104', 'other woff income', 'PLA', 'admin', 'admin'),
('70000', 'Mig Account', 'MIG', 'admin', 'admin'),
('80000', 'Off Balance Assets', '', 'admin', 'admin'),
('81101', 'wof Assets', 'OFF', 'admin', 'admin'),
('90000', 'Off Balance Liabilities', '', 'admin', 'admin'),
('91101', 'WOF Liabilities', 'OFF', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `companytbl`
--

CREATE TABLE IF NOT EXISTS `companytbl` (
  `id` varchar(10) DEFAULT NULL,
  `companyid` bigint(20) NOT NULL DEFAULT '0',
  `vatpan` varchar(30) CHARACTER SET utf8 NOT NULL,
  `companyname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `companyaddress` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `companycontactno` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `companyemail` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `companycontactperson` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `reserve1` varchar(30) DEFAULT NULL,
  `reserve2` varchar(30) DEFAULT NULL,
  `reserve3` varchar(30) DEFAULT NULL,
  `reserve4` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companytbl`
--

INSERT INTO `companytbl` (`id`, `companyid`, `vatpan`, `companyname`, `companyaddress`, `companycontactno`, `companyemail`, `companycontactperson`, `reserve1`, `reserve2`, `reserve3`, `reserve4`) VALUES
(NULL, 4, 'none', 'none', 'none', 'none', 'none', 'none', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `customerdetail`
--
CREATE TABLE IF NOT EXISTS `customerdetail` (
`pid` varchar(20)
,`memberid` varchar(20)
,`registrationDate` varchar(10)
,`name` varchar(50)
,`gender` varchar(10)
,`pdistid` int(11)
,`pvdcmunid` int(11)
,`pwardno` varchar(4)
,`pcity` varchar(50)
,`ptole` varchar(50)
,`tdistid` int(11)
,`tvdcmunid` int(11)
,`twardno` int(5)
,`tcity` varchar(50)
,`ttole` varchar(50)
,`telno` varchar(10)
,`mobno` varchar(10)
,`fatherName` varchar(50)
,`dob` varchar(10)
,`typeid` int(11)
,`statusid` int(11)
,`inputter` varchar(30)
,`authorizer` varchar(150)
,`insertStatus` varchar(20)
,`updateStatus` varchar(20)
,`delStatus` varchar(20)
,`address` varchar(50)
,`sector` varchar(30)
,`agentid` varchar(3)
,`resv2` varchar(50)
,`resv3` varchar(50)
,`email` varchar(50)
,`resv5` varchar(50)
,`pdistname` varchar(35)
,`tdistname` varchar(35)
,`pvdcname` varchar(100)
,`tvdcname` varchar(100)
,`statusName` varchar(30)
,`typeName` varchar(30)
,`agentName` varchar(50)
,`agentPhone` varchar(50)
,`agentstaffcode` varchar(10)
,`agentAddress` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `customertbl`
--

CREATE TABLE IF NOT EXISTS `customertbl` (
  `pid` varchar(20) NOT NULL,
  `memberid` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `registrationDate` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `pdistid` int(11) DEFAULT NULL,
  `pvdcmunid` int(11) DEFAULT NULL,
  `pwardno` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `pcity` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ptole` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `tdistid` int(11) DEFAULT NULL,
  `tvdcmunid` int(11) DEFAULT NULL,
  `twardno` int(5) DEFAULT NULL,
  `tcity` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ttole` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `telno` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `mobno` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `fatherName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `dob` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  `statusid` int(11) DEFAULT NULL,
  `inputter` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `authorizer` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `insertStatus` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `updateStatus` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `delStatus` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `sector` varchar(30) DEFAULT NULL,
  `agentid` varchar(3) DEFAULT NULL,
  `resv2` varchar(50) DEFAULT NULL,
  `resv3` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `resv5` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customertbl`
--

INSERT INTO `customertbl` (`pid`, `memberid`, `registrationDate`, `name`, `gender`, `pdistid`, `pvdcmunid`, `pwardno`, `pcity`, `ptole`, `tdistid`, `tvdcmunid`, `twardno`, `tcity`, `ttole`, `telno`, `mobno`, `fatherName`, `dob`, `typeid`, `statusid`, `inputter`, `authorizer`, `insertStatus`, `updateStatus`, `delStatus`, `address`, `sector`, `agentid`, `resv2`, `resv3`, `email`, `resv5`) VALUES
('0000001', '', '', 'Sunil Karki', 'Male', 0, 0, '0', '', '', 0, 0, 0, '', '', '', '', '', '', 0, 0, 'sahakari', 'abc', 'abc', 'abc', 'abc', '', NULL, '0', NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districtcodes`
--

CREATE TABLE IF NOT EXISTS `districtcodes` (
  `DistrictCode` int(11) NOT NULL DEFAULT '0',
  `DistrictName` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `districtcodes`
--

INSERT INTO `districtcodes` (`DistrictCode`, `DistrictName`) VALUES
(1, 'Taplejung'),
(2, 'Panchthar'),
(3, 'Ilam'),
(4, 'Jhapa'),
(5, 'Sankhuwasabha'),
(6, 'Terhathum'),
(7, 'Bhojpur'),
(8, 'Dhankuta'),
(9, 'Morang'),
(10, 'Sunsari'),
(11, 'Solukhumbu'),
(12, 'Khotang'),
(13, 'Okhaldhunga'),
(14, 'Udayapur'),
(15, 'Saptari'),
(16, 'Siraha'),
(17, 'Dolakha'),
(18, 'Ramechhap'),
(19, 'Sindhuli'),
(20, 'Dhanusha'),
(21, 'Mahottari'),
(22, 'Sarlahi'),
(23, 'Rasuwa'),
(24, 'Dhading'),
(25, 'Nuwakot'),
(26, 'Kathmandu'),
(27, 'Bhaktapur'),
(28, 'Lalitpur'),
(29, 'Kavrepalanchowk'),
(30, 'Sindhupalchowk'),
(31, 'Makwanpur'),
(32, 'Rautahat'),
(33, 'Bara'),
(34, 'Parsa'),
(35, 'Chitwan'),
(36, 'Gorkha'),
(37, 'Manang'),
(38, 'Lamjung'),
(39, 'Kaski'),
(40, 'Tanahun'),
(41, 'Syangja'),
(42, 'Gulmi'),
(43, 'Palpa'),
(44, 'Arghakhanchi'),
(45, 'Nawalparasi'),
(46, 'Rupandehi'),
(47, 'Kapilvastu'),
(48, 'Mustang'),
(49, 'Myagdi'),
(50, 'Baglung'),
(51, 'Parbat'),
(52, 'Rukum'),
(53, 'Rolpa'),
(54, 'Pyuthan'),
(55, 'Salyan'),
(56, 'Dang'),
(57, 'Dolpa'),
(58, 'Mugu'),
(59, 'Jumla'),
(60, 'Kalikot'),
(61, 'Humla'),
(62, 'Jajarkot'),
(63, 'Dailekh'),
(64, 'Surkhet'),
(65, 'Banke'),
(66, 'Bardiya'),
(67, 'Bajura'),
(68, 'Achham'),
(69, 'Bajhang'),
(70, 'Doti'),
(71, 'Kailali'),
(72, 'Darchula'),
(73, 'Baitadi'),
(74, 'Dadeldhura'),
(75, 'Kanchanpur');

-- --------------------------------------------------------

--
-- Table structure for table `documentdetails`
--

CREATE TABLE IF NOT EXISTS `documentdetails` (
  `documentId` bigint(20) NOT NULL,
  `documentType` varchar(15) DEFAULT NULL,
  `documentNumber` varchar(30) DEFAULT NULL,
  `issuedDate` varchar(10) DEFAULT NULL,
  `issuedDateen` varchar(10) DEFAULT NULL,
  `issuedBy` varchar(50) DEFAULT NULL,
  `expiryDate` varchar(10) DEFAULT NULL,
  `expiryDateen` varchar(10) DEFAULT NULL,
  `pid` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documentdetails`
--

INSERT INTO `documentdetails` (`documentId`, `documentType`, `documentNumber`, `issuedDate`, `issuedDateen`, `issuedBy`, `expiryDate`, `expiryDateen`, `pid`) VALUES
(3, '', '', '', '', '', '', '', '0000001');

-- --------------------------------------------------------

--
-- Table structure for table `documentportpathtbl`
--

CREATE TABLE IF NOT EXISTS `documentportpathtbl` (
  `documentportpathid` bigint(20) NOT NULL,
  `ipport` varchar(20) NOT NULL,
  `filepath` varchar(500) NOT NULL,
  `uploadpath` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `documentportpathtbl`
--

INSERT INTO `documentportpathtbl` (`documentportpathid`, `ipport`, `filepath`, `uploadpath`) VALUES
(1, 'localhost:8080', 'uploads', 'D:\\\\uploadtest\\\\upload');

-- --------------------------------------------------------

--
-- Table structure for table `documenttype`
--

CREATE TABLE IF NOT EXISTS `documenttype` (
  `typeId` varchar(10) DEFAULT NULL,
  `typeName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documenttype`
--

INSERT INTO `documenttype` (`typeId`, `typeName`) VALUES
('1', 'Citizenship'),
('2', 'Lalpurja'),
('3', 'Tiro Rasid');

-- --------------------------------------------------------

--
-- Table structure for table `familydetail`
--

CREATE TABLE IF NOT EXISTS `familydetail` (
  `id` int(11) NOT NULL,
  `pid` varchar(20) DEFAULT NULL,
  `cusRelation` varchar(20) CHARACTER SET utf8 NOT NULL,
  `cusRelName` varchar(50) CHARACTER SET utf8 NOT NULL,
  `dateOfBirth` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `citizenshipNo` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `remarks` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `inputter` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `authorizer` varchar(150) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `familydetail`
--

INSERT INTO `familydetail` (`id`, `pid`, `cusRelation`, `cusRelName`, `dateOfBirth`, `citizenshipNo`, `remarks`, `inputter`, `authorizer`) VALUES
(3, '0000001', '', '', '', '', '', 'sahakari', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `familyrelationtbl`
--

CREATE TABLE IF NOT EXISTS `familyrelationtbl` (
  `relationId` int(11) NOT NULL,
  `relationName` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `familyrelationtbl`
--

INSERT INTO `familyrelationtbl` (`relationId`, `relationName`) VALUES
(1, 'Grandfather'),
(2, 'Grandmother'),
(3, 'Father'),
(4, 'Mother'),
(5, 'Spouse'),
(6, 'Son'),
(7, 'Daughter');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `Pid` int(11) NOT NULL,
  `file_name` varchar(64) NOT NULL,
  `file_size` mediumint(8) unsigned NOT NULL,
  `file` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fy`
--

CREATE TABLE IF NOT EXISTS `fy` (
  `Fy` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fy`
--

INSERT INTO `fy` (`Fy`) VALUES
('2075/2076');

-- --------------------------------------------------------

--
-- Table structure for table `jobdetail`
--

CREATE TABLE IF NOT EXISTS `jobdetail` (
  `id` int(11) NOT NULL,
  `pid` varchar(20) DEFAULT NULL,
  `cusJob` varchar(20) CHARACTER SET utf8 NOT NULL,
  `cusInstitution` varchar(50) CHARACTER SET utf8 NOT NULL,
  `cusPost` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `incomePeryear` double(10,0) DEFAULT NULL,
  `remarks` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `inputter` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `authorizer` varchar(150) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobdetail`
--

INSERT INTO `jobdetail` (`id`, `pid`, `cusJob`, `cusInstitution`, `cusPost`, `incomePeryear`, `remarks`, `inputter`, `authorizer`) VALUES
(3, '0000001', '', '', '', 0, '', 'sahakari', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `memberdocuments`
--

CREATE TABLE IF NOT EXISTS `memberdocuments` (
  `documentid` bigint(20) NOT NULL,
  `memberid` varchar(20) DEFAULT NULL,
  `documenttype` varchar(40) DEFAULT NULL,
  `originalfilename` varchar(200) DEFAULT NULL,
  `generatedname` varchar(50) DEFAULT NULL,
  `documentpath` varchar(300) DEFAULT NULL,
  `reserve1` varchar(70) DEFAULT NULL,
  `reserve2` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `multipletransactiontbl`
--

CREATE TABLE IF NOT EXISTS `multipletransactiontbl` (
  `id` int(11) NOT NULL,
  `transactionId` varchar(20) DEFAULT NULL,
  `transactionNo` varchar(15) DEFAULT NULL,
  `bookingDate` varchar(10) DEFAULT NULL,
  `valueDate` varchar(10) DEFAULT NULL,
  `processingDate` varchar(10) DEFAULT NULL,
  `accountNumber` varchar(20) DEFAULT NULL,
  `drcr` varchar(1) DEFAULT NULL,
  `amount` double(16,2) DEFAULT NULL,
  `narrative` varchar(35) DEFAULT NULL,
  `cheqNumber` varchar(25) DEFAULT NULL,
  `transactionCode` varchar(5) DEFAULT NULL,
  `branchId` varchar(4) DEFAULT NULL,
  `inputter` varchar(35) DEFAULT NULL,
  `authorizer` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Triggers `multipletransactiontbl`
--
DELIMITER $$
CREATE TRIGGER `makebalances1` AFTER INSERT ON `multipletransactiontbl`
 FOR EACH ROW BEGIN
if new.drcr='C' then
UPDATE accountstbl set clearedBal=clearedBal-new.amount where accountNumber=new.accountNumber;
else
UPDATE accountstbl set clearedBal=clearedBal+new.amount where accountNumber=new.accountnumber;
end if;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `roleindex`
--

CREATE TABLE IF NOT EXISTS `roleindex` (
  `roles` varchar(500) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roleindex`
--

INSERT INTO `roleindex` (`roles`, `name`) VALUES
('#retailoperation', 'account'),
('#member,#retailoperation,#shareholder,#generaltransaction,#loanmodule,#nonfundbusiness,#otherutilities,#reports,#adminsettings', 'admin'),
('#loanmodule, #nonfundbusiness', 'relation officer'),
('#member, #loanmodule', 'staff');

-- --------------------------------------------------------

--
-- Table structure for table `securedlimittbl`
--

CREATE TABLE IF NOT EXISTS `securedlimittbl` (
  `PID` varchar(8) DEFAULT NULL,
  `productCode` varchar(5) DEFAULT NULL,
  `limitSerial` varchar(3) DEFAULT NULL,
  `limitReference` varchar(20) DEFAULT NULL,
  `limitType` varchar(1) DEFAULT NULL,
  `applicationDateNp` varchar(10) DEFAULT NULL,
  `applicationDateEn` date DEFAULT NULL,
  `approvedDateNp` varchar(10) DEFAULT NULL,
  `approvedDateEn` date DEFAULT NULL,
  `maturityDateNp` varchar(10) DEFAULT NULL,
  `maturityDateEn` date DEFAULT NULL,
  `reviewDateNp` varchar(10) DEFAULT NULL,
  `reviewDateEn` date DEFAULT NULL,
  `lastdrawDateNp` varchar(10) DEFAULT NULL,
  `lastdrawDateEn` date DEFAULT NULL,
  `limitAvailableAmount` double(16,2) DEFAULT NULL,
  `reducingLimit` varchar(1) DEFAULT NULL,
  `approvedAmount` double(16,2) DEFAULT NULL,
  `maximumwithdrawlAmount` double(16,2) DEFAULT NULL,
  `utilizedAmount` double(16,2) DEFAULT NULL,
  `balanceAmount` double(16,2) DEFAULT NULL,
  `limitTransferTocus` varchar(8) DEFAULT NULL,
  `limitTransferFromcus` varchar(8) DEFAULT NULL,
  `Status` varchar(5) DEFAULT NULL,
  `Inputter` varchar(150) DEFAULT NULL,
  `authorizer` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shareacledgertbl`
--

CREATE TABLE IF NOT EXISTS `shareacledgertbl` (
  `id` bigint(20) NOT NULL,
  `accountNo` varchar(20) DEFAULT NULL,
  `legacyAccountNo` varchar(50) DEFAULT NULL,
  `pid` varchar(20) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `narration` varchar(50) DEFAULT NULL,
  `drQuantity` varchar(50) DEFAULT NULL,
  `crQuantity` varchar(50) DEFAULT NULL,
  `balanceQuantity` varchar(50) DEFAULT NULL,
  `crAmount` varchar(50) DEFAULT NULL,
  `drAmount` varchar(50) DEFAULT NULL,
  `balanceAmount` varchar(50) DEFAULT NULL,
  `inputter` varchar(50) DEFAULT NULL,
  `authorizer` varchar(100) DEFAULT NULL,
  `inputDate` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sharecertificate`
--

CREATE TABLE IF NOT EXISTS `sharecertificate` (
  `id` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `shareid` varchar(20) DEFAULT NULL,
  `shareCertNo` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `shareFrom` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `shareTo` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `totalShareNos` int(11) DEFAULT NULL,
  `shareRate` double(10,2) DEFAULT NULL,
  `shareAmount` double(10,2) DEFAULT NULL,
  `shareDate` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `inputter` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `authorizer` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `categoryId` varchar(5) DEFAULT NULL,
  `alternateAccountNo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `staffCode` varchar(10) DEFAULT NULL,
  `staffName` varchar(35) DEFAULT NULL,
  `staffAddress` varchar(35) DEFAULT NULL,
  `Post` varchar(25) DEFAULT NULL,
  `branchCode` varchar(4) DEFAULT NULL,
  `Pid` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `statementtbl`
--

CREATE TABLE IF NOT EXISTS `statementtbl` (
  `Id` varchar(20) DEFAULT NULL,
  `refNo` varchar(35) DEFAULT NULL,
  `valueDate` varchar(10) DEFAULT NULL,
  `bookingDate` varchar(10) DEFAULT NULL,
  `AccountNumber` varchar(20) DEFAULT NULL,
  `cusId` varchar(8) DEFAULT NULL,
  `categoryId` varchar(5) DEFAULT NULL,
  `debitamount` double(16,2) DEFAULT NULL,
  `creditamount` double(16,2) DEFAULT NULL,
  `balanceamount` double(16,2) DEFAULT NULL,
  `narrative` varchar(35) DEFAULT NULL,
  `chequename` varchar(35) DEFAULT NULL,
  `paymentto` varchar(35) DEFAULT NULL,
  `cheqNumber` varchar(25) DEFAULT NULL,
  `branchId` varchar(4) DEFAULT NULL,
  `inputter` varchar(150) DEFAULT NULL,
  `authorizer` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `statementtbl`
--

INSERT INTO `statementtbl` (`Id`, `refNo`, `valueDate`, `bookingDate`, `AccountNumber`, `cusId`, `categoryId`, `debitamount`, `creditamount`, `balanceamount`, `narrative`, `chequename`, `paymentto`, `cheqNumber`, `branchId`, `inputter`, `authorizer`) VALUES
('FT1808250010', '', '2075-04-01', '2075-04-01', '010010000001001', NULL, NULL, 8000.00, 0.00, 8000.00, NULL, NULL, NULL, NULL, NULL, 'sahakari', 'sahakari'),
('FT1808250010', '', '2075-04-01', '2075-04-01', '010010000001002', NULL, NULL, 0.00, 8000.00, -8000.00, NULL, NULL, NULL, NULL, NULL, 'sahakari', 'sahakari'),
('FT1808250010', '', '2075-04-01', '2075-04-01', '010010000001002', NULL, NULL, 3000.00, 0.00, -5000.00, NULL, NULL, NULL, NULL, NULL, 'sahakari', 'sahakari'),
('FT1808250010', '', '2075-04-01', '2075-04-01', '010010000001001', NULL, NULL, 0.00, 3000.00, 5000.00, NULL, NULL, NULL, NULL, NULL, 'sahakari', 'sahakari'),
('FT1808250010001', '', '2075-04-01', '2075-04-01', '010010000001001', NULL, NULL, 1000.00, 0.00, 6000.00, NULL, NULL, NULL, NULL, NULL, 'sahakari', 'sahakari'),
('FT1808250010001', '', '2075-04-01', '2075-04-01', '010010000001002', NULL, NULL, 0.00, 1000.00, -6000.00, NULL, NULL, NULL, NULL, NULL, 'sahakari', 'sahakari'),
('FT1808260010001', '', '2075-04-01', '2075-04-01', '010010000001001', NULL, NULL, 45600.00, 0.00, 51600.00, NULL, NULL, NULL, NULL, NULL, 'sahakari', 'sahakari'),
('FT1808260010001', '', '2075-04-01', '2075-04-01', '010010000001002', NULL, NULL, 0.00, 45600.00, -51600.00, NULL, NULL, NULL, NULL, NULL, 'sahakari', 'sahakari'),
('FT1808260010001', '', '2075-04-01', '2075-04-01', '010010000001001', NULL, NULL, 500.00, 0.00, 52100.00, NULL, NULL, NULL, NULL, NULL, 'sahakari', 'sahakari'),
('FT1808260010001', '', '2075-04-01', '2075-04-01', '010010000001002', NULL, NULL, 0.00, 500.00, -52100.00, NULL, NULL, NULL, NULL, NULL, 'sahakari', 'sahakari');

--
-- Triggers `statementtbl`
--
DELIMITER $$
CREATE TRIGGER `makestmtbalances` BEFORE INSERT ON `statementtbl`
 FOR EACH ROW BEGIN
select clearedBal into @strclearedbal from accountstbl where accountNumber=new.accountNumber;
set new.balanceamount=@strclearedbal;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `statustbl`
--

CREATE TABLE IF NOT EXISTS `statustbl` (
  `statusid` int(11) NOT NULL DEFAULT '0',
  `statusName` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statustbl`
--

INSERT INTO `statustbl` (`statusid`, `statusName`) VALUES
(1, 'Private Client'),
(2, 'Green Client'),
(3, 'Super Green Client'),
(4, 'Deceased Individual'),
(5, 'Proprietorship Standard'),
(6, 'Weak collateral Addl coll reqd');

-- --------------------------------------------------------

--
-- Table structure for table `tblagent`
--

CREATE TABLE IF NOT EXISTS `tblagent` (
  `agentid` int(11) NOT NULL,
  `agentname` varchar(50) DEFAULT NULL,
  `agentaddress` varchar(50) DEFAULT NULL,
  `agentphone` varchar(50) DEFAULT NULL,
  `staffcode` varchar(10) DEFAULT NULL,
  `comissionBasis` int(1) DEFAULT NULL,
  `resv1` varchar(50) DEFAULT NULL,
  `reserved1` varchar(50) DEFAULT NULL,
  `reserved2` varchar(50) DEFAULT NULL,
  `reserved3` varchar(50) DEFAULT NULL,
  `reserved4` varchar(50) DEFAULT NULL,
  `reserved5` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcdate`
--

CREATE TABLE IF NOT EXISTS `tblcdate` (
  `CDate` date NOT NULL,
  `CNDate` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcdate`
--

INSERT INTO `tblcdate` (`CDate`, `CNDate`) VALUES
('2017-08-18', '20740502');

-- --------------------------------------------------------

--
-- Table structure for table `tblchequeissue`
--

CREATE TABLE IF NOT EXISTS `tblchequeissue` (
  `TrNo` int(11) DEFAULT NULL,
  `TrDateN` varchar(50) DEFAULT NULL,
  `TrDateE` datetime DEFAULT NULL,
  `ACode` int(11) DEFAULT NULL,
  `AcNo` varchar(50) DEFAULT NULL,
  `IssuedFrom` varchar(50) DEFAULT NULL,
  `IssuedTo` varchar(50) DEFAULT NULL,
  `ChequeWithD` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblchequeissuecus`
--

CREATE TABLE IF NOT EXISTS `tblchequeissuecus` (
  `TrNo` int(11) DEFAULT NULL,
  `TrDateN` varchar(50) DEFAULT NULL,
  `TrDateE` datetime DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `IssuedFrom` varchar(50) DEFAULT NULL,
  `IssuedTo` varchar(50) DEFAULT NULL,
  `ChequeWithD` varchar(50) DEFAULT NULL,
  `CheqAmt` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcommission`
--

CREATE TABLE IF NOT EXISTS `tblcommission` (
  `ACode` int(11) DEFAULT NULL,
  `Ahead` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbldateconv`
--

CREATE TABLE IF NOT EXISTS `tbldateconv` (
  `NYr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `EDate` date DEFAULT NULL,
  `M1` int(11) DEFAULT NULL,
  `M2` int(11) DEFAULT NULL,
  `M3` int(11) DEFAULT NULL,
  `M4` int(11) DEFAULT NULL,
  `M5` int(11) DEFAULT NULL,
  `M6` int(11) DEFAULT NULL,
  `M7` int(11) DEFAULT NULL,
  `M8` int(11) DEFAULT NULL,
  `M9` int(11) DEFAULT NULL,
  `M10` int(11) DEFAULT NULL,
  `M11` int(11) DEFAULT NULL,
  `M12` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldateconv`
--

INSERT INTO `tbldateconv` (`NYr`, `EDate`, `M1`, `M2`, `M3`, `M4`, `M5`, `M6`, `M7`, `M8`, `M9`, `M10`, `M11`, `M12`) VALUES
('2010', '1953-04-13', 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30),
('2011', '1954-04-13', 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
('2012', '1955-04-14', 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30),
('2013', '1956-04-13', 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
('2014', '1957-04-13', 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30),
('2015', '1958-04-13', 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
('2016', '1959-04-14', 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30),
('2017', '1960-04-13', 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
('2018', '1961-04-13', 31, 32, 31, 32, 31, 30, 30, 29, 30, 29, 30, 30),
('2019', '1962-04-13', 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31),
('2020', '1963-04-14', 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30),
('2021', '1964-04-13', 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
('2022', '1965-04-13', 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30),
('2023', '1966-04-13', 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31),
('2024', '1968-04-14', 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30),
('2025', '1968-04-13', 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
('2026', '1969-04-13', 31, 32, 31, 31, 31, 30, 30, 30, 29, 29, 30, 31),
('2027', '1970-04-14', 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31),
('2028', '1971-04-14', 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
('2029', '1972-04-13', 31, 31, 32, 31, 32, 30, 30, 29, 30, 29, 30, 30),
('2030', '1973-04-13', 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
('2031', '1974-04-14', 30, 32, 31, 32, 30, 30, 30, 30, 29, 30, 29, 31),
('2032', '1975-04-14', 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
('2033', '1976-04-13', 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 29),
('2034', '1977-04-13', 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
('2035', '1978-04-14', 30, 32, 31, 32, 31, 31, 29, 30, 30, 29, 29, 31),
('2036', '1979-04-14', 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
('2037', '1980-04-13', 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30),
('2038', '1981-04-13', 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
('2039', '1982-04-14', 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30),
('2040', '1983-04-14', 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
('2041', '1984-04-13', 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30),
('2042', '1985-04-13', 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
('2043', '1986-04-14', 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30),
('2044', '1987-04-14', 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
('2045', '1988-04-13', 31, 32, 31, 32, 31, 30, 30, 29, 30, 29, 30, 30),
('2046', '1989-04-13', 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
('2047', '1990-04-14', 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30),
('2048', '1991-04-14', 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
('2049', '1992-04-13', 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30),
('2050', '1993-04-13', 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31),
('2051', '1994-04-14', 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30),
('2052', '1995-04-14', 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
('2053', '1996-04-13', 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30),
('2054', '1997-04-13', 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31),
('2055', '1998-04-14', 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
('2056', '1999-04-14', 31, 31, 32, 31, 32, 30, 30, 29, 30, 29, 30, 30),
('2057', '2000-04-13', 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
('2058', '2001-04-14', 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31),
('2059', '2002-04-14', 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
('2060', '2003-04-14', 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30),
('2061', '2004-04-13', 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
('2062', '2005-04-14', 31, 31, 31, 32, 31, 31, 29, 30, 29, 30, 29, 31),
('2063', '2006-04-14', 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
('2064', '2007-04-14', 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30),
('2065', '2008-04-13', 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
('2066', '2009-04-14', 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 29, 31),
('2067', '2010-04-14', 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
('2068', '2011-04-14', 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30),
('2069', '2012-04-13', 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
('2070', '2013-04-14', 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30),
('2071', '2014-04-14', 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
('2072', '2015-04-14', 31, 32, 31, 32, 31, 30, 30, 29, 30, 29, 30, 30),
('2073', '2016-04-13', 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
('2074', '2017-04-14', 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30),
('2075', '2018-04-14', 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
('2076', '2019-04-14', 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30),
('2077', '2020-04-13', 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31),
('2078', '2021-04-14', 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30),
('2079', '2022-04-14', 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
('2080', '2023-04-14', 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30),
('2081', '2024-04-13', 31, 31, 32, 32, 31, 30, 30, 30, 29, 30, 30, 30),
('2082', '2025-04-14', 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30),
('2083', '2026-04-14', 31, 31, 32, 31, 31, 30, 30, 30, 29, 30, 30, 30),
('2084', '2027-04-14', 31, 31, 32, 31, 31, 30, 30, 30, 29, 30, 30, 30),
('2085', '2028-04-13', 31, 32, 31, 32, 30, 31, 30, 30, 29, 30, 30, 30),
('2086', '2029-04-14', 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30),
('2087', '2030-04-14', 31, 31, 32, 31, 31, 31, 30, 30, 29, 30, 30, 30),
('2088', '2031-04-15', 30, 31, 32, 32, 30, 31, 30, 30, 29, 30, 30, 30),
('2089', '2032-04-14', 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30),
('2090', '2033-04-14', 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30),
('2091', '2034-04-14', 31, 31, 32, 31, 31, 31, 30, 30, 29, 30, 30, 30),
('2092', '2035-04-15', 30, 31, 32, 32, 31, 30, 30, 30, 29, 30, 30, 30),
('2093', '2036-04-14', 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30),
('2094', '2037-04-14', 31, 31, 32, 31, 31, 30, 30, 30, 29, 30, 30, 30),
('2095', '2038-04-14', 31, 31, 32, 31, 31, 31, 30, 29, 30, 30, 30, 30),
('2096', '2039-04-15', 30, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30),
('2097', '2040-04-13', 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30),
('2098', '2041-04-14', 31, 31, 32, 31, 31, 31, 29, 30, 29, 30, 29, 31),
('2099', '2042-04-14', 31, 31, 32, 31, 31, 31, 30, 29, 29, 30, 30, 30);

-- --------------------------------------------------------

--
-- Table structure for table `tbldeptype`
--

CREATE TABLE IF NOT EXISTS `tbldeptype` (
  `DepID` varchar(2) NOT NULL DEFAULT '',
  `DepType` varchar(20) DEFAULT NULL,
  `Discount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldeptype`
--

INSERT INTO `tbldeptype` (`DepID`, `DepType`, `Discount`) VALUES
('00', 'Individual', 0),
('01', 'Institutiional', 0),
('02', 'Staff', 0),
('03', 'Jestha Nagarik', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblgr`
--

CREATE TABLE IF NOT EXISTS `tblgr` (
  `GroupID` varchar(3) DEFAULT NULL,
  `Groupname` varchar(25) DEFAULT NULL,
  `Groupadd` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblguarenters`
--

CREATE TABLE IF NOT EXISTS `tblguarenters` (
  `AcNo` varchar(50) DEFAULT NULL,
  `PID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblloancolltmp`
--

CREATE TABLE IF NOT EXISTS `tblloancolltmp` (
  `AcNo` varchar(50) DEFAULT NULL,
  `RepDateN` varchar(50) DEFAULT NULL,
  `Tamt` double DEFAULT NULL,
  `OnDueAmt` double DEFAULT NULL,
  `OverDueAmt` double DEFAULT NULL,
  `IDateS` varchar(50) DEFAULT NULL,
  `IDateN` varchar(50) DEFAULT NULL,
  `IDays` smallint(6) DEFAULT NULL,
  `IDays1` smallint(6) DEFAULT NULL,
  `IDays2` smallint(6) DEFAULT NULL,
  `IDays3` smallint(6) DEFAULT NULL,
  `IRate` double DEFAULT NULL,
  `PIRate1` double DEFAULT NULL,
  `PIRate2` double DEFAULT NULL,
  `PIRate3` double DEFAULT NULL,
  `IntAmt` double DEFAULT NULL,
  `IntAmt1` double DEFAULT NULL,
  `IntAmt2` double DEFAULT NULL,
  `IntAmt3` double DEFAULT NULL,
  `TIntAmt` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblloandetail`
--

CREATE TABLE IF NOT EXISTS `tblloandetail` (
  `AcNo` varchar(50) DEFAULT NULL,
  `ScheNo` float DEFAULT NULL,
  `AppDateN` varchar(50) DEFAULT NULL,
  `AppDateE` datetime DEFAULT NULL,
  `AppAmt` double DEFAULT NULL,
  `RePayDateN` varchar(50) DEFAULT NULL,
  `RePayDateE` datetime DEFAULT NULL,
  `ScheDuleType` varchar(255) DEFAULT NULL,
  `Freq` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblo`
--

CREATE TABLE IF NOT EXISTS `tblo` (
  `Oname` varchar(255) DEFAULT NULL,
  `OAdd` varchar(255) DEFAULT NULL,
  `OPhone` varchar(255) DEFAULT NULL,
  `OPan` varchar(50) DEFAULT NULL,
  `Cat` tinyint(4) DEFAULT NULL,
  `ONameNep` varchar(100) DEFAULT NULL,
  `OAddNep` varchar(100) DEFAULT NULL,
  `cheq` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblo`
--

INSERT INTO `tblo` (`Oname`, `OAdd`, `OPhone`, `OPan`, `Cat`, `ONameNep`, `OAddNep`, `cheq`) VALUES
('Coop', 'Kathmandu', '.', '.', 1, '.', '.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblreceipt`
--

CREATE TABLE IF NOT EXISTS `tblreceipt` (
  `RecNo` int(11) DEFAULT NULL,
  `AccountNo` varchar(50) DEFAULT NULL,
  `StName` varchar(50) DEFAULT NULL,
  `TrDate` varchar(50) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `RecAmt` double DEFAULT NULL,
  `RecBy` varchar(50) DEFAULT NULL,
  `TransNo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblrepayschedule`
--

CREATE TABLE IF NOT EXISTS `tblrepayschedule` (
  `AcNo` varchar(50) DEFAULT NULL,
  `ScheNo` float DEFAULT NULL,
  `RepDateN` varchar(50) DEFAULT NULL,
  `RepDateE` datetime DEFAULT NULL,
  `Amt` double DEFAULT NULL,
  `CollAmt` double DEFAULT NULL,
  `BalAmt` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblrepayscheduletemp`
--

CREATE TABLE IF NOT EXISTS `tblrepayscheduletemp` (
  `AcNo` varchar(50) DEFAULT NULL,
  `ScheNo` float DEFAULT NULL,
  `RepDateN` varchar(50) DEFAULT NULL,
  `RepDateE` datetime DEFAULT NULL,
  `Amt` double DEFAULT NULL,
  `CollAmt` double DEFAULT NULL,
  `BalAmt` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblsharecert`
--

CREATE TABLE IF NOT EXISTS `tblsharecert` (
  `ShareHolderID` varchar(20) DEFAULT NULL,
  `ShareCertNo` varchar(20) DEFAULT NULL,
  `Sharefrom` varchar(10) DEFAULT NULL,
  `Shareto` varchar(10) DEFAULT NULL,
  `TotalshareNos` int(11) DEFAULT NULL,
  `ShareDate` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblshareholder`
--

CREATE TABLE IF NOT EXISTS `tblshareholder` (
  `ShareHolderID` varchar(20) NOT NULL DEFAULT '',
  `ShareHolderName` varchar(35) DEFAULT NULL,
  `AddDistrict` varchar(35) DEFAULT NULL,
  `AddVdc` varchar(35) DEFAULT NULL,
  `AddWardNo` varchar(2) DEFAULT NULL,
  `AddTole` varchar(35) DEFAULT NULL,
  `Citizenshipno` varchar(35) DEFAULT NULL,
  `Passportno` varchar(35) DEFAULT NULL,
  `AddPhone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblworkingoffice`
--

CREATE TABLE IF NOT EXISTS `tblworkingoffice` (
  `officeid` varchar(3) NOT NULL DEFAULT '',
  `officename` varchar(50) DEFAULT NULL,
  `officeaddress` varchar(50) DEFAULT NULL,
  `officetelephone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teller`
--

CREATE TABLE IF NOT EXISTS `teller` (
  `tellerId` varchar(30) NOT NULL DEFAULT '',
  `userId` varchar(35) DEFAULT NULL,
  `accountNumber` varchar(25) DEFAULT NULL,
  `accountName` varchar(35) DEFAULT NULL,
  `openDate` varchar(10) DEFAULT NULL,
  `openDateN` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tellertransactiontbl`
--

CREATE TABLE IF NOT EXISTS `tellertransactiontbl` (
  `transactionId` varchar(20) DEFAULT NULL,
  `bookingDate` varchar(10) DEFAULT NULL,
  `valueDate` varchar(10) DEFAULT NULL,
  `processingDate` varchar(10) DEFAULT NULL,
  `debitAccountNumber` varchar(20) DEFAULT NULL,
  `creditAccountNumber` varchar(20) DEFAULT NULL,
  `narrative` varchar(35) DEFAULT NULL,
  `cheqNumber` varchar(25) DEFAULT NULL,
  `amount` double(16,2) DEFAULT NULL,
  `transactionCode` int(11) DEFAULT NULL,
  `branchId` varchar(4) DEFAULT NULL,
  `inputter` varchar(35) DEFAULT NULL,
  `authorizer` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transactiontbl`
--

CREATE TABLE IF NOT EXISTS `transactiontbl` (
  `Id` varchar(20) NOT NULL,
  `refNo` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `transactionType` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `valueDate` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `bookingDate` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `debitAccountNumber` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `debitCurrency` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `debitNarrative` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `creditAccountNumber` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `creditCurrency` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `creditNarative` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `amount` double(16,2) DEFAULT NULL,
  `commissionCode` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `commissionType` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `commissionAmount` double(16,2) DEFAULT NULL,
  `chequeNumber` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `processingDate` datetime DEFAULT NULL,
  `Override` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `recordStatus` varchar(4) CHARACTER SET utf8 DEFAULT 'UNAU',
  `branchCode` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `inputter` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `authorizer` varchar(150) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactiontbl`
--

INSERT INTO `transactiontbl` (`Id`, `refNo`, `transactionType`, `valueDate`, `bookingDate`, `debitAccountNumber`, `debitCurrency`, `debitNarrative`, `creditAccountNumber`, `creditCurrency`, `creditNarative`, `amount`, `commissionCode`, `commissionType`, `commissionAmount`, `chequeNumber`, `processingDate`, `Override`, `recordStatus`, `branchCode`, `inputter`, `authorizer`) VALUES
('FT1808260010001', '', '', '2075-04-01', '2075-04-01', '010010000001001', 'NPR', 'PAID', '010010000001002', 'NPR', 'DEPOSIT', 500.00, '', '', 0.00, '', '2018-08-26 04:27:00', '', '', '', 'sahakari', 'sahakari');

--
-- Triggers `transactiontbl`
--
DELIMITER $$
CREATE TRIGGER `TrgNwtrans` BEFORE INSERT ON `transactiontbl`
 FOR EACH ROW BEGIN
DECLARE nwacnumber varchar(20);
if length(new.creditaccountnumber)<15 then
Select accountNumber into nwacnumber from accountstbl where alternativeaccountid=new.creditaccountnumber;
  SET NEW.creditaccountnumber = nwacnumber;
end if;




END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `makebalances` AFTER INSERT ON `transactiontbl`
 FOR EACH ROW BEGIN
UPDATE accountstbl set clearedBal=clearedBal-new.amount where accountnumber=new.creditaccountnumber;
UPDATE accountstbl set clearedBal=clearedBal+new.amount where accountnumber=new.debitaccountnumber;

UPDATE accountstbl set workingBal=workingbal-new.amount where accountnumber=new.creditaccountnumber;
UPDATE accountstbl set workingBal=workingbal+new.amount where accountnumber=new.debitaccountnumber;

insert into statementtbl(id,refno,valuedate,bookingdate,accountnumber,debitamount,creditamount,inputter,authorizer) values(new.id,new.refno,
new.valuedate,new.bookingdate,new.debitaccountnumber,new.amount,0,new.inputter,new.authorizer);

insert into statementtbl(id,refno,valuedate,bookingdate,accountnumber,creditamount,debitamount,inputter,authorizer) values(new.id,new.refno,
new.valuedate,new.bookingdate,new.creditaccountnumber,new.amount,0,new.inputter,new.authorizer);

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `typetbl`
--

CREATE TABLE IF NOT EXISTS `typetbl` (
  `typeid` int(11) NOT NULL DEFAULT '0',
  `typeName` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `typetbl`
--

INSERT INTO `typetbl` (`typeid`, `typeName`) VALUES
(0, 'Individual'),
(1, 'Corporate'),
(2, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `usertbl`
--

CREATE TABLE IF NOT EXISTS `usertbl` (
  `userid` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` varchar(1) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `givenrole` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `fullName` varchar(30) DEFAULT NULL,
  `post` varchar(30) DEFAULT NULL,
  `staffCode` varchar(10) DEFAULT NULL,
  `startDate` varchar(10) DEFAULT NULL,
  `endDate` varchar(10) DEFAULT NULL,
  `branchCode` varchar(10) DEFAULT NULL,
  `roleName` varchar(30) DEFAULT NULL,
  `functionAllowed` varchar(500) DEFAULT NULL,
  `functionRestriction` varchar(500) DEFAULT NULL,
  `branchAllowed` varchar(500) DEFAULT NULL,
  `additionalFunctions` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `branchAllowedFunctions` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `curStatus` varchar(1) CHARACTER SET utf8 DEFAULT '0',
  `reserved5` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertbl`
--

INSERT INTO `usertbl` (`userid`, `username`, `password`, `status`, `givenrole`, `fullName`, `post`, `staffCode`, `startDate`, `endDate`, `branchCode`, `roleName`, `functionAllowed`, `functionRestriction`, `branchAllowed`, `additionalFunctions`, `branchAllowedFunctions`, `curStatus`, `reserved5`) VALUES
(18, 'sahakari', 'sahakari', '1', 'admin', 'coop test1', 'post', '101', '2017-11-11', '2018-11-11', '001', NULL, '#i,#v,#a,#r,#e', '001', '001-kalimati, 002-kalanki', NULL, '#i', '1', NULL),
(19, 'coop2', 'coop2', '1', 'admin', 'coop test2', 'post', '502', '2017-11-11', '2018-11-11', '002', NULL, '#i,#v,#a,#r,#e', '001', '001-kalimati, 002-kalanki', NULL, '#i', '1', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vbalances`
--
CREATE TABLE IF NOT EXISTS `vbalances` (
`maincode` varchar(1)
,`submain` varchar(2)
,`submain1` varchar(3)
,`categoryId` varchar(5)
,`Opening Debit Balance` double(19,2)
,`Opening Credit Balance` double(19,2)
,`Debit Movement` double(19,2)
,`Credit Movement` double(19,2)
,`Debit Balance` double(19,2)
,`Credit Balance` double(19,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `vdccodes`
--

CREATE TABLE IF NOT EXISTS `vdccodes` (
  `VDCCode` varchar(5) NOT NULL,
  `VDCName` varchar(100) NOT NULL,
  `WardCount` int(11) NOT NULL,
  `DistrictCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vdccodes`
--

INSERT INTO `vdccodes` (`VDCCode`, `VDCName`, `WardCount`, `DistrictCode`) VALUES
('10101', 'Fungling', 11, 1),
('10102', 'Athrai Tribeni', 5, 1),
('10103', 'Sidingwa', 7, 1),
('10104', 'Faktanglung', 7, 1),
('10105', 'Mikhwakhola', 5, 1),
('10106', 'Meringden', 6, 1),
('10107', 'Maiwakhola', 6, 1),
('10108', 'Yangwarak', 6, 1),
('10109', 'Sirijunga', 8, 1),
('10201', 'Fidim', 14, 2),
('10202', 'Falelung', 8, 2),
('10203', 'Falgunanda', 7, 2),
('10204', 'Hilihang', 7, 2),
('10205', 'Kummayek', 5, 2),
('10206', 'Miklajung', 8, 2),
('10207', 'Tumwewa', 5, 2),
('10208', 'Yangwarak', 6, 2),
('10301', 'Illam', 12, 3),
('10302', 'Deumai', 9, 3),
('10303', 'Mai', 10, 3),
('10304', 'Suryodaya', 14, 3),
('10305', 'Fakfokthum', 7, 3),
('10306', 'Chulachuli', 6, 3),
('10307', 'Maijogmai', 6, 3),
('10308', 'Mangsebung', 6, 3),
('10309', 'Rong', 6, 3),
('10310', 'Sandakpur', 5, 3),
('10401', 'Mechinagar', 15, 4),
('10402', 'Damak', 10, 4),
('10403', 'Kankai', 9, 4),
('10404', 'Bhadrapur', 10, 4),
('10405', 'Arjundhara', 11, 4),
('10406', 'Shivasatakshi', 11, 4),
('10407', 'Gauradaha', 9, 4),
('10408', 'Birtamod', 10, 4),
('10409', 'Kamal', 7, 4),
('10410', 'Gaurigunj', 6, 4),
('10411', 'Barhadashi', 7, 4),
('10412', 'Jhapa', 7, 4),
('10413', 'Buddhasanti', 7, 4),
('10414', 'Haldibari', 5, 4),
('10415', 'Kachankawal', 7, 4),
('10501', 'Chainpur', 11, 5),
('10502', 'Dharmadevi', 9, 5),
('10503', 'Khaadbaari', 11, 5),
('10504', 'Madi', 9, 5),
('10505', 'Paanchkhapan', 9, 5),
('10506', 'Bhotkhola', 5, 5),
('10507', 'Chichila', 5, 5),
('10508', 'Makalu', 6, 5),
('10509', 'Sabhapokhari', 6, 5),
('10510', 'Silichong', 5, 5),
('10601', 'Myanglung', 10, 6),
('10602', 'Laligurans', 9, 6),
('10603', 'Athrai ', 7, 6),
('10604', 'Chhathar', 6, 6),
('10605', 'Fedaap', 5, 6),
('10606', 'Menchhayayem', 6, 6),
('10701', 'Bhojpur', 12, 7),
('10702', 'Sadananda', 14, 7),
('10703', 'Tyamkemaiyum', 9, 7),
('10704', 'Ramprasadrai', 8, 7),
('10705', 'Arun', 7, 7),
('10706', 'Pauwadungma', 6, 7),
('10707', 'Salpasilichho', 6, 7),
('10708', 'Aamchowk', 10, 7),
('10709', 'Hatuwagadhi', 9, 7),
('10801', 'Pakhribaas', 10, 8),
('10802', 'Dhankuta', 10, 8),
('10803', 'Mahalaxmi', 9, 8),
('10804', 'Sagurigadhi', 10, 8),
('10805', 'Khalsa Chhintang Sahidbhumi', 7, 8),
('10806', 'Chhathar Jorpati', 6, 8),
('10807', 'Chaubise', 8, 8),
('10901', 'Biratnagar', 19, 9),
('10902', 'Belbaari', 11, 9),
('10903', 'Letang', 9, 9),
('10904', 'Pathari Sanischare', 10, 9),
('10905', 'Rangeli', 9, 9),
('10906', 'Ratuwamai', 10, 9),
('10907', 'Sunawarsi', 9, 9),
('10908', 'Urlabaari', 9, 9),
('10909', 'Sundarharaincha', 12, 9),
('10910', 'Budhiganga', 7, 9),
('10911', 'Dhanpalthan', 7, 9),
('10912', 'Gramthan', 7, 9),
('10913', 'Jahada', 7, 9),
('10914', 'Kanepokhari', 7, 9),
('10915', 'Katahari', 7, 9),
('10916', 'Kerabaari', 10, 9),
('10917', 'Miklajung', 9, 9),
('11001', 'Itahari', 20, 10),
('11002', 'Dharan', 20, 10),
('11003', 'Inaruwa', 10, 10),
('11004', 'Duhabi', 12, 10),
('11005', 'Ramdhuni', 9, 10),
('11006', 'Barah', 11, 10),
('11007', 'Dewangunj', 7, 10),
('11008', 'Koshi', 8, 10),
('11009', 'Gadhi', 6, 10),
('11010', 'Barju', 6, 10),
('11011', 'Bhokraha', 8, 10),
('11012', 'Harinagara', 7, 10),
('11101', 'Solududhkunda', 10, 11),
('11102', 'Dudhkoshi', 7, 11),
('11103', 'Khumbu Pasang Lhamu', 5, 11),
('11104', 'Dudhkausika', 9, 11),
('11105', 'Nechasalyan', 6, 11),
('11106', 'Mahakulung', 5, 11),
('11107', 'Likhu Pike', 5, 11),
('11108', 'Sotang', 5, 11),
('11201', 'Halesituwachung', 11, 12),
('11202', 'Rupakot Majhuwagadhi', 15, 12),
('11203', 'Aiselukharka', 7, 12),
('11204', 'Lamidada', 6, 12),
('11205', 'Jantedhunga', 6, 12),
('11206', 'Khotehang', 9, 12),
('11207', 'Kepilasgadhi', 7, 12),
('11208', 'Diprung', 7, 12),
('11209', 'Sakela', 5, 12),
('11210', 'Barahpokhari', 6, 12),
('11301', 'Siddhicharan', 12, 13),
('11302', 'Khijidemwa', 9, 13),
('11303', 'Champadevi', 10, 13),
('11304', 'Chisankhugadhi', 8, 13),
('11305', 'Manebhanjyang', 9, 13),
('11306', 'Molung', 8, 13),
('11307', 'Likhu', 9, 13),
('11308', 'Sunkoshi', 10, 13),
('11401', 'Katari', 14, 14),
('11402', 'Chaudandagadhi', 10, 14),
('11403', 'Triyuga', 16, 14),
('11404', 'Belaka', 9, 14),
('11405', 'Udaypurgadhi', 8, 14),
('11406', 'Tapli', 5, 14),
('11407', 'Rautamai', 8, 14),
('11408', 'Sunkoshi', 5, 14),
('23201', 'Chandrapur', 10, 32),
('23202', 'Garuda', 9, 32),
('23203', 'Gaur', 13, 32),
('23204', 'Baudhimai', 7, 32),
('23205', 'Brindaban', 8, 32),
('23206', 'Dewahi Gonahi', 7, 32),
('23207', 'Durga Bhagwati', 8, 32),
('23208', 'Gadhimai', 7, 32),
('23209', 'Gujara', 9, 32),
('23210', 'Katahariya', 9, 32),
('23211', 'Madhav Narayan', 9, 32),
('23212', 'Maulapur', 7, 32),
('23213', 'Fatuwa Bijayapur', 5, 32),
('23214', 'Ishanath', 9, 32),
('23215', 'Paroha', 8, 32),
('23216', 'Rajpur', 7, 32),
('23301', 'Kalaiya', 27, 33),
('23302', 'Jitpursimara', 23, 33),
('23303', 'Kolhawi', 11, 33),
('23304', 'Nijgadh', 13, 33),
('23305', 'Mahagadimai', 11, 33),
('23306', 'Simraungadh', 11, 33),
('23307', 'Adarsha Kotwal', 8, 33),
('23308', 'Karaiyamai', 8, 33),
('23309', 'Devtaal', 7, 33),
('23310', 'Pachrauta', 9, 33),
('23311', 'Parwanipur', 9, 33),
('23312', 'Prasauni', 7, 33),
('23313', 'Pheta', 8, 33),
('23314', 'Baragadhi', 6, 33),
('23315', 'Subarna', 8, 33),
('23401', 'Birgunj', 27, 34),
('23402', 'Pokhariya', 11, 34),
('23403', 'Subarnapur', 7, 34),
('23404', 'Jagarnathpur', 6, 34),
('23405', 'Dhobini', 5, 34),
('23406', 'Chhipaharmai', 5, 34),
('23407', 'Pakaha Mainapur', 5, 34),
('23408', 'Bindabasini', 5, 34),
('23409', 'Bahudarmai', 8, 34),
('23410', 'Belawa', 7, 34),
('23411', 'Parsagadhi', 6, 34),
('23412', 'Sakhuwa Prasauni', 6, 34),
('23413', 'Paterwa Sugauli', 7, 34),
('21501', 'rajbiraj nagarpalika', 15, 15),
('21502', 'Kanchanrup', 12, 15),
('21503', 'Dakneshwori ', 11, 15),
('21504', 'Bodebarsain', 16, 15),
('21505', 'Khadak', 11, 15),
('21506', 'Sambhunath', 11, 15),
('21507', 'Surunga', 11, 15),
('21508', 'hanumannagar kankalini', 14, 15),
('21509', 'Krishna sabaran', 5, 15),
('21510', 'Chhinnamasta', 8, 15),
('21511', 'Mahadeva', 6, 15),
('21512', 'Saptakosi', 11, 15),
('21513', 'Tirahut', 5, 15),
('21514', 'Tilathi Koiladi', 8, 15),
('21515', 'Rupani', 6, 15),
('21516', 'Belhi Chapena', 5, 15),
('21517', 'Bishnupur', 7, 15),
('22001', 'Janakpur', 24, 20),
('22002', 'Chhireshwor ', 11, 20),
('22003', 'Ganeshman Charnath', 11, 20),
('22004', 'Dhanusadham', 9, 20),
('22005', 'Nagarain', 10, 20),
('22006', 'Videha', 10, 20),
('22007', 'Mithila', 10, 20),
('22008', 'Sahidnagar', 9, 20),
('22009', 'Sabaila', 13, 20),
('22010', 'Siddidatri', 6, 20),
('22011', 'Janaknandini', 6, 20),
('22012', 'Bateshwor', 5, 20),
('22013', 'Mithila Bihari', 10, 20),
('22014', 'Mukhiyapatti musaharmiya', 6, 20),
('22015', 'Laxminiya', 7, 20),
('22016', 'Hansapur', 8, 20),
('22017', 'Aurahi', 8, 20),
('21601', 'Lahan', 24, 16),
('21602', 'Dhangadimai', 14, 16),
('21603', 'Siraha', 22, 16),
('21604', 'Golbazar', 13, 16),
('21605', 'Mirchaiya', 12, 16),
('21606', 'Kalyanpur', 12, 16),
('21607', 'Bhagawanpur', 5, 16),
('21608', 'Aurahi', 5, 16),
('21609', 'Bishnupur', 5, 16),
('21610', 'Sukhipur', 8, 16),
('21611', 'Karjanha', 7, 16),
('21612', 'Bariyarpatti', 5, 16),
('21613', 'Laxmipur Patari', 6, 16),
('21614', 'Naraha', 5, 16),
('21615', 'Sakhuwanankarkatti', 5, 16),
('21616', 'Arnama', 5, 16),
('21617', 'Nawarajpur', 5, 16),
('22101', 'Jaleshwor', 12, 21),
('22102', 'Bardibas', 13, 21),
('22103', 'Gausala', 12, 21),
('22104', 'Ekdara', 8, 21),
('22105', 'Somana', 8, 21),
('22106', 'Samsi', 7, 21),
('22107', 'Loharpatti', 8, 21),
('22108', 'Ramgopalpur', 6, 21),
('22109', 'Mahottari', 6, 21),
('22110', 'Manara', 8, 21),
('22111', 'Matihani', 6, 21),
('22112', 'Bhanggaha', 9, 21),
('22113', 'Balawa', 7, 21),
('22114', 'Pipara', 7, 21),
('22115', 'Aurahi', 7, 21),
('22201', 'Ishworpur', 15, 22),
('22202', 'Lalbandi', 17, 22),
('22203', 'Haripur', 10, 22),
('22204', 'Haripurba', 11, 22),
('22205', 'Hariban', 11, 22),
('22206', 'Barahathawa', 18, 22),
('22207', 'Balara', 12, 22),
('22208', 'Godaita', 11, 22),
('22209', 'Malangwa', 12, 22),
('22210', 'Bagmati', 10, 22),
('22211', 'Kabilasi', 8, 22),
('22212', 'Chakraghatta ', 13, 22),
('22213', 'Chandranagar', 7, 22),
('22214', 'Dhankaul', 9, 22),
('22215', 'Bramhapuri', 9, 22),
('22216', 'Ramnagar', 10, 22),
('22217', 'Bishnu', 12, 22),
('32301', 'Uttargaya ', 5, 23),
('32302', 'Kalika', 5, 23),
('32303', 'Gosainkunda', 6, 23),
('32304', 'Naukunda', 6, 23),
('32305', 'Parbatikunda', 5, 23),
('32501', 'Bidur', 13, 25),
('32502', 'Belkotgadhi', 13, 25),
('32503', 'Kakani', 8, 25),
('32504', 'Kispang', 5, 25),
('32505', 'Tadigaun', 6, 25),
('32506', 'Tarkeshwor', 6, 25),
('32507', 'Dupcheshwor', 7, 25),
('32508', 'Panchakanya', 5, 25),
('32509', 'Likhu', 6, 25),
('32510', 'Meghang', 6, 25),
('32511', 'Shivapuri', 8, 25),
('32512', 'Suryegadhi', 5, 25),
('32601', 'Kathmandu', 32, 26),
('32602', 'Kageshwori Manohara', 12, 26),
('32603', 'Kirtipur', 10, 26),
('32604', 'Gokarneshwor', 9, 26),
('32605', 'Chandragiri', 15, 26),
('32606', 'Tokha', 11, 26),
('32607', 'Tarkeshwor', 11, 26),
('32608', 'Dakchinkali', 9, 26),
('32609', 'Nagarjun', 10, 26),
('32610', 'Budhanilkantha', 13, 26),
('32611', 'Shankharapur', 9, 26),
('32701', 'Changu Narayan', 9, 27),
('32702', 'Bhaktapur', 10, 27),
('32703', 'Madhyepur Thimi', 9, 27),
('32704', 'Suryebinayak', 10, 27),
('33001', 'Chautara Sangachowkgadhi', 14, 30),
('33002', 'Barabise', 9, 30),
('33003', 'Melamchi', 13, 30),
('33004', 'Indrabati', 12, 30),
('33005', 'Jugal', 7, 30),
('33006', 'Panchpokhari Thanpal', 8, 30),
('33007', 'Balephi', 8, 30),
('33008', 'Botekoshi', 5, 30),
('33009', 'Lisankhu Pakhar', 7, 30),
('33010', 'Sunkoshi', 7, 30),
('33011', 'Helambhu', 7, 30),
('33012', 'Tripurasundari', 6, 30),
('31801', 'Manthali', 14, 18),
('31802', 'Ramechhap', 9, 18),
('31803', 'Umakunda', 7, 18),
('31804', 'Khandadevi', 9, 18),
('31805', 'Gokulganga', 6, 18),
('31806', 'Doramba', 7, 18),
('31807', 'Likhu', 7, 18),
('31808', 'Sunapati', 5, 18),
('31901', 'Kamalamaai', 14, 19),
('31902', 'Dudhauli', 14, 19),
('31903', 'Golanjor', 7, 19),
('31904', 'Ghyankhel', 5, 19),
('31905', 'Tinpatan', 11, 19),
('31906', 'Fikkal', 6, 19),
('31907', 'Marin', 8, 19),
('31908', 'Sunkoshi', 7, 19),
('31909', 'Hariharpurgadhi', 8, 19),
('32901', 'Dhulikhel', 12, 29),
('32902', 'Banepa', 14, 29),
('32903', 'Panauti', 12, 29),
('32904', 'Panchkhaal', 13, 29),
('32905', 'Namobuddha', 11, 29),
('32906', 'Khanikhola', 7, 29),
('32907', 'Chaurideurali', 9, 29),
('32908', 'Temaal', 9, 29),
('32909', 'Bethanchowk', 6, 29),
('32910', 'Bhumlu', 10, 29),
('32911', 'Mandandeupur', 12, 29),
('32912', 'Mahabharat', 8, 29),
('32913', 'Roshi', 12, 29),
('31701', 'Jiri', 9, 17),
('31702', 'Bhimeshwor', 9, 17),
('31703', 'Kalinchowk', 9, 17),
('31704', 'Gaurishankar', 9, 17),
('31705', 'Tamakoshi', 7, 17),
('31706', 'Melung', 7, 17),
('31707', 'Bigu', 8, 17),
('31708', 'Baiteshwor', 8, 17),
('31709', 'Shailung', 8, 17),
('32801', 'Lalitpur', 29, 28),
('32802', 'Godawari', 14, 28),
('32803', 'Mahalaxmi', 10, 28),
('32804', 'Konjyosom', 5, 28),
('32805', 'Bagmati', 7, 28),
('32806', 'Mahankaal', 6, 28),
('32401', 'Dhunibenshi', 9, 24),
('32402', 'Nilkantha', 14, 24),
('32403', 'Khaniyabash', 5, 24),
('32404', 'Gajuri', 8, 24),
('32405', 'Galchi', 8, 24),
('32406', 'Gangajamuna', 7, 24),
('32407', 'Jwalamukhi', 7, 24),
('32408', 'Thakre', 11, 24),
('32409', 'Netrabati', 5, 24),
('32410', 'Benighat Rorang', 10, 24),
('32411', 'Rubi Valley', 6, 24),
('32412', 'Sidhlake', 7, 24),
('32413', 'Tripurasundari', 7, 24),
('33101', 'Hetauda', 19, 31),
('33102', 'Thaha', 12, 31),
('33103', 'Indrasarobar', 5, 31),
('33104', 'Kailash', 10, 31),
('33105', 'Bakaiya', 12, 31),
('33106', 'Bagmati', 9, 31),
('33107', 'Bhimfedi', 9, 31),
('33108', 'Makwanpurgadhi', 8, 31),
('33109', 'Manhari', 9, 31),
('33110', 'Raksirang', 9, 31),
('33501', 'Bharatpur', 29, 35),
('33502', 'Kalika', 11, 35),
('33503', 'Khairhani', 13, 35),
('33504', 'Madi', 9, 35),
('33505', 'Ratnanagar', 16, 35),
('33506', 'Rapti', 13, 35),
('33507', 'Echyakamana', 7, 35),
('44101', 'Galyang', 11, 41),
('44102', 'Chapkot', 10, 41),
('44103', 'Putalibazar', 14, 41),
('44104', 'Virkot', 9, 41),
('44105', 'Waling', 14, 41),
('44106', 'Arjunchaupari', 6, 41),
('44107', 'Aadhikhola', 6, 41),
('44108', 'Kaligandaki', 7, 41),
('44109', 'Fedikhola', 5, 41),
('44110', 'Biruwa', 8, 41),
('44111', 'Harinas', 7, 41),
('43901', 'Pokhara Lekhanath', 33, 39),
('43902', 'Annapurna', 11, 39),
('43903', 'Machhapuchhre', 9, 39),
('43904', 'Madi', 12, 39),
('43905', 'Rupa', 7, 39),
('44801', 'Gharpajhong', 5, 48),
('44802', 'Thasang', 5, 48),
('44803', 'Dalome', 5, 48),
('44804', 'Lomanthang', 5, 48),
('44805', 'Barhagaun Muktichhetra', 5, 48),
('45101', 'Kushma', 14, 51),
('45102', 'Phalewas', 11, 51),
('45103', 'Jaljala', 9, 51),
('45104', 'paiyu', 7, 51),
('45105', 'Mahashila', 6, 51),
('45106', 'Modi', 8, 51),
('45107', 'Bihadi', 6, 51),
('43701', 'Narfu', 5, 37),
('43702', 'Nashon', 9, 37),
('43703', 'Neshyang', 9, 37),
('43704', 'Chame', 5, 37),
('44001', 'Bhanu', 13, 40),
('44002', 'Bhimad', 9, 40),
('44003', 'Byas', 14, 40),
('44004', 'Shuklagandaki', 12, 40),
('44005', 'Ambukhaireni', 6, 40),
('44006', 'Rhishing', 8, 40),
('44007', 'Ghiring', 5, 40),
('44008', 'Devghat', 5, 40),
('44009', 'Myagdi', 7, 40),
('44010', 'Bandipur', 6, 40),
('44901', 'Beni', 10, 49),
('44902', 'Annapurna', 8, 49),
('44903', 'Dhaulagiri', 7, 49),
('44904', 'Mangala', 5, 49),
('44905', 'Malika', 7, 49),
('44906', 'Raghuganga', 8, 49),
('45001', 'Baglung', 14, 50),
('45002', 'Galkot', 11, 50),
('45003', 'Jaimini', 10, 50),
('45004', 'Dhorpatan', 9, 50),
('45005', 'Bareng', 5, 50),
('45006', 'Kathekhola', 8, 50),
('45007', 'Tamankhola', 6, 50),
('45008', 'Tarakhola', 5, 50),
('45009', 'Nisikhola', 7, 50),
('45010', 'Badigad', 10, 50),
('43601', 'Gorkha', 14, 36),
('43602', 'Palungtar', 10, 36),
('43603', 'Sulikot', 8, 36),
('43604', 'Siranchok', 8, 36),
('43605', 'Ajirkot', 5, 36),
('43606', 'Aarughat', 10, 36),
('43607', 'Gandaki', 8, 36),
('43608', 'Chumnubri', 7, 36),
('43609', 'Dharche', 7, 36),
('43610', 'Bhimsen', 8, 36),
('43611', 'Sahid Lakhan', 9, 36),
('43801', 'Beshi Sahar', 11, 38),
('43802', 'Madhya Nepal', 10, 38),
('43803', 'Rainas', 10, 38),
('43804', 'Sundar Bajar', 11, 38),
('43805', 'Kobholasothar', 9, 38),
('43806', 'Dudhpokhari', 6, 38),
('43807', 'Dordi', 9, 38),
('43808', 'Marsyandi', 9, 38),
('54601', 'Butwal', 19, 46),
('54602', 'Lumbini Saskritik', 13, 46),
('54603', 'Sidharthanager', 13, 46),
('54604', 'Sammarimai', 7, 46),
('54605', 'Debdaha', 12, 46),
('54606', 'Sainamaina', 11, 46),
('54607', 'Tilottma', 17, 46),
('54608', 'Siyari', 7, 46),
('54609', 'Gaidahawa', 9, 46),
('54610', 'Kanchan', 5, 46),
('54611', 'Kotahimai', 7, 46),
('54612', 'Marchawari', 7, 46),
('54613', 'Mayadevi', 8, 46),
('54614', 'Omsatiya', 6, 46),
('54615', 'Rohindi', 7, 46),
('54616', 'Suddodhan', 7, 46),
('54401', 'Sandhikharka', 12, 44),
('54402', 'Sitganga', 14, 44),
('54403', 'Bhumikasthan', 10, 44),
('54404', 'Chhatradev', 8, 44),
('54405', 'Pandini', 8, 44),
('54406', 'Malarani', 9, 44),
('54501', 'Kawasoti', 17, 45),
('54502', 'Gaindakot', 18, 45),
('54503', 'Devchuli', 17, 45),
('54504', 'Bardghat', 16, 45),
('54505', 'Madhyabindu', 15, 45),
('54506', 'Ramgram', 18, 45),
('54507', 'Sunwal', 13, 45),
('54508', 'Tribenisusta', 7, 45),
('54509', 'Palhinandan', 6, 45),
('54510', 'Pratappur', 9, 45),
('54511', 'Bungdikali', 6, 45),
('54512', 'Bulingtar', 6, 45),
('54513', 'Binaie', 5, 45),
('54514', 'Sarawal', 7, 45),
('54515', 'Hupsekot', 6, 45),
('55601', 'Tulsipur', 19, 56),
('55602', 'Ghorahi', 19, 56),
('55603', 'Lamahi', 9, 56),
('55604', 'Bangalichuli', 8, 56),
('55605', 'Dangisaran', 7, 56),
('55606', 'Gadhawa', 8, 56),
('55607', 'Rajpur', 7, 56),
('55608', 'Rapti', 9, 56),
('55609', 'Santinagar', 7, 56),
('55610', 'Babai', 7, 56),
('55501', 'Sarada', 15, 55),
('55502', 'Bagchaur', 12, 55),
('55503', 'Bangad', 12, 55),
('55504', 'Kalimati', 7, 55),
('55505', 'Tribeni', 6, 55),
('55506', 'Kapurkot', 6, 55),
('55507', 'Chhatreswori', 7, 55),
('55508', 'Dhorchaur', 5, 55),
('55509', 'Kumakhamalika', 7, 55),
('55510', 'Darma', 6, 55),
('55201', 'Musikot', 14, 52),
('55202', 'Chaurjahari', 14, 52),
('55203', 'Aathabiskot', 14, 52),
('55204', 'Putha Uttarganga', 14, 52),
('55205', 'Bhume', 9, 52),
('55206', 'Sisne', 8, 52),
('55207', 'Baphikot', 10, 52),
('55208', 'Tribeni ', 10, 52),
('55209', 'Sanibheri', 11, 52),
('56501', 'Nepalgunj', 23, 65),
('56502', 'Koholpur', 15, 65),
('56503', 'Narainapur', 6, 65),
('56504', 'Raptisonari', 9, 65),
('56505', 'Baijanath', 8, 65),
('56506', 'Khajura', 8, 65),
('56507', 'Duduwa', 6, 65),
('56508', 'Janaki', 6, 65),
('55301', 'Rolpa', 10, 53),
('55302', 'Tribeni', 7, 53),
('55303', 'Duikholi', 6, 53),
('55304', 'Madi', 6, 53),
('55305', 'Runtigadhi', 9, 53),
('55306', 'Lungri', 7, 53),
('55307', 'Sukidaha', 7, 53),
('55308', 'Sunchhahari', 7, 53),
('55309', 'Subarnawoti', 8, 53),
('55310', 'Thabang', 5, 53),
('55401', 'Pyuthan', 10, 54),
('55402', 'Sworgadwari', 9, 54),
('55403', 'Gaumukhi', 7, 54),
('55404', 'Mandabi', 5, 54),
('55405', 'Sarumarani', 6, 54),
('55406', 'Mallarani', 5, 54),
('55407', 'Naubahini', 8, 54),
('55408', 'Jhimruk', 8, 54),
('55409', 'Arawoti', 6, 54),
('56601', 'Gulariya', 12, 66),
('56602', 'Madhuban', 9, 66),
('56603', 'Rajapur', 10, 66),
('56604', 'Thakurbaba', 9, 66),
('56605', 'Bansgadhi', 9, 66),
('56606', 'Barbardiya', 11, 66),
('56607', 'Badhaiyatal', 9, 66),
('56608', 'Geruwa', 6, 66),
('54201', 'Musikot', 9, 42),
('54202', 'Resunga', 14, 42),
('54203', 'Ishma', 6, 42),
('54204', 'Kaligandaki', 7, 42),
('54205', 'Gulmidarbar', 7, 42),
('54206', 'Satyawoti', 8, 42),
('54207', 'Chandrakot', 8, 42),
('54208', 'Ruru', 6, 42),
('54209', 'Chhatrakot', 6, 42),
('54210', 'Dhurkot', 7, 42),
('54211', 'Madane', 7, 42),
('54212', 'Malika', 8, 42),
('54301', 'Rampur', 10, 43),
('54302', 'Tansen', 14, 43),
('54303', 'Nisdi', 7, 43),
('54304', 'Purbakhola', 6, 43),
('54305', 'Rambha', 5, 43),
('54306', 'Mathagadi', 8, 43),
('54307', 'Tinau', 6, 43),
('54308', 'Baganaskali', 9, 43),
('54309', 'Ribdikot', 8, 43),
('54310', ' Rainadevi Chhahara', 8, 43),
('54701', 'Kapilvastu', 12, 47),
('54702', 'Buddhabhumi', 10, 47),
('54703', 'Shivaraj', 11, 47),
('54704', 'Maharajgang', 11, 47),
('54705', 'Krishnanagar', 12, 47),
('54706', 'Bandganga', 11, 47),
('54707', 'Mayadevi', 8, 47),
('54708', 'Yesodhara', 8, 47),
('54709', 'Bijayanagar', 7, 47),
('54710', 'Suddhodhan', 6, 47),
('66101', 'Simkot', 8, 61),
('66102', 'Namkha', 6, 61),
('66103', 'kharpunath', 5, 61),
('66104', 'Surkegad', 8, 61),
('66105', 'Chankheli', 6, 61),
('66106', 'Adanchuli', 6, 61),
('66107', 'Tajakot', 5, 61),
('65801', 'Chhayanath', 14, 58),
('65802', 'Mugumkarmarog', 9, 58),
('65803', 'Soru', 11, 58),
('65804', 'Khatyang', 11, 58),
('66001', 'Khadachakra', 11, 60),
('66002', 'Raskot', 9, 60),
('66003', 'Tilagupha', 11, 60),
('66004', 'Pachaljharana', 9, 60),
('66005', 'Sanni tribeni', 9, 60),
('66006', 'Naraharinath', 9, 60),
('66007', 'Kalika', 8, 60),
('66008', 'Mahabai', 7, 60),
('66009', 'Palata', 9, 60),
('65901', 'Chandannath', 10, 59),
('65902', 'Kankasundari', 8, 59),
('65903', 'Sinja', 6, 59),
('65904', 'Hima', 7, 59),
('65905', 'Tila', 9, 59),
('65906', 'Guthichaur', 5, 59),
('65907', 'Tatopani', 8, 59),
('65908', 'Patarasi', 7, 59),
('66401', 'Birendra', 16, 64),
('66402', 'Bheriganga', 13, 64),
('66403', 'Gurbhakot', 14, 64),
('66404', 'Pabchapuri', 11, 64),
('66405', 'Lekbesi', 10, 64),
('66406', 'Chaukune', 10, 64),
('66407', 'Barahatal', 10, 64),
('66408', 'Chingad', 6, 64),
('66409', 'Simta ', 9, 64),
('66301', 'Narayan', 11, 63),
('66302', 'Dullu', 13, 63),
('66303', 'Chamunda Bindrasaini', 9, 63),
('66304', 'Aathbis', 9, 63),
('66305', 'Bhagawatimai', 7, 63),
('66306', 'Gurash', 8, 63),
('66307', 'Dungeshwar', 6, 63),
('66308', 'Naumule', 8, 63),
('66309', 'Mahabu', 6, 63),
('66310', 'Bhairabi', 7, 63),
('66311', 'Thatikadh', 6, 63),
('65701', 'Thuli veri', 11, 57),
('65702', 'Tripurasundari', 11, 57),
('65703', 'Dolpa buddha', 6, 57),
('65704', 'She phoksundo', 9, 57),
('65705', 'Jagdulla', 6, 57),
('65706', 'Mudkechula', 9, 57),
('65707', 'Kaike', 7, 57),
('65708', 'Chharka tangsong', 6, 57),
('66201', 'veri', 13, 62),
('66202', 'Chhedagad', 13, 62),
('66203', 'Tribeni nalgad ', 13, 62),
('66204', 'Kuse ', 9, 62),
('66205', 'Junichande', 11, 62),
('66206', 'Barekot', 9, 62),
('66207', 'Shibalaya', 9, 62),
('77301', 'Dashrathachanda', 11, 73),
('77302', 'Patan ', 10, 73),
('77303', 'Melauli ', 9, 73),
('77304', 'Purchaudi ', 10, 73),
('77305', 'Surnaya', 8, 73),
('77306', 'Sisag', 9, 73),
('77307', 'Shivanath', 6, 73),
('77308', 'Pancheshwar', 6, 73),
('77309', 'Dogdakedar', 8, 73),
('77310', 'Dilasaini', 7, 73),
('77401', 'Amargadhi ', 11, 74),
('77402', 'Parsuram ', 12, 74),
('77403', 'Aalital', 8, 74),
('77404', 'Bhageshwar', 5, 74),
('77405', 'nabadurga', 5, 74),
('77406', 'Ajayameru ', 6, 74),
('77407', 'Ganyapdhura', 5, 74),
('77501', 'bhimdatta', 19, 75),
('77502', 'Punarbas', 11, 75),
('77503', 'Bedkot ', 10, 75),
('77504', 'Mahakali', 9, 75),
('77505', 'Shuklaphata', 12, 75),
('77506', 'Belauri', 10, 75),
('77507', 'Krishnapur', 9, 75),
('77508', 'Beldandi', 5, 75),
('77509', 'Laljhadi', 6, 75),
('77101', 'Dhangadhi', 19, 71),
('77102', 'Tikapur ', 9, 71),
('77103', 'Ghodaghodi ', 12, 71),
('77104', 'Lamkichuha', 10, 71),
('77105', 'bhajani ', 9, 71),
('77106', 'Godawari', 12, 71),
('77107', 'Gauriganga', 11, 71),
('77108', 'Janaki', 9, 71),
('77109', 'Bardagoriya', 6, 71),
('77110', 'Mohanyal', 7, 71),
('77111', 'Kailari', 9, 71),
('77112', 'Joshipur ', 7, 71),
('77113', 'Chure', 6, 71),
('77001', 'Dipayal siladhi ', 9, 70),
('77002', 'Shikhar', 11, 70),
('77003', 'Purbichauki', 7, 70),
('77004', 'Badikedar', 5, 70),
('77005', 'Jorayal', 6, 70),
('77006', 'Sayal', 6, 70),
('77007', 'Aadarsh', 7, 70),
('77008', 'K.I.C', 7, 70),
('77009', 'Bogatan', 7, 70),
('76801', 'Mangalsen', 14, 68),
('76802', 'Kamalbajar', 10, 68),
('76803', 'Sanphebagar', 14, 68),
('76804', 'Panchadewal Binayak', 9, 68),
('76805', 'Chaurpati ', 7, 68),
('76806', 'Mellekh', 8, 68),
('76807', 'Bannigadi Jayagadh', 6, 68),
('76808', 'Ramaroshan', 7, 68),
('76809', 'Dhakari', 8, 68),
('76810', 'Turmakhad', 8, 68),
('76901', 'jayaprithvi', 11, 69),
('76902', 'Bungal', 11, 69),
('76903', 'Talkot', 7, 69),
('76904', 'Masta', 7, 69),
('76905', 'Khaptadchhanna', 7, 69),
('76906', 'Thalara', 9, 69),
('76907', 'Bitthadchir', 9, 69),
('76908', 'Surma ', 5, 69),
('76909', 'Chhabispathibhera', 7, 69),
('76910', 'Durgathali', 7, 69),
('76911', 'Kedarsyun', 9, 69),
('76912', 'Kanda', 5, 69),
('76701', 'Badimalika', 9, 67),
('76702', 'Tribeni', 9, 67),
('76703', 'Budhiganga', 10, 67),
('76704', 'Budhinanda', 10, 67),
('76705', 'Gaumun ', 6, 67),
('76706', 'Pandav', 6, 67),
('76707', 'Swamikartik', 5, 67),
('76708', 'Chhededaha', 7, 67),
('76709', 'Himali', 7, 67),
('77201', 'Mahakali', 9, 72),
('77202', 'Shailyashikar', 9, 72),
('77203', 'Malikarjun', 8, 72),
('77204', 'Apihimal', 6, 72),
('77205', 'Duhu ', 5, 72),
('77206', 'Naugad', 6, 72),
('77207', 'Marma', 6, 72),
('77208', 'Lekam', 6, 72),
('77209', 'Byash', 6, 72);

-- --------------------------------------------------------

--
-- Structure for view `customerdetail`
--
DROP TABLE IF EXISTS `customerdetail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customerdetail` AS select `a`.`pid` AS `pid`,`a`.`memberid` AS `memberid`,`a`.`registrationDate` AS `registrationDate`,`a`.`name` AS `name`,`a`.`gender` AS `gender`,`a`.`pdistid` AS `pdistid`,`a`.`pvdcmunid` AS `pvdcmunid`,`a`.`pwardno` AS `pwardno`,`a`.`pcity` AS `pcity`,`a`.`ptole` AS `ptole`,`a`.`tdistid` AS `tdistid`,`a`.`tvdcmunid` AS `tvdcmunid`,`a`.`twardno` AS `twardno`,`a`.`tcity` AS `tcity`,`a`.`ttole` AS `ttole`,`a`.`telno` AS `telno`,`a`.`mobno` AS `mobno`,`a`.`fatherName` AS `fatherName`,`a`.`dob` AS `dob`,`a`.`typeid` AS `typeid`,`a`.`statusid` AS `statusid`,`a`.`inputter` AS `inputter`,`a`.`authorizer` AS `authorizer`,`a`.`insertStatus` AS `insertStatus`,`a`.`updateStatus` AS `updateStatus`,`a`.`delStatus` AS `delStatus`,`a`.`address` AS `address`,`a`.`sector` AS `sector`,`a`.`agentid` AS `agentid`,`a`.`resv2` AS `resv2`,`a`.`resv3` AS `resv3`,`a`.`email` AS `email`,`a`.`resv5` AS `resv5`,`b`.`DistrictName` AS `pdistname`,`c`.`DistrictName` AS `tdistname`,`e`.`VDCName` AS `pvdcname`,`f`.`VDCName` AS `tvdcname`,`g`.`statusName` AS `statusName`,`h`.`typeName` AS `typeName`,`i`.`agentname` AS `agentName`,`i`.`agentphone` AS `agentPhone`,`i`.`staffcode` AS `agentstaffcode`,`i`.`agentaddress` AS `agentAddress` from (((((((`customertbl` `a` left join `districtcodes` `b` on((`a`.`pdistid` = `b`.`DistrictCode`))) left join `districtcodes` `c` on((`a`.`tdistid` = `c`.`DistrictCode`))) left join `vdccodes` `e` on((`a`.`pvdcmunid` = `e`.`VDCCode`))) left join `vdccodes` `f` on((`a`.`tvdcmunid` = `f`.`VDCCode`))) left join `statustbl` `g` on((`a`.`statusid` = `g`.`statusid`))) left join `typetbl` `h` on((`a`.`typeid` = `h`.`typeid`))) left join `tblagent` `i` on((`a`.`agentid` = `i`.`agentid`)));

-- --------------------------------------------------------

--
-- Structure for view `vbalances`
--
DROP TABLE IF EXISTS `vbalances`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vbalances` AS select left(`accountstbl`.`categoryId`,1) AS `maincode`,left(`accountstbl`.`categoryId`,2) AS `submain`,left(`accountstbl`.`categoryId`,3) AS `submain1`,`accountstbl`.`categoryId` AS `categoryId`,if((sum(`accountstbl`.`openingBal`) > 0),sum(`accountstbl`.`openingBal`),0) AS `Opening Debit Balance`,if((sum(`accountstbl`.`openingBal`) < 0),-(sum(`accountstbl`.`openingBal`)),0) AS `Opening Credit Balance`,sum(`accountstbl`.`debitMovement`) AS `Debit Movement`,sum(`accountstbl`.`creditMovement`) AS `Credit Movement`,if((sum(`accountstbl`.`clearedBal`) > 0),sum(`accountstbl`.`clearedBal`),0) AS `Debit Balance`,if((sum(`accountstbl`.`clearedBal`) < 0),-(sum(`accountstbl`.`clearedBal`)),0) AS `Credit Balance` from `accountstbl` group by `maincode`,`submain`,`accountstbl`.`categoryId`;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountstbl`
--
ALTER TABLE `accountstbl`
  ADD PRIMARY KEY (`accountNumber`);

--
-- Indexes for table `accountstblmain1`
--
ALTER TABLE `accountstblmain1`
  ADD PRIMARY KEY (`MCode`);

--
-- Indexes for table `accountstblmain2`
--
ALTER TABLE `accountstblmain2`
  ADD PRIMARY KEY (`MCode`);

--
-- Indexes for table `bankaccountdetail`
--
ALTER TABLE `bankaccountdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branchtbl`
--
ALTER TABLE `branchtbl`
  ADD PRIMARY KEY (`branchId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `customertbl`
--
ALTER TABLE `customertbl`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `documentdetails`
--
ALTER TABLE `documentdetails`
  ADD PRIMARY KEY (`documentId`);

--
-- Indexes for table `documentportpathtbl`
--
ALTER TABLE `documentportpathtbl`
  ADD PRIMARY KEY (`documentportpathid`);

--
-- Indexes for table `familydetail`
--
ALTER TABLE `familydetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `familyrelationtbl`
--
ALTER TABLE `familyrelationtbl`
  ADD PRIMARY KEY (`relationId`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`Pid`);

--
-- Indexes for table `jobdetail`
--
ALTER TABLE `jobdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberdocuments`
--
ALTER TABLE `memberdocuments`
  ADD PRIMARY KEY (`documentid`);

--
-- Indexes for table `multipletransactiontbl`
--
ALTER TABLE `multipletransactiontbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roleindex`
--
ALTER TABLE `roleindex`
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `shareacledgertbl`
--
ALTER TABLE `shareacledgertbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sharecertificate`
--
ALTER TABLE `sharecertificate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblagent`
--
ALTER TABLE `tblagent`
  ADD PRIMARY KEY (`agentid`);

--
-- Indexes for table `tblcdate`
--
ALTER TABLE `tblcdate`
  ADD PRIMARY KEY (`CDate`);

--
-- Indexes for table `tbldateconv`
--
ALTER TABLE `tbldateconv`
  ADD PRIMARY KEY (`NYr`);

--
-- Indexes for table `tbldeptype`
--
ALTER TABLE `tbldeptype`
  ADD PRIMARY KEY (`DepID`);

--
-- Indexes for table `tblshareholder`
--
ALTER TABLE `tblshareholder`
  ADD PRIMARY KEY (`ShareHolderID`);

--
-- Indexes for table `tblworkingoffice`
--
ALTER TABLE `tblworkingoffice`
  ADD PRIMARY KEY (`officeid`);

--
-- Indexes for table `teller`
--
ALTER TABLE `teller`
  ADD PRIMARY KEY (`tellerId`);

--
-- Indexes for table `transactiontbl`
--
ALTER TABLE `transactiontbl`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `typetbl`
--
ALTER TABLE `typetbl`
  ADD PRIMARY KEY (`typeid`);

--
-- Indexes for table `usertbl`
--
ALTER TABLE `usertbl`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bankaccountdetail`
--
ALTER TABLE `bankaccountdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `documentdetails`
--
ALTER TABLE `documentdetails`
  MODIFY `documentId` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `documentportpathtbl`
--
ALTER TABLE `documentportpathtbl`
  MODIFY `documentportpathid` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `familydetail`
--
ALTER TABLE `familydetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `familyrelationtbl`
--
ALTER TABLE `familyrelationtbl`
  MODIFY `relationId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `jobdetail`
--
ALTER TABLE `jobdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `memberdocuments`
--
ALTER TABLE `memberdocuments`
  MODIFY `documentid` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `multipletransactiontbl`
--
ALTER TABLE `multipletransactiontbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shareacledgertbl`
--
ALTER TABLE `shareacledgertbl`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sharecertificate`
--
ALTER TABLE `sharecertificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblagent`
--
ALTER TABLE `tblagent`
  MODIFY `agentid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usertbl`
--
ALTER TABLE `usertbl`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
