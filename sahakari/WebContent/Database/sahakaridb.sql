-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2017 at 04:08 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sahakaridb`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_table1`
--

CREATE TABLE IF NOT EXISTS `account_table1` (
  `aid` varchar(500) NOT NULL,
  `account_number` varchar(500) NOT NULL,
  `customer` varchar(500) NOT NULL,
  `category` varchar(500) NOT NULL,
  `account_title1` varchar(500) NOT NULL,
  `account_title2` varchar(500) NOT NULL,
  `short_title` varchar(500) NOT NULL,
  `mnemonic` varchar(500) NOT NULL,
  `position_type` varchar(500) NOT NULL,
  `currency` varchar(500) NOT NULL,
  `currency_market` varchar(500) NOT NULL,
  `limit_ref` varchar(500) NOT NULL,
  `relationship_officer` varchar(500) NOT NULL,
  `posting_restrict` varchar(500) NOT NULL,
  `reconcil_acct` varchar(500) NOT NULL,
  `interest_liqu_acct` varchar(500) NOT NULL,
  `interest_comp_acct` varchar(500) NOT NULL,
  `int_no_book` varchar(500) NOT NULL,
  `referal_code` varchar(500) NOT NULL,
  `waive_ledger_fee` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_table1`
--

INSERT INTO `account_table1` (`aid`, `account_number`, `customer`, `category`, `account_title1`, `account_title2`, `short_title`, `mnemonic`, `position_type`, `currency`, `currency_market`, `limit_ref`, `relationship_officer`, `posting_restrict`, `reconcil_acct`, `interest_liqu_acct`, `interest_comp_acct`, `int_no_book`, `referal_code`, `waive_ledger_fee`) VALUES
('2', 'adscasa', 'nischal', 'kek', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k'),
('909', '12', 'jg', 'j', 'g', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `account_table2`
--

CREATE TABLE IF NOT EXISTS `account_table2` (
  `condition_group` varchar(500) NOT NULL,
  `open_actual_balance` varchar(500) NOT NULL,
  `open_cleared_balance` varchar(500) NOT NULL,
  `online_actual_balance` varchar(500) NOT NULL,
  `online_cleared_balance` varchar(500) NOT NULL,
  `working_balance` varchar(500) NOT NULL,
  `date_last_cr_customer` varchar(500) NOT NULL,
  `amount_last_cr_customer` varchar(500) NOT NULL,
  `transaction_last_cr_customer` varchar(500) NOT NULL,
  `date_last_cr_auto` varchar(500) NOT NULL,
  `amount_last_cr_bank` varchar(500) NOT NULL,
  `transaction_last_cr_bank` varchar(500) NOT NULL,
  `date_last_dr_customer` varchar(500) NOT NULL,
  `amount_last_dr_customer` varchar(500) NOT NULL,
  `transaction_last_dr_customer` varchar(500) NOT NULL,
  `date_last_dr_auto` varchar(500) NOT NULL,
  `amount_last_dr_auto` varchar(500) NOT NULL,
  `transaction_last_dr_auto` varchar(500) NOT NULL,
  `date_last_dr_bank` varchar(500) NOT NULL,
  `amount_last_dr_bank` varchar(500) NOT NULL,
  `aid` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_table2`
--

INSERT INTO `account_table2` (`condition_group`, `open_actual_balance`, `open_cleared_balance`, `online_actual_balance`, `online_cleared_balance`, `working_balance`, `date_last_cr_customer`, `amount_last_cr_customer`, `transaction_last_cr_customer`, `date_last_cr_auto`, `amount_last_cr_bank`, `transaction_last_cr_bank`, `date_last_dr_customer`, `amount_last_dr_customer`, `transaction_last_dr_customer`, `date_last_dr_auto`, `amount_last_dr_auto`, `transaction_last_dr_auto`, `date_last_dr_bank`, `amount_last_dr_bank`, `aid`) VALUES
('g', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', '2'),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '909'),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `account_table3`
--

CREATE TABLE IF NOT EXISTS `account_table3` (
  `transaction_last_dr_bank` varchar(500) NOT NULL,
  `cap_date_charge` varchar(500) NOT NULL,
  `cap_date_cr_int` varchar(500) NOT NULL,
  `cap_date_c2_int` varchar(500) NOT NULL,
  `cap_date_dr_int` varchar(500) NOT NULL,
  `cap_date_d2_int` varchar(500) NOT NULL,
  `cap_back_value` varchar(500) NOT NULL,
  `accr_chg_categ` varchar(500) NOT NULL,
  `accr_chg_trans` varchar(500) NOT NULL,
  `accr_chg_amount` varchar(500) NOT NULL,
  `accr_chg_susp` varchar(500) NOT NULL,
  `accr_cr_categ` varchar(500) NOT NULL,
  `accr_cr_trans` varchar(500) NOT NULL,
  `accr_cr_amount` varchar(500) NOT NULL,
  `accr_cr_susp` varchar(500) NOT NULL,
  `accr_cr2_categ` varchar(500) NOT NULL,
  `accr_cr2_trans` varchar(500) NOT NULL,
  `accr_cr2_amount` varchar(500) NOT NULL,
  `accr_cr2_susp` varchar(500) NOT NULL,
  `accr_dr_categ` varchar(500) NOT NULL,
  `aid` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_table3`
--

INSERT INTO `account_table3` (`transaction_last_dr_bank`, `cap_date_charge`, `cap_date_cr_int`, `cap_date_c2_int`, `cap_date_dr_int`, `cap_date_d2_int`, `cap_back_value`, `accr_chg_categ`, `accr_chg_trans`, `accr_chg_amount`, `accr_chg_susp`, `accr_cr_categ`, `accr_cr_trans`, `accr_cr_amount`, `accr_cr_susp`, `accr_cr2_categ`, `accr_cr2_trans`, `accr_cr2_amount`, `accr_cr2_susp`, `accr_dr_categ`, `aid`) VALUES
('k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', '2'),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '909'),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `account_table4`
--

CREATE TABLE IF NOT EXISTS `account_table4` (
  `accr_dr_trans` varchar(500) NOT NULL,
  `accr_dr_amount` varchar(500) NOT NULL,
  `accr_dr_susp` varchar(500) NOT NULL,
  `accr_dr2_categ` varchar(500) NOT NULL,
  `accr_dr2_trans` varchar(500) NOT NULL,
  `accr_dr2_amount` varchar(500) NOT NULL,
  `accr_dr2_susp` varchar(500) NOT NULL,
  `console_key` varchar(500) NOT NULL,
  `start_year_balance` varchar(500) NOT NULL,
  `opening_date` varchar(500) NOT NULL,
  `override` varchar(500) NOT NULL,
  `record_status` varchar(500) NOT NULL,
  `cuur_no` varchar(500) NOT NULL,
  `inputter` varchar(500) NOT NULL,
  `date_time1` varchar(500) NOT NULL,
  `authoriser` varchar(500) NOT NULL,
  `date_time2` varchar(500) NOT NULL,
  `co_code` varchar(500) NOT NULL,
  `dept_code` varchar(500) NOT NULL,
  `auditor_code` varchar(500) NOT NULL,
  `aid` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_table4`
--

INSERT INTO `account_table4` (`accr_dr_trans`, `accr_dr_amount`, `accr_dr_susp`, `accr_dr2_categ`, `accr_dr2_trans`, `accr_dr2_amount`, `accr_dr2_susp`, `console_key`, `start_year_balance`, `opening_date`, `override`, `record_status`, `cuur_no`, `inputter`, `date_time1`, `authoriser`, `date_time2`, `co_code`, `dept_code`, `auditor_code`, `aid`) VALUES
('k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', '2'),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '909'),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `account_table5`
--

CREATE TABLE IF NOT EXISTS `account_table5` (
  `audit_date_time` varchar(500) NOT NULL,
  `value_date` varchar(500) NOT NULL,
  `credit_movement` varchar(500) NOT NULL,
  `debit_movement` varchar(500) NOT NULL,
  `value_dated_balance` varchar(500) NOT NULL,
  `contingent_balance_cr` varchar(500) NOT NULL,
  `contingent_balance_dr` varchar(500) NOT NULL,
  `open_category` varchar(500) NOT NULL,
  `open_value_dated_balance` varchar(500) NOT NULL,
  `link_to_limit` varchar(500) NOT NULL,
  `closure_date` varchar(500) NOT NULL,
  `charge_currency` varchar(500) NOT NULL,
  `charge_mkt` varchar(500) NOT NULL,
  `interest_currency` varchar(500) NOT NULL,
  `interest_mkt` varchar(500) NOT NULL,
  `con_charge_accr` varchar(500) NOT NULL,
  `con_interest_accr` varchar(500) NOT NULL,
  `alt_account_type` varchar(500) NOT NULL,
  `alt_account_id` varchar(500) NOT NULL,
  `joint_holder` varchar(500) NOT NULL,
  `aid` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_table5`
--

INSERT INTO `account_table5` (`audit_date_time`, `value_date`, `credit_movement`, `debit_movement`, `value_dated_balance`, `contingent_balance_cr`, `contingent_balance_dr`, `open_category`, `open_value_dated_balance`, `link_to_limit`, `closure_date`, `charge_currency`, `charge_mkt`, `interest_currency`, `interest_mkt`, `con_charge_accr`, `con_interest_accr`, `alt_account_type`, `alt_account_id`, `joint_holder`, `aid`) VALUES
('k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', '2'),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '909'),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `account_table6`
--

CREATE TABLE IF NOT EXISTS `account_table6` (
  `relation_code` varchar(500) NOT NULL,
  `joint_notes` varchar(500) NOT NULL,
  `ledg_reco_with` varchar(500) NOT NULL,
  `stmt_reco_with` varchar(500) NOT NULL,
  `signature_card` varchar(500) NOT NULL,
  `ref_number` varchar(500) NOT NULL,
  `card_type` varchar(500) NOT NULL,
  `card_attached_in` varchar(500) NOT NULL,
  `aid` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_table6`
--

INSERT INTO `account_table6` (`relation_code`, `joint_notes`, `ledg_reco_with`, `stmt_reco_with`, `signature_card`, `ref_number`, `card_type`, `card_attached_in`, `aid`) VALUES
('k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', '2'),
('', '', '', '', '', '', '', '', '909'),
('', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `collateral_right_table1`
--

CREATE TABLE IF NOT EXISTS `collateral_right_table1` (
  `crid` varchar(500) NOT NULL,
  `collateral_right` varchar(500) NOT NULL,
  `collateral_code` varchar(500) NOT NULL,
  `company` varchar(500) NOT NULL,
  `limit_reference` varchar(500) NOT NULL,
  `percentage_cover` varchar(500) NOT NULL,
  `validity_date` varchar(500) NOT NULL,
  `review_date_fqu` varchar(500) NOT NULL,
  `expiry_date` varchar(500) NOT NULL,
  `notes` varchar(500) NOT NULL,
  `customer` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collateral_right_table1`
--

INSERT INTO `collateral_right_table1` (`crid`, `collateral_right`, `collateral_code`, `company`, `limit_reference`, `percentage_cover`, `validity_date`, `review_date_fqu`, `expiry_date`, `notes`, `customer`, `status`) VALUES
('3', '3', '3', '3', '3', '3', '33', '3', '3', '3', '3', '3'),
('', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', ''),
('1', '8989', '100', '11', '1', '1', '1', '1   ', '11', '1', '1', '1'),
('9', '99', '9000', '9', '99', '9', '9', '99  ', '9', '9', '9', '9'),
('4', '44', '4', '4', '4', '4', '4', '4  ', '4', '4', '4', '4'),
('4', '44', '4', '4', '4', '4', '4', '4  ', '4', '4', '4', '4'),
('', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `collateral_right_table2`
--

CREATE TABLE IF NOT EXISTS `collateral_right_table2` (
  `crid` varchar(500) NOT NULL,
  `limit_reference_id` varchar(500) NOT NULL,
  `override` varchar(500) NOT NULL,
  `record_status` varchar(500) NOT NULL,
  `curr_no` varchar(500) NOT NULL,
  `inputter` varchar(500) NOT NULL,
  `date_time1` varchar(500) NOT NULL,
  `authoriser` varchar(500) NOT NULL,
  `date_time2` varchar(500) NOT NULL,
  `co_code` varchar(500) NOT NULL,
  `dept_code` varchar(500) NOT NULL,
  `auditor_code` varchar(500) NOT NULL,
  `audit_date_time` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collateral_right_table2`
--

INSERT INTO `collateral_right_table2` (`crid`, `limit_reference_id`, `override`, `record_status`, `curr_no`, `inputter`, `date_time1`, `authoriser`, `date_time2`, `co_code`, `dept_code`, `auditor_code`, `audit_date_time`) VALUES
('3', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', ''),
('1', '2', '2', '2', '2', '2', '2', '2', '2', '22', '2', '2', '2'),
('9', '8', '8', '800', '8', '88', '8', '8', '8', '88', '8', '8', '8'),
('4', '44', '44', '44', '44', '44', '44', '44', '44', '44', '44', '44', '44'),
('4', '44', '44', '44', '44', '44', '44', '44', '44', '44', '44', '44', '44'),
('', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `collateral_right_table3`
--

CREATE TABLE IF NOT EXISTS `collateral_right_table3` (
  `crid` varchar(500) NOT NULL,
  `limit_ref_customer` varchar(500) NOT NULL,
  `percent_alloc` varchar(500) NOT NULL,
  `reserved3` varchar(500) NOT NULL,
  `reserved2` varchar(500) NOT NULL,
  `reserved1` varchar(500) NOT NULL,
  `os_percent_cover` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collateral_right_table3`
--

INSERT INTO `collateral_right_table3` (`crid`, `limit_ref_customer`, `percent_alloc`, `reserved3`, `reserved2`, `reserved1`, `os_percent_cover`) VALUES
('3', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('1', '3', '3', '3', '3', '3', '3'),
('9', '7', '7', '7', '7', '77', '7'),
('4', '444', '444', '444', '444', '444', '444'),
('4', '444', '444', '444', '444', '444', '444'),
('', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `collateral_table1`
--

CREATE TABLE IF NOT EXISTS `collateral_table1` (
  `cid` varchar(500) NOT NULL,
  `collateral_id` varchar(500) NOT NULL,
  `collateral_type` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `company_book` varchar(500) NOT NULL,
  `application_id` varchar(500) NOT NULL,
  `currency` varchar(500) NOT NULL,
  `country` varchar(500) NOT NULL,
  `nominal_value` varchar(500) NOT NULL,
  `execution_value` varchar(500) NOT NULL,
  `third_party_value` varchar(500) NOT NULL,
  `maximum_value` varchar(500) NOT NULL,
  `value_date` varchar(500) NOT NULL,
  `review_date_fqu` varchar(500) NOT NULL,
  `expiry_date` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collateral_table1`
--

INSERT INTO `collateral_table1` (`cid`, `collateral_id`, `collateral_type`, `description`, `company_book`, `application_id`, `currency`, `country`, `nominal_value`, `execution_value`, `third_party_value`, `maximum_value`, `value_date`, `review_date_fqu`, `expiry_date`) VALUES
('hkhkh', 'koko', '', '', '', '', 'mba', '', '', '', '', '', '', '', ''),
('09', '099', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9');

-- --------------------------------------------------------

--
-- Table structure for table `collateral_table2`
--

CREATE TABLE IF NOT EXISTS `collateral_table2` (
  `cid` varchar(500) NOT NULL,
  `state` varchar(500) NOT NULL,
  `district` varchar(500) NOT NULL,
  `municipality_village` varchar(500) NOT NULL,
  `ward_no` varchar(500) NOT NULL,
  `plot_no` varchar(500) NOT NULL,
  `area_size` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collateral_table2`
--

INSERT INTO `collateral_table2` (`cid`, `state`, `district`, `municipality_village`, `ward_no`, `plot_no`, `area_size`) VALUES
('hkhkh', 'masd', '', '', '', '', ''),
('09', '9', '9', '9', '9', '9', '9');

-- --------------------------------------------------------

--
-- Table structure for table `collateral_table3`
--

CREATE TABLE IF NOT EXISTS `collateral_table3` (
  `cid` varchar(500) NOT NULL,
  `collateral_measurement_unit` varchar(500) NOT NULL,
  `govt_mortage_number` varchar(500) NOT NULL,
  `govt_mortage_amount` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL,
  `revalued_date` varchar(500) NOT NULL,
  `revalued_amount` varchar(500) NOT NULL,
  `override` varchar(500) NOT NULL,
  `record_status` varchar(500) NOT NULL,
  `curr_no` varchar(500) NOT NULL,
  `inputter` varchar(500) NOT NULL,
  `date_time1` varchar(500) NOT NULL,
  `authoriser` varchar(500) NOT NULL,
  `date_time2` varchar(500) NOT NULL,
  `company_code` varchar(500) NOT NULL,
  `dept_code` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collateral_table3`
--

INSERT INTO `collateral_table3` (`cid`, `collateral_measurement_unit`, `govt_mortage_number`, `govt_mortage_amount`, `status`, `revalued_date`, `revalued_amount`, `override`, `record_status`, `curr_no`, `inputter`, `date_time1`, `authoriser`, `date_time2`, `company_code`, `dept_code`) VALUES
('hkhkh', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('09', '9', '99', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9');

-- --------------------------------------------------------

--
-- Table structure for table `collateral_table4`
--

CREATE TABLE IF NOT EXISTS `collateral_table4` (
  `cid` varchar(500) NOT NULL,
  `auditor_code` varchar(500) NOT NULL,
  `auditor_date_time` varchar(500) NOT NULL,
  `reserved11` varchar(500) NOT NULL,
  `reserved10` varchar(500) NOT NULL,
  `reserved9` varchar(500) NOT NULL,
  `reserved8` varchar(500) NOT NULL,
  `reserved7` varchar(500) NOT NULL,
  `reserved6` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collateral_table4`
--

INSERT INTO `collateral_table4` (`cid`, `auditor_code`, `auditor_date_time`, `reserved11`, `reserved10`, `reserved9`, `reserved8`, `reserved7`, `reserved6`) VALUES
('hkhkh', '', '', '', '', '', '', '', ''),
('09', '9', '9', '9', '9', '9', '9', '9', '9');

-- --------------------------------------------------------

--
-- Table structure for table `custincdetail_table`
--

CREATE TABLE IF NOT EXISTS `custincdetail_table` (
  `office_name` varchar(500) NOT NULL,
  `staff_code` varchar(500) NOT NULL,
  `office_phnNum` varchar(500) NOT NULL,
  `office_faxNum` varchar(500) NOT NULL,
  `office_email` varchar(500) NOT NULL,
  `position` varchar(500) NOT NULL,
  `annual_salary` varchar(500) NOT NULL,
  `appointment_date` varchar(500) NOT NULL,
  `retirement_date` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custincdetail_table`
--

INSERT INTO `custincdetail_table` (`office_name`, `staff_code`, `office_phnNum`, `office_faxNum`, `office_email`, `position`, `annual_salary`, `appointment_date`, `retirement_date`) VALUES
('2', '8', '2', '2', '2', '2', '2', '0002-02-22', '0002-02-02'),
('l', 'l', 'l', 'l', 'l', 'l', 'l', '0001-01-01', '0001-11-01'),
('9', '9mb', '9', '9', '9', '9', '9', '0009-09-09', '0009-09-09'),
('10', '11', '1', '1', '1', '1', '1', '0001-01-01', '0001-01-01'),
('9', '9', '9', '9', '9', '9', '9', '0004-04-04', '0004-04-04'),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('nb', 'b', 'n', 'b', 'b', 'b', 'b', '', ''),
('', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `customertable1`
--

CREATE TABLE IF NOT EXISTS `customertable1` (
  `@id1` varchar(500) NOT NULL,
  `@id2` varchar(500) NOT NULL,
  `customerCode` varchar(500) NOT NULL,
  `mnemonic` varchar(500) NOT NULL,
  `shortName` varchar(500) NOT NULL,
  `name1` varchar(500) NOT NULL,
  `name2` varchar(500) NOT NULL,
  `houseOwnerName` varchar(500) NOT NULL,
  `nearByRenownedLocation` varchar(500) NOT NULL,
  `houseOwnerMobileNumber` varchar(500) NOT NULL,
  `houseOwnerEmail` varchar(500) NOT NULL,
  `relationCode` varchar(500) NOT NULL,
  `relationalCustomer` varchar(500) NOT NULL,
  `reverseRelationCode` varchar(500) NOT NULL,
  `relationshipOfficer` varchar(500) NOT NULL,
  `otherOfficer` varchar(500) NOT NULL,
  `sector` varchar(500) NOT NULL,
  `industry` varchar(500) NOT NULL,
  `country` varchar(500) NOT NULL,
  `customerStatus` varchar(500) NOT NULL,
  `residence` varchar(500) NOT NULL,
  `contactDate` varchar(500) NOT NULL,
  `introducer` varchar(500) NOT NULL,
  `reviewFrequency` varchar(500) NOT NULL,
  `customerLiability` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customertable1`
--

INSERT INTO `customertable1` (`@id1`, `@id2`, `customerCode`, `mnemonic`, `shortName`, `name1`, `name2`, `houseOwnerName`, `nearByRenownedLocation`, `houseOwnerMobileNumber`, `houseOwnerEmail`, `relationCode`, `relationalCustomer`, `reverseRelationCode`, `relationshipOfficer`, `otherOfficer`, `sector`, `industry`, `country`, `customerStatus`, `residence`, `contactDate`, `introducer`, `reviewFrequency`, `customerLiability`) VALUES
('', '', '', '', 'klkkjlk', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0001-01-01', '1', '1', '1'),
('123', '123', '123', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('1321', '123132', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `customertable2`
--

CREATE TABLE IF NOT EXISTS `customertable2` (
  `@id1` varchar(500) NOT NULL,
  `language` varchar(500) NOT NULL,
  `givenDocumentType` varchar(500) NOT NULL,
  `dateOfBirth` varchar(500) NOT NULL,
  `maritalStatus` varchar(500) NOT NULL,
  `numberOfDependents` varchar(500) NOT NULL,
  `phone1` varchar(500) NOT NULL,
  `sms` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `employmentStatus` varchar(500) NOT NULL,
  `occupation` varchar(500) NOT NULL,
  `employersName` varchar(500) NOT NULL,
  `employersAddress` varchar(500) NOT NULL,
  `employersBuss` varchar(500) NOT NULL,
  `employmentStart` varchar(500) NOT NULL,
  `customerCurrency` varchar(500) NOT NULL,
  `salary` varchar(500) NOT NULL,
  `annualBonus` varchar(500) NOT NULL,
  `salaryDateFrequency` varchar(500) NOT NULL,
  `netMonthlyIn` varchar(500) NOT NULL,
  `netMonthlyout` varchar(500) NOT NULL,
  `residenceStatus` varchar(500) NOT NULL,
  `residenceSince` varchar(500) NOT NULL,
  `spokenLanguage` varchar(500) NOT NULL,
  `recordStatus` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customertable2`
--

INSERT INTO `customertable2` (`@id1`, `language`, `givenDocumentType`, `dateOfBirth`, `maritalStatus`, `numberOfDependents`, `phone1`, `sms`, `email`, `employmentStatus`, `occupation`, `employersName`, `employersAddress`, `employersBuss`, `employmentStart`, `customerCurrency`, `salary`, `annualBonus`, `salaryDateFrequency`, `netMonthlyIn`, `netMonthlyout`, `residenceStatus`, `residenceSince`, `spokenLanguage`, `recordStatus`) VALUES
('1', '1', 'citizenship', '0001-01-01', 'married', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'permanent', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `customertable3`
--

CREATE TABLE IF NOT EXISTS `customertable3` (
  `@id1` varchar(500) NOT NULL,
  `currencyNumber` varchar(500) NOT NULL,
  `inputer` varchar(500) NOT NULL,
  `dateTime` varchar(500) NOT NULL,
  `authoriser` varchar(500) NOT NULL,
  `coCode` varchar(500) NOT NULL,
  `departmentCode` varchar(500) NOT NULL,
  `auditorCode` varchar(500) NOT NULL,
  `auditDateTime` varchar(500) NOT NULL,
  `postingRestrict` varchar(500) NOT NULL,
  `dispoOfficer` varchar(500) NOT NULL,
  `postCode` varchar(500) NOT NULL,
  `issuesCheques` varchar(500) NOT NULL,
  `residenceRegion` varchar(500) NOT NULL,
  `companyBook` varchar(500) NOT NULL,
  `assetClass` varchar(500) NOT NULL,
  `customerRating` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL,
  `givenName` varchar(500) NOT NULL,
  `familyName` varchar(500) NOT NULL,
  `gender` varchar(500) NOT NULL,
  `commType` varchar(500) NOT NULL,
  `prefChannel` varchar(500) NOT NULL,
  `interests` varchar(500) NOT NULL,
  `fax1` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customertable3`
--

INSERT INTO `customertable3` (`@id1`, `currencyNumber`, `inputer`, `dateTime`, `authoriser`, `coCode`, `departmentCode`, `auditorCode`, `auditDateTime`, `postingRestrict`, `dispoOfficer`, `postCode`, `issuesCheques`, `residenceRegion`, `companyBook`, `assetClass`, `customerRating`, `title`, `givenName`, `familyName`, `gender`, `commType`, `prefChannel`, `interests`, `fax1`) VALUES
('1', '1', '1', '0001-01-01T01:01', '1', '1', '1', '1', '0001-11-01T01:01', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'male', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `customertable4`
--

CREATE TABLE IF NOT EXISTS `customertable4` (
  `@id1` varchar(500) NOT NULL,
  `reserved1` varchar(500) NOT NULL,
  `reserved2` varchar(500) NOT NULL,
  `reserved3` varchar(500) NOT NULL,
  `reserved4` varchar(500) NOT NULL,
  `reserved5` varchar(500) NOT NULL,
  `reserved6` varchar(500) NOT NULL,
  `reserved7` varchar(500) NOT NULL,
  `reserved8` varchar(500) NOT NULL,
  `reserved9` varchar(500) NOT NULL,
  `reserved10` varchar(500) NOT NULL,
  `reserved11` varchar(500) NOT NULL,
  `reserved12` varchar(500) NOT NULL,
  `reserved13` varchar(500) NOT NULL,
  `reserved14` varchar(500) NOT NULL,
  `reserved15` varchar(500) NOT NULL,
  `reserved16` varchar(500) NOT NULL,
  `reserved17` varchar(500) NOT NULL,
  `reserved18` varchar(500) NOT NULL,
  `reserved19` varchar(500) NOT NULL,
  `reserved20` varchar(500) NOT NULL,
  `reserved21` varchar(500) NOT NULL,
  `reserved22` varchar(500) NOT NULL,
  `reserved23` varchar(500) NOT NULL,
  `reserved24` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customertable4`
--

INSERT INTO `customertable4` (`@id1`, `reserved1`, `reserved2`, `reserved3`, `reserved4`, `reserved5`, `reserved6`, `reserved7`, `reserved8`, `reserved9`, `reserved10`, `reserved11`, `reserved12`, `reserved13`, `reserved14`, `reserved15`, `reserved16`, `reserved17`, `reserved18`, `reserved19`, `reserved20`, `reserved21`, `reserved22`, `reserved23`, `reserved24`) VALUES
('1', '1', '1', '11', '1', '1', '1', '11', '1', '1', '1', '11', '1', '1', '1', '11', '1', '1', '11', '1', '1', '1', '11', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `customertable5`
--

CREATE TABLE IF NOT EXISTS `customertable5` (
  `@id1` varchar(500) NOT NULL,
  `dateLastVerified` varchar(500) NOT NULL,
  `calcRiskClass` varchar(500) NOT NULL,
  `manualRiskClass` varchar(500) NOT NULL,
  `overrideReason` varchar(500) NOT NULL,
  `taxId` varchar(500) NOT NULL,
  `riskLevel` varchar(500) NOT NULL,
  `riskTolerance` varchar(500) NOT NULL,
  `riskFromDate` varchar(500) NOT NULL,
  `lastKycReviewDate` varchar(500) NOT NULL,
  `manualNextKycReviewDate` varchar(500) NOT NULL,
  `autoNextSuitReviewDate` varchar(500) NOT NULL,
  `kycRelationship` varchar(500) NOT NULL,
  `secureMessage` varchar(500) NOT NULL,
  `almCheck` varchar(500) NOT NULL,
  `almResult` varchar(500) NOT NULL,
  `lastAlmResultDate` varchar(500) NOT NULL,
  `kycComplete` varchar(500) NOT NULL,
  `interestBankingService` varchar(500) NOT NULL,
  `mobileBankingService` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customertable5`
--

INSERT INTO `customertable5` (`@id1`, `dateLastVerified`, `calcRiskClass`, `manualRiskClass`, `overrideReason`, `taxId`, `riskLevel`, `riskTolerance`, `riskFromDate`, `lastKycReviewDate`, `manualNextKycReviewDate`, `autoNextSuitReviewDate`, `kycRelationship`, `secureMessage`, `almCheck`, `almResult`, `lastAlmResultDate`, `kycComplete`, `interestBankingService`, `mobileBankingService`) VALUES
('1', '0001-01-01', '1', '1', '1', '1', '1', '1', '0001-01-01', '0001-01-01', '0001-01-01', '0001-01-01', '1', '1', '1', '1', '0001-01-01', '1', 'yes', 'yesm');

-- --------------------------------------------------------

--
-- Table structure for table `customertable6`
--

CREATE TABLE IF NOT EXISTS `customertable6` (
  `@id1` varchar(500) NOT NULL,
  `tstate` varchar(500) NOT NULL,
  `tdistrict` varchar(500) NOT NULL,
  `tmunicipalityVillage` varchar(500) NOT NULL,
  `twardNo` varchar(500) NOT NULL,
  `ttole` varchar(500) NOT NULL,
  `tstreetAddress` varchar(500) NOT NULL,
  `pstate` varchar(500) NOT NULL,
  `pdistirct` varchar(500) NOT NULL,
  `pmunicipalityVillage` varchar(500) NOT NULL,
  `pwardNo` varchar(500) NOT NULL,
  `ptole` varchar(500) NOT NULL,
  `pstreetAddress` varchar(500) NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customertable6`
--

INSERT INTO `customertable6` (`@id1`, `tstate`, `tdistrict`, `tmunicipalityVillage`, `twardNo`, `ttole`, `tstreetAddress`, `pstate`, `pdistirct`, `pmunicipalityVillage`, `pwardNo`, `ptole`, `pstreetAddress`, `image`) VALUES
('1', 'state1', '1', '1', '1', '1', '1', 'state1', '2', '2', '2', '2', '2', 'Screenshot (13).png');

-- --------------------------------------------------------

--
-- Table structure for table `custreloffdetail_table`
--

CREATE TABLE IF NOT EXISTS `custreloffdetail_table` (
  `relationOfficer_name` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `mobile_num` varchar(500) NOT NULL,
  `position` varchar(500) NOT NULL,
  `office` varchar(500) NOT NULL,
  `office_phoneNum` varchar(500) NOT NULL,
  `office_faxNum` varchar(500) NOT NULL,
  `office_email` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custreloffdetail_table`
--

INSERT INTO `custreloffdetail_table` (`relationOfficer_name`, `address`, `mobile_num`, `position`, `office`, `office_phoneNum`, `office_faxNum`, `office_email`) VALUES
('5', '5l', '5', '5n', '5', '5', '5', '5'),
('9', '9', '9', '9', '9', '9', '9', '9'),
('5', '5l', '5', '5n', '5', '5', '5', '5'),
('4', '4', '4', '4', '4', '4', '4', '4'),
('4', '4', '4', '4', '4', '4', '4', '4'),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('9', '9', '9', '9', '9', '9', '9', '9');

-- --------------------------------------------------------

--
-- Table structure for table `fundtransfer_table`
--

CREATE TABLE IF NOT EXISTS `fundtransfer_table` (
  `fundTransfer_id` varchar(500) NOT NULL,
  `ref_num` varchar(500) NOT NULL,
  `tranc_type` varchar(500) NOT NULL,
  `debit_accNum` varchar(500) NOT NULL,
  `debit_curr` varchar(500) NOT NULL,
  `debit_amt` varchar(500) NOT NULL,
  `debit_valueDate` varchar(500) NOT NULL,
  `debit_theirRef` varchar(500) NOT NULL,
  `credit_theirRef` varchar(500) NOT NULL,
  `credit_accNum` varchar(500) NOT NULL,
  `credit_curr` varchar(500) NOT NULL,
  `credit_amt` varchar(500) NOT NULL,
  `credit_valueDate` varchar(500) NOT NULL,
  `processing_date` varchar(500) NOT NULL,
  `ordering_cust` varchar(500) NOT NULL,
  `ordering_bank` varchar(500) NOT NULL,
  `acc_withBank` varchar(500) NOT NULL,
  `acc_withBook` varchar(500) NOT NULL,
  `ben_accNum` varchar(500) NOT NULL,
  `inBen_accNum` varchar(500) NOT NULL,
  `ben_customer` varchar(500) NOT NULL,
  `inBen_customer` varchar(500) NOT NULL,
  `cheque_num` varchar(500) NOT NULL,
  `payment_detail` varchar(500) NOT NULL,
  `bcBank_sortCode` varchar(500) NOT NULL,
  `reciever_bank` varchar(500) NOT NULL,
  `recCorrr_bank` varchar(500) NOT NULL,
  `intermed_bank` varchar(500) NOT NULL,
  `mailing` varchar(500) NOT NULL,
  `pay_method` varchar(500) NOT NULL,
  `ben_charge` varchar(500) NOT NULL,
  `charge_acctNum` varchar(500) NOT NULL,
  `charge_display` varchar(500) NOT NULL,
  `commission_code` varchar(500) NOT NULL,
  `commission_amt` varchar(500) NOT NULL,
  `charge_code` varchar(500) NOT NULL,
  `charge_type` varchar(500) NOT NULL,
  `charge_amt` varchar(500) NOT NULL,
  `customer_spread` varchar(500) NOT NULL,
  `base_Currency` varchar(500) NOT NULL,
  `profit_centCust` varchar(500) NOT NULL,
  `profit_cenDep` varchar(500) NOT NULL,
  `return_dep` varchar(500) NOT NULL,
  `priority_txn` varchar(500) NOT NULL,
  `btb_info` varchar(500) NOT NULL,
  `expo_date` varchar(500) NOT NULL,
  `batch_itemNum` varchar(500) NOT NULL,
  `free_text` varchar(500) NOT NULL,
  `message` varchar(500) NOT NULL,
  `tax_type` varchar(500) NOT NULL,
  `tax_amt` varchar(500) NOT NULL,
  `amt_debit` varchar(500) NOT NULL,
  `amt_credit` varchar(500) NOT NULL,
  `tot_chargeAmt` varchar(500) NOT NULL,
  `tot_taxAmt` varchar(500) NOT NULL,
  `cust_rate` varchar(500) NOT NULL,
  `credit_comCode` varchar(500) NOT NULL,
  `debit_comCode` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL,
  `delivery_mkr` varchar(500) NOT NULL,
  `stmt_num` varchar(500) NOT NULL,
  `override` varchar(500) NOT NULL,
  `record_status` varchar(500) NOT NULL,
  `curr_num` varchar(500) NOT NULL,
  `inputter` varchar(500) NOT NULL,
  `date_time` varchar(500) NOT NULL,
  `authoriser` varchar(500) NOT NULL,
  `date_time2` varchar(500) NOT NULL,
  `com_code` varchar(500) NOT NULL,
  `dept_code` varchar(500) NOT NULL,
  `auditor_code` varchar(500) NOT NULL,
  `audit_date` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fundtransfer_table`
--

INSERT INTO `fundtransfer_table` (`fundTransfer_id`, `ref_num`, `tranc_type`, `debit_accNum`, `debit_curr`, `debit_amt`, `debit_valueDate`, `debit_theirRef`, `credit_theirRef`, `credit_accNum`, `credit_curr`, `credit_amt`, `credit_valueDate`, `processing_date`, `ordering_cust`, `ordering_bank`, `acc_withBank`, `acc_withBook`, `ben_accNum`, `inBen_accNum`, `ben_customer`, `inBen_customer`, `cheque_num`, `payment_detail`, `bcBank_sortCode`, `reciever_bank`, `recCorrr_bank`, `intermed_bank`, `mailing`, `pay_method`, `ben_charge`, `charge_acctNum`, `charge_display`, `commission_code`, `commission_amt`, `charge_code`, `charge_type`, `charge_amt`, `customer_spread`, `base_Currency`, `profit_centCust`, `profit_cenDep`, `return_dep`, `priority_txn`, `btb_info`, `expo_date`, `batch_itemNum`, `free_text`, `message`, `tax_type`, `tax_amt`, `amt_debit`, `amt_credit`, `tot_chargeAmt`, `tot_taxAmt`, `cust_rate`, `credit_comCode`, `debit_comCode`, `status`, `delivery_mkr`, `stmt_num`, `override`, `record_status`, `curr_num`, `inputter`, `date_time`, `authoriser`, `date_time2`, `com_code`, `dept_code`, `auditor_code`, `audit_date`) VALUES
('1', '161', '1', '1', '1', '1', '0001-01-01', '11', '11', '1', '1', '1', '0001-01-01T01:01', '0001-01-01T01:01', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '11', '1', '1  ', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0001-01-01T01:01', '1', '', '1', '1', '1', '0001-01-01T01:01'),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `guarantor_table`
--

CREATE TABLE IF NOT EXISTS `guarantor_table` (
  `guarantor_name` varchar(500) NOT NULL,
  `position` varchar(500) NOT NULL,
  `office` varchar(500) NOT NULL,
  `guarantee_date` varchar(500) NOT NULL,
  `office_phoneNum` varchar(500) NOT NULL,
  `office_faxNum` varchar(500) NOT NULL,
  `office_email` varchar(500) NOT NULL,
  `guarantee_amount` varchar(500) NOT NULL,
  `guarantee_valueRatio` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guarantor_table`
--

INSERT INTO `guarantor_table` (`guarantor_name`, `position`, `office`, `guarantee_date`, `office_phoneNum`, `office_faxNum`, `office_email`, `guarantee_amount`, `guarantee_valueRatio`) VALUES
('1', '11', '1', '0001-01-01', '1', '1', '1', '1', '1'),
('2', 'nis1', '2', '0002-02-02', '2', '2', '2', '2', '2'),
('k', 'kmb', 'k', '0002-02-02', 'k', 'k', 'k', 'k', 'k'),
('', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kyc_table`
--

CREATE TABLE IF NOT EXISTS `kyc_table` (
  `customer_id` varchar(500) NOT NULL,
  `family_relationship` varchar(500) NOT NULL,
  `kyc_category` varchar(500) NOT NULL,
  `kyc_id` varchar(500) NOT NULL,
  `citizenship_num` varchar(500) DEFAULT NULL,
  `citizenship_issueDate` varchar(500) DEFAULT NULL,
  `citizenship_maturityDate` varchar(500) DEFAULT NULL,
  `citizenship_issuedBy` varchar(500) DEFAULT NULL,
  `citizenship_doc` varchar(500) DEFAULT NULL,
  `passport_num` varchar(500) DEFAULT NULL,
  `passport_issueDate` varchar(500) DEFAULT NULL,
  `passport_maturityDate` varchar(500) DEFAULT NULL,
  `passport_issuedBy` varchar(500) DEFAULT NULL,
  `passport_doc` varchar(500) DEFAULT NULL,
  `birthCer_num` varchar(500) DEFAULT NULL,
  `birthCer_issueDate` varchar(500) DEFAULT NULL,
  `birthCer_maturityDate` varchar(500) DEFAULT NULL,
  `birthCer_issuedBy` varchar(500) DEFAULT NULL,
  `birthCer_doc` varchar(500) DEFAULT NULL,
  `elecCard_number` varchar(500) DEFAULT NULL,
  `elecCard_issueDate` varchar(500) DEFAULT NULL,
  `elecCard_maturityDate` varchar(500) DEFAULT NULL,
  `elecCard_issuedBy` varchar(500) DEFAULT NULL,
  `elecCard_doc` varchar(500) DEFAULT NULL,
  `landOwnCert_num` varchar(500) DEFAULT NULL,
  `landOwnCert_issueDate` varchar(500) DEFAULT NULL,
  `landOwnCert_maturityDate` varchar(500) DEFAULT NULL,
  `landOwnCert_issuedBy` varchar(500) DEFAULT NULL,
  `landOwnCert_doc` varchar(500) DEFAULT NULL,
  `license_num` varchar(500) DEFAULT NULL,
  `license_issueDate` varchar(500) DEFAULT NULL,
  `license_maturityDate` varchar(500) DEFAULT NULL,
  `license_issuedBy` varchar(500) DEFAULT NULL,
  `license_doc` varchar(500) DEFAULT NULL,
  `govOfficeIden_num` varchar(500) DEFAULT NULL,
  `govOfficeIden_issueDate` varchar(500) DEFAULT NULL,
  `govOfficeIden_maturityDate` varchar(500) DEFAULT NULL,
  `govOfficeIden_issuedBy` varchar(500) DEFAULT NULL,
  `govOfficeIden_doc` varchar(500) DEFAULT NULL,
  `other_specify` varchar(500) DEFAULT NULL,
  `other_num` varchar(500) DEFAULT NULL,
  `other_issueDate` varchar(500) DEFAULT NULL,
  `other_maturityDate` varchar(500) DEFAULT NULL,
  `other_issuedBy` varchar(500) DEFAULT NULL,
  `other_doc` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kyc_table`
--

INSERT INTO `kyc_table` (`customer_id`, `family_relationship`, `kyc_category`, `kyc_id`, `citizenship_num`, `citizenship_issueDate`, `citizenship_maturityDate`, `citizenship_issuedBy`, `citizenship_doc`, `passport_num`, `passport_issueDate`, `passport_maturityDate`, `passport_issuedBy`, `passport_doc`, `birthCer_num`, `birthCer_issueDate`, `birthCer_maturityDate`, `birthCer_issuedBy`, `birthCer_doc`, `elecCard_number`, `elecCard_issueDate`, `elecCard_maturityDate`, `elecCard_issuedBy`, `elecCard_doc`, `landOwnCert_num`, `landOwnCert_issueDate`, `landOwnCert_maturityDate`, `landOwnCert_issuedBy`, `landOwnCert_doc`, `license_num`, `license_issueDate`, `license_maturityDate`, `license_issuedBy`, `license_doc`, `govOfficeIden_num`, `govOfficeIden_issueDate`, `govOfficeIden_maturityDate`, `govOfficeIden_issuedBy`, `govOfficeIden_doc`, `other_specify`, `other_num`, `other_issueDate`, `other_maturityDate`, `other_issuedBy`, `other_doc`) VALUES
('101', 'nephew', 'plCompany', '67ni', '12', '12', '12', '12', 'Screenshot (6).png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `limit_table`
--

CREATE TABLE IF NOT EXISTS `limit_table` (
  `id` varchar(100) NOT NULL,
  `credit_lineNum` varchar(500) NOT NULL,
  `limit_currency` varchar(500) NOT NULL,
  `proposal_date` varchar(500) NOT NULL,
  `approval_date` varchar(500) NOT NULL,
  `offered_until` varchar(500) NOT NULL,
  `review_frequency` varchar(500) NOT NULL,
  `expiry_date` varchar(500) NOT NULL,
  `adm_extensionDate` varchar(500) NOT NULL,
  `online_limitDate` varchar(500) NOT NULL,
  `product_allowed` varchar(500) NOT NULL,
  `limit_grade` varchar(500) NOT NULL,
  `grade_percent` varchar(500) NOT NULL,
  `notes` varchar(800) NOT NULL,
  `limit_amount` varchar(500) NOT NULL,
  `advised_amount` varchar(500) NOT NULL,
  `fixed_variable` varchar(500) NOT NULL,
  `collateral_code` varchar(500) NOT NULL,
  `collateral_requiredAmt` varchar(500) NOT NULL,
  `collateral_requiredPercent` varchar(500) NOT NULL,
  `max_secured` varchar(500) NOT NULL,
  `max_unsecured` varchar(500) NOT NULL,
  `max_total` varchar(500) NOT NULL,
  `collateral_right` varchar(500) NOT NULL,
  `secured_amt` varchar(500) NOT NULL,
  `online_limit` varchar(500) NOT NULL,
  `subAlloc_taken` varchar(500) NOT NULL,
  `subAlloc_given` varchar(500) NOT NULL,
  `commtAmt_available` varchar(500) NOT NULL,
  `total_os` varchar(500) NOT NULL,
  `available_amt` varchar(500) NOT NULL,
  `commitm_amt` varchar(500) NOT NULL,
  `excess_date` varchar(500) NOT NULL,
  `amt_lastExcess` varchar(500) NOT NULL,
  `date_lastMoved` varchar(500) NOT NULL,
  `amt_lastMoved` varchar(500) NOT NULL,
  `date_lastRevel` varchar(500) NOT NULL,
  `original_limit` varchar(500) NOT NULL,
  `available_maker` varchar(500) NOT NULL,
  `restricted_customer` varchar(500) NOT NULL,
  `allowed_amt` varchar(500) NOT NULL,
  `commodity` varchar(500) NOT NULL,
  `commodity_percent` varchar(100) NOT NULL,
  `collateral_customer` varchar(500) NOT NULL,
  `collateral_CCY` varchar(500) NOT NULL,
  `collateral_amount` varchar(500) NOT NULL,
  `collateral_percent` varchar(500) NOT NULL,
  `collateral_location` varchar(500) NOT NULL,
  `collateral_grade` varchar(500) NOT NULL,
  `collateral_notes` varchar(500) NOT NULL,
  `reducing_schedule` varchar(500) NOT NULL,
  `repay_frequency` varchar(500) NOT NULL,
  `repay_number` varchar(500) NOT NULL,
  `repay_CCY` varchar(500) NOT NULL,
  `repay_amt` varchar(500) NOT NULL,
  `repay_endDate` varchar(500) NOT NULL,
  `repay_notes` varchar(500) NOT NULL,
  `acc_company` varchar(500) NOT NULL,
  `account` varchar(500) NOT NULL,
  `reducing_limit` varchar(500) NOT NULL,
  `inputter` varchar(500) NOT NULL,
  `date_time` varchar(500) NOT NULL,
  `authoriser` varchar(500) NOT NULL,
  `date_time2` varchar(500) NOT NULL,
  `company_code` varchar(500) NOT NULL,
  `department_code` varchar(500) NOT NULL,
  `auditor_code` varchar(500) NOT NULL,
  `audit_date` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `limit_table`
--

INSERT INTO `limit_table` (`id`, `credit_lineNum`, `limit_currency`, `proposal_date`, `approval_date`, `offered_until`, `review_frequency`, `expiry_date`, `adm_extensionDate`, `online_limitDate`, `product_allowed`, `limit_grade`, `grade_percent`, `notes`, `limit_amount`, `advised_amount`, `fixed_variable`, `collateral_code`, `collateral_requiredAmt`, `collateral_requiredPercent`, `max_secured`, `max_unsecured`, `max_total`, `collateral_right`, `secured_amt`, `online_limit`, `subAlloc_taken`, `subAlloc_given`, `commtAmt_available`, `total_os`, `available_amt`, `commitm_amt`, `excess_date`, `amt_lastExcess`, `date_lastMoved`, `amt_lastMoved`, `date_lastRevel`, `original_limit`, `available_maker`, `restricted_customer`, `allowed_amt`, `commodity`, `commodity_percent`, `collateral_customer`, `collateral_CCY`, `collateral_amount`, `collateral_percent`, `collateral_location`, `collateral_grade`, `collateral_notes`, `reducing_schedule`, `repay_frequency`, `repay_number`, `repay_CCY`, `repay_amt`, `repay_endDate`, `repay_notes`, `acc_company`, `account`, `reducing_limit`, `inputter`, `date_time`, `authoriser`, `date_time2`, `company_code`, `department_code`, `auditor_code`, `audit_date`) VALUES
('1', 'iuiu', '11', '0001-01-01', '0001-01-01', '0001-01-01', '0001-01-01', '0001-01-01', '0001-01-01', '0001-01-01', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0001-01-01', '1', '0001-01-01', '1', '0001-01-01', '1', 'yes', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '0002-02-02', '2', '2', '2', 'yes', '2', '0002-02-02T14:02', '1', '0001-01-01T01:01', '1', '1', '1', '0001-01-01T13:01'),
('5', '512', '5', '5555-05-05', '5555-05-05', '0005-05-05', '0005-05-05', '0005-05-05', '0005-05-05', '0005-05-05', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5555-05-05', '5', '0005-05-05', '5', '0005-05-05', '5', 'yes', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '0005-05-05', '55', '5', '5', 'yes', '5', '55555-05-05T05:55', '5', '55555-05-05T17:55', '555', '5', '5', '0055-05-05T05:07'),
('6', '6', '6', '0006-06-06', '0006-06-06', '0006-06-06', '0006-06-06', '0006-06-06', '0006-06-06', '0006-06-06', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '0006-06-06', '6', '0006-06-06', '6', '0006-06-06', '6', 'yes', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '0066-06-06', '66', '6', '6', 'yes', '6', '0066-06-06T06:06', '6', '0006-06-06T03:03', '6', '6', '6', '0066-06-06T06:06'),
('7', '7', '7', '0007-07-07', '0007-07-07', '0007-07-07', '0007-07-07', '0007-07-07', '0007-07-07', '0007-07-07', '77', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '0007-07-07', '7', '0007-07-07', '7', '0007-07-07', '7', 'yes', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '0007-07-07', '7', '7', '7', 'no', '7', '0007-07-07T11:11', '8', '0008-08-08T01:01', 'j', 'j', 'j', '0001-01-01T01:01'),
('090', '1', '1', '0001-01-01', '0001-11-01', '0001-01-01', '0001-01-01', '0001-01-01', '0001-01-01', '0001-01-01', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0001-01-01', '1', '0001-01-01', '1', '0001-01-01', '1', 'yes', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0001-01-01', '1', '1', '1', 'yes', '1', '0001-01-01T01:01', '1', '0001-01-01T01:01', '1', '1', '1', '0001-01-01T01:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customertable1`
--
ALTER TABLE `customertable1`
  ADD PRIMARY KEY (`@id1`);

--
-- Indexes for table `customertable2`
--
ALTER TABLE `customertable2`
  ADD PRIMARY KEY (`@id1`);

--
-- Indexes for table `kyc_table`
--
ALTER TABLE `kyc_table`
  ADD PRIMARY KEY (`customer_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
