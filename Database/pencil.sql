-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2018 at 05:21 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pencil`
--

-- --------------------------------------------------------

--
-- Table structure for table `mp_banks`
--

CREATE TABLE `mp_banks` (
  `id` int(11) NOT NULL,
  `bankname` varchar(255) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `branchcode` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `accountno` varchar(100) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_bank_opening`
--

CREATE TABLE `mp_bank_opening` (
  `id` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `bank_id` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_bank_transaction`
--

CREATE TABLE `mp_bank_transaction` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `payee_id` int(11) NOT NULL,
  `method` varchar(50) NOT NULL,
  `cheque_amount` decimal(11,2) NOT NULL,
  `ref_no` varchar(100) NOT NULL,
  `transaction_status` int(1) NOT NULL,
  `transaction_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_barcode`
--

CREATE TABLE `mp_barcode` (
  `id` int(11) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `random_no` varchar(255) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_brand`
--

CREATE TABLE `mp_brand` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_brand_sector`
--

CREATE TABLE `mp_brand_sector` (
  `id` int(11) NOT NULL,
  `sector` varchar(255) NOT NULL,
  `created` date NOT NULL,
  `updated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_category`
--

CREATE TABLE `mp_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `register_date` date NOT NULL,
  `status` int(1) NOT NULL,
  `added_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_contactabout`
--

CREATE TABLE `mp_contactabout` (
  `id` int(11) NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_description` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `linked` varchar(255) NOT NULL,
  `googleplus` varchar(255) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_quotation` varchar(255) NOT NULL,
  `about_name` varchar(255) NOT NULL,
  `about_title2` varchar(255) NOT NULL,
  `about_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mp_contactabout`
--

INSERT INTO `mp_contactabout` (`id`, `contact_title`, `contact_description`, `phone_number`, `address`, `email`, `facebook`, `twitter`, `linked`, `googleplus`, `about_title`, `about_quotation`, `about_name`, `about_title2`, `about_description`) VALUES
(1, 'Contact Us', 'Lorum Ipsum dolar sit ami ', '+1 800 123 1234', '21th Street North way Commerical Market Mohenjo Daro', 'info@gbdevelopers.net', 'http://www.facebook.com/ali.i.roshan', 'ali.i.roshan', 'ali.i.roshan', 'ali.i.roshan', '« Lorem Ipsum is simply dummy text of the printing  »', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.p;#039;s standard dummy text ever since the 1500s, when an unknown printer took a ga', '— Medix Pharmacy', 'About Us', 'Praesent convallis tortor et enim laoreet, vel consectetur purus latoque penatibus et dis parturient.');

-- --------------------------------------------------------

--
-- Table structure for table `mp_customer_payments`
--

CREATE TABLE `mp_customer_payments` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `method` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `agentname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_drivers`
--

CREATE TABLE `mp_drivers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `lisence` varchar(255) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `cus_picture` varchar(255) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_expense`
--

CREATE TABLE `mp_expense` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `head_id` int(11) NOT NULL,
  `total_bill` decimal(11,2) NOT NULL,
  `total_paid` decimal(11,2) NOT NULL,
  `date` date NOT NULL,
  `user` varchar(255) NOT NULL,
  `method` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `payee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_generalentry`
--

CREATE TABLE `mp_generalentry` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `naration` varchar(255) NOT NULL,
  `generated_source` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_head`
--

CREATE TABLE `mp_head` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nature` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `relation_id` int(11) NOT NULL,
  `expense_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mp_head`
--

INSERT INTO `mp_head` (`id`, `name`, `nature`, `type`, `relation_id`, `expense_type`) VALUES
(1, 'Salary', 'Expense', 'Current', 0, 'Cash Expense'),
(2, 'Cash', 'Assets', 'Non-Current', 0, 'Non-Cash Expense'),
(3, 'Inventory', 'Revenue', 'Current', 0, 'Cash Expense'),
(4, 'Accounts receivable', 'Assets', 'Current', 0, '-'),
(5, 'Accounts payable', 'Libility', 'Current', 0, 'Cash Expense'),
(6, 'Telephone Expense', 'Expense', 'Current', 0, '-'),
(7, 'CapitalStock', 'Equity', 'Current', 0, '-'),
(8, 'Land', 'Assets', 'Non-Current', 0, '-'),
(9, 'Building', 'Assets', 'Non-Current', 0, '-'),
(10, 'Notes payable', 'Libility', 'Non-Current', 0, '-'),
(11, 'Tools and Equipments', 'Assets', 'Current', 0, '-'),
(12, 'Repair Service Revenue', 'Revenue', 'Current', 0, '-'),
(13, 'Wages Expense', 'Expense', 'Current', 0, '-'),
(14, 'Utitlity Expense', 'Expense', 'Current', 0, 'Cash Expense'),
(15, 'Adverstising Expense', 'Expense', 'Current', 0, '-'),
(16, 'Cash in bank', 'Assets', 'Current', 0, '-');

-- --------------------------------------------------------

--
-- Table structure for table `mp_invoices`
--

CREATE TABLE `mp_invoices` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `discount` decimal(11,2) NOT NULL,
  `status` int(1) NOT NULL,
  `description` varchar(255) NOT NULL,
  `agentname` varchar(100) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `cus_picture` varchar(255) NOT NULL,
  `delivered_to` varchar(100) NOT NULL,
  `delivered_by` varchar(100) NOT NULL,
  `delivered_date` date NOT NULL,
  `delivered_description` varchar(255) NOT NULL,
  `shippingcharges` decimal(11,2) NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `payment_method` int(1) NOT NULL,
  `total_bill` decimal(11,2) NOT NULL,
  `bill_paid` decimal(11,2) NOT NULL,
  `source` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_langingpage`
--

CREATE TABLE `mp_langingpage` (
  `id` int(11) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `companydescription` varchar(255) NOT NULL,
  `companykeywords` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `slider1` varchar(255) NOT NULL,
  `slider2` varchar(255) NOT NULL,
  `slider3` varchar(255) NOT NULL,
  `slider4` varchar(255) NOT NULL,
  `slider5` varchar(255) NOT NULL,
  `title1` varchar(255) NOT NULL,
  `title2` varchar(255) NOT NULL,
  `title3` varchar(255) NOT NULL,
  `title4` varchar(255) NOT NULL,
  `title5` varchar(255) NOT NULL,
  `title6` varchar(255) NOT NULL,
  `subtitle6` varchar(255) NOT NULL,
  `subtitle6one` varchar(255) NOT NULL,
  `title8` varchar(255) NOT NULL,
  `title9` varchar(255) NOT NULL,
  `title10` varchar(255) NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(50) NOT NULL,
  `primarycolor` varchar(50) NOT NULL,
  `theme_pri_hover` varchar(50) NOT NULL,
  `expirey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mp_langingpage`
--

INSERT INTO `mp_langingpage` (`id`, `companyname`, `companydescription`, `companykeywords`, `logo`, `banner`, `slider1`, `slider2`, `slider3`, `slider4`, `slider5`, `title1`, `title2`, `title3`, `title4`, `title5`, `title6`, `subtitle6`, `subtitle6one`, `title8`, `title9`, `title10`, `currency`, `language`, `primarycolor`, `theme_pri_hover`, `expirey`) VALUES
(1, 'Pencil |  The Stationary and Mart Software v2.0', 'Pencil |  The Stationary and Mart Software v2.0', 'Pencil |  The Stationary and Mart Software v2.0', 'dcb99169fed78154951d15df01aa5dbe.png', '1171127a5133603e62cc949a87aedda4.jpg', '0ae082ea4c6d3334de39a11840c07c09.jpg', 'a3cbfa5f37d75bd8de678ceded28da43.png', 'd6e2b9bad5eb6560699d95d0235b3e9e.png', '67e008061660613ba4497979db422f91.png', 'ec572d4564b40dec3412b2d305f6a59e.png', 'THE  PHARMACY AND POS SYSTEM', 'OUR SERVICES', 'THINGS YOU SHOULD KNOW ABOUT US', 'MEET OUR PHARMACIST!.', 'SEE WHAT PATIENTS ARE SAYING?.', 'CONTACT US.', 'Contact Info.', 'Having Any Query! Or Book an appointment.', 'Quick Links.', 'Follow us.', '© Copyright Shop developed by North Soft. All Rights Reserved.', 'PKR', 'EN', '#d3af08', '#aaa106', 5);

-- --------------------------------------------------------

--
-- Table structure for table `mp_menu`
--

CREATE TABLE `mp_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mp_menu`
--

INSERT INTO `mp_menu` (`id`, `name`, `icon`) VALUES
(1, 'Products', 'fa fa-life-ring'),
(2, 'Settings', 'fa fa-cog'),
(5, 'Reports', 'fa fa-balance-scale'),
(6, 'POS', 'fa fa-clipboard'),
(7, 'Profile', 'fa fa-user'),
(12, 'Roles', 'fa fa-users'),
(16, 'Supplier', 'fa fa-truck'),
(18, 'Bank', 'fa fa-bank'),
(20, 'Purchase', 'fa fa-briefcase'),
(21, 'Supply ', 'fa fa-flask'),
(22, 'Initilization', 'fa fa-anchor'),
(23, 'Accounts', 'fa fa-calculator'),
(24, 'Statements', 'fa fa-line-chart'),
(25, 'Options', 'fa fa-shopping-bag'),
(26, 'Dashboard', 'fa fa-dashboard'),
(27, 'Expense', 'fa fa-paper-plane'),
(28, 'Customers', 'fa fa-user');

-- --------------------------------------------------------

--
-- Table structure for table `mp_menulist`
--

CREATE TABLE `mp_menulist` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mp_menulist`
--

INSERT INTO `mp_menulist` (`id`, `menu_id`, `title`, `link`) VALUES
(1, 1, 'Products', 'product'),
(2, 1, 'Categories', 'category'),
(3, 2, 'Layout & System', 'layout'),
(9, 28, 'Customers', 'customers'),
(10, 5, 'Sales Report', 'sales_report'),
(13, 6, 'View Invoice', 'invoice/manage'),
(16, 7, 'Personal', 'profile'),
(17, 25, 'Users', 'users'),
(18, 25, 'Requested items', 'todolist'),
(26, 12, 'Multiple Roles', 'multiple_roles'),
(28, 16, 'Supplier List', 'supplier'),
(29, 27, 'Expense', 'Expense'),
(30, 18, 'Cheques', 'bank/written_cheque'),
(31, 18, 'Banks', 'bank'),
(34, 1, 'Pending stock', 'product/pending_stock'),
(36, 6, 'Create invoice', 'invoice'),
(37, 6, 'Return items', 'return_items'),
(38, 5, 'Return report', 'sales_report/return_item_report'),
(39, 20, 'Purchases', 'purchase'),
(40, 21, 'Supply List', 'supply'),
(41, 21, 'Drivers', 'supply/drivers'),
(42, 21, 'Vehicles', 'supply/vehicle'),
(43, 22, 'Brands', 'initilization'),
(44, 22, 'Brand Sector', 'initilization/brand_sector'),
(45, 22, 'Region', 'initilization/region'),
(46, 22, 'Towns', 'initilization/town'),
(47, 22, 'units', 'initilization/units'),
(48, 22, 'Stores', 'initilization/stores'),
(49, 1, 'Out of stock', 'stock_alert_report'),
(50, 1, 'Recent expired', 'product/expired_list'),
(51, 1, 'Stock ', 'product/product_stock'),
(52, 1, 'Expired Stock', 'product/expired_stock'),
(53, 16, 'Supplier payments', 'supplier/payment_list'),
(54, 23, 'Customers ledger', 'customers/ledger'),
(55, 23, 'Supplier legder', 'supplier/ledger'),
(56, 20, 'Purchase return', 'purchase/return_list'),
(57, 4, 'Customer payments', 'customers/payment_list '),
(58, 23, 'Chart of accounts', 'accounts'),
(59, 24, 'General Journal', 'statements'),
(60, 24, 'Ledger Account', 'statements/ledger_accounts'),
(61, 24, 'Trail Balance', 'statements/trail_balance'),
(62, 24, 'Income', 'statements/income_statement'),
(63, 24, 'Balance Sheet', 'statements/balancesheet'),
(64, 23, 'Journal Voucher', 'statements/journal_voucher'),
(65, 23, 'Opening Balance', 'statements/opening_balance'),
(66, 28, 'Customer Payments', 'customers/payment_list '),
(68, 25, 'Take Backup', 'backup'),
(69, 25, 'Restore Backup', 'backup/upload_restore'),
(70, 18, 'Bank Deposits', 'bank/deposit_list'),
(71, 18, 'Bank Book', 'bank/bank_book'),
(72, 26, 'Dashboard', 'homepage'),
(73, 25, 'Printer Settings', 'Printer_settings');

-- --------------------------------------------------------

--
-- Table structure for table `mp_multipleroles`
--

CREATE TABLE `mp_multipleroles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `menu_Id` int(11) NOT NULL,
  `role` int(1) NOT NULL,
  `agentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mp_multipleroles`
--

INSERT INTO `mp_multipleroles` (`id`, `user_id`, `menu_Id`, `role`, `agentid`) VALUES
(117, 1, 12, 0, 1),
(118, 1, 1, 1, 1),
(119, 1, 2, 1, 1),
(120, 1, 5, 1, 1),
(121, 1, 6, 1, 1),
(122, 1, 7, 1, 1),
(123, 1, 16, 1, 1),
(124, 1, 18, 1, 1),
(125, 1, 20, 1, 1),
(126, 1, 21, 1, 1),
(127, 1, 22, 1, 1),
(128, 1, 23, 1, 1),
(129, 1, 24, 1, 1),
(130, 1, 25, 1, 1),
(131, 1, 26, 1, 1),
(132, 1, 27, 1, 1),
(133, 1, 28, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mp_payee`
--

CREATE TABLE `mp_payee` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `cus_email` varchar(50) NOT NULL,
  `cus_password` varchar(255) NOT NULL,
  `cus_address` varchar(255) NOT NULL,
  `cus_contact_1` varchar(50) NOT NULL,
  `cus_contact_2` varchar(50) NOT NULL,
  `cus_company` varchar(50) NOT NULL,
  `cus_description` varchar(100) NOT NULL,
  `cus_picture` varchar(100) NOT NULL,
  `cus_status` int(1) NOT NULL,
  `cus_region` varchar(255) NOT NULL,
  `cus_town` varchar(255) NOT NULL,
  `cus_type` varchar(50) NOT NULL,
  `cus_balance` decimal(11,2) NOT NULL,
  `cus_date` date NOT NULL,
  `customer_nationalid` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mp_payee`
--

INSERT INTO `mp_payee` (`id`, `customer_name`, `cus_email`, `cus_password`, `cus_address`, `cus_contact_1`, `cus_contact_2`, `cus_company`, `cus_description`, `cus_picture`, `cus_status`, `cus_region`, `cus_town`, `cus_type`, `cus_balance`, `cus_date`, `customer_nationalid`, `type`) VALUES
(1, 'Walk in ', 'walkin@gmail.com', '', '', '', '', '', '', 'default.jpg', 0, '', '', 'Regular', '0.00', '2018-04-22', '', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `mp_printer`
--

CREATE TABLE `mp_printer` (
  `id` int(11) NOT NULL,
  `printer_name` varchar(255) NOT NULL,
  `fontsize` int(11) NOT NULL,
  `set_default` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mp_printer`
--

INSERT INTO `mp_printer` (`id`, `printer_name`, `fontsize`, `set_default`) VALUES
(6, 'Black Copper BC-85AC', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mp_productslist`
--

CREATE TABLE `mp_productslist` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `mg` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `purchase` decimal(11,2) NOT NULL,
  `retail` decimal(11,2) NOT NULL,
  `expire` date NOT NULL,
  `manufacturing` date NOT NULL,
  `sideeffects` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `min_stock` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `total_units` int(11) NOT NULL,
  `packsize` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `tax` decimal(11,2) NOT NULL,
  `type` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `brand_sector_id` int(11) NOT NULL,
  `unit_type` varchar(50) NOT NULL,
  `net_weight` varchar(50) NOT NULL,
  `whole_sale` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_purchase`
--

CREATE TABLE `mp_purchase` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `store` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `total_amount` decimal(11,2) NOT NULL,
  `payment_type_id` varchar(50) NOT NULL,
  `payment_date` date NOT NULL,
  `cash` decimal(11,2) NOT NULL,
  `cus_picture` varchar(255) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_region`
--

CREATE TABLE `mp_region` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_return`
--

CREATE TABLE `mp_return` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `cus_id` int(11) NOT NULL,
  `agent` varchar(255) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `return_amount` decimal(11,2) NOT NULL,
  `total_bill` decimal(11,2) NOT NULL,
  `discount_given` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_return_list`
--

CREATE TABLE `mp_return_list` (
  `id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `product_no` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `mg` varchar(255) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `purchase` decimal(11,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `tax` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_sales`
--

CREATE TABLE `mp_sales` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_no` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `mg` int(11) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `purchase` decimal(11,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `tax` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_sessions`
--

CREATE TABLE `mp_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mp_sessions`
--

INSERT INTO `mp_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0c3espm2dt13mnq3a03vgl69gmn57nl5', '::1', 1525003813, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532353030333831333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a363a2250656e63696c223b7d),
('0d5cs78vncp5t7b2jfpajh4qbg8534sj', '::1', 1525005603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532353030353630333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a363a2250656e63696c223b7d),
('1dfi510l5dfhggpir71lsoa33egvnetb', '::1', 1524425258, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343432353235383b757365725f69647c613a323a7b733a323a226964223b733a323a223330223b733a343a226e616d65223b733a393a224e6f727468536f6674223b7d),
('2pghdrpufmmmdnke45l6fjv9fuj8ogpm', '::1', 1524425564, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343432353536343b757365725f69647c613a323a7b733a323a226964223b733a323a223330223b733a343a226e616d65223b733a393a224e6f727468536f6674223b7d),
('44jud8sb90r4g3lr9ffekd6s2aivfut5', '::1', 1524428567, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343432383536373b757365725f69647c613a323a7b733a323a226964223b733a323a223330223b733a343a226e616d65223b733a393a224e6f727468536f6674223b7d),
('4kkudok3onn7q7p6dojec2cdtn55r2ij', '::1', 1524464080, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343436343036373b757365725f69647c613a323a7b733a323a226964223b733a323a223330223b733a343a226e616d65223b733a393a224e6f727468536f6674223b7d7374617475737c613a323a7b733a333a226d7367223b733a39343a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d636865636b2d636972636c652d6f2220617269612d68696464656e3d2274727565223e3c2f693e204c6f67696e20205375636365737366756c6c79223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('54sffp12r7ocj60j2pqn14s8ihuemuit', '::1', 1524423686, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343432333638363b757365725f69647c613a323a7b733a323a226964223b733a323a223330223b733a343a226e616d65223b733a393a224e6f727468536f6674223b7d),
('5h3h7ivfkig2qjl93i5td8rm1nmii33l', '::1', 1524427896, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343432373839363b757365725f69647c613a323a7b733a323a226964223b733a323a223330223b733a343a226e616d65223b733a393a224e6f727468536f6674223b7d),
('6c8tbta2ieu67r3ro1r69t7iv64o9epj', '::1', 1525003511, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532353030333531313b7374617475737c613a323a7b733a333a226d7367223b733a3130383a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d6578636c616d6174696f6e2d747269616e676c652220617269612d68696464656e3d2274727565223e3c2f693e20496e636f727265637420456d61696c206f722050617373776f7264223b733a353a22616c657274223b733a363a2264616e676572223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('7aj2kj7dmv1qkd7jmp50asal0ki5o743', '::1', 1524427581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343432373538313b757365725f69647c613a323a7b733a323a226964223b733a323a223330223b733a343a226e616d65223b733a393a224e6f727468536f6674223b7d),
('82656kpg14ne40h4isvfttgfp19h89lg', '::1', 1524431433, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343433313234323b757365725f69647c613a323a7b733a323a226964223b733a323a223330223b733a343a226e616d65223b733a393a224e6f727468536f6674223b7d),
('b7gdt514ootsrgm75nodj0idq07sgsk4', '::1', 1525014612, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532353031343631323b),
('bc4sdng52j46ab6gd09ppfg37amjdeut', '::1', 1524427181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343432373138313b757365725f69647c613a323a7b733a323a226964223b733a323a223330223b733a343a226e616d65223b733a393a224e6f727468536f6674223b7d),
('e03p8g70v8sjn9k0i6o75t9oilp70bkp', '::1', 1524424933, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343432343933333b757365725f69647c613a323a7b733a323a226964223b733a323a223330223b733a343a226e616d65223b733a393a224e6f727468536f6674223b7d),
('ge2cmqbv4bq9lis7fttjucd04l6ghrke', '::1', 1524426356, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343432363335363b757365725f69647c613a323a7b733a323a226964223b733a323a223330223b733a343a226e616d65223b733a393a224e6f727468536f6674223b7d7374617475737c613a323a7b733a333a226d7367223b733a39303a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d74726173682d6f2220617269612d68696464656e3d2274727565223e3c2f693e2050726f64756374207265636f72642072656d6f766564223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('ipvf2g5rt6je1mqpk88dlpooi3ni7jqo', '::1', 1524430828, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343433303832383b757365725f69647c613a323a7b733a323a226964223b733a323a223330223b733a343a226e616d65223b733a393a224e6f727468536f6674223b7d),
('m5ecctqqogt0aipmsb59hful8t0p7dko', '::1', 1525013918, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532353031333931383b),
('mhbngsm9740q6pmnqa2tlr7o352hsbp4', '::1', 1525014612, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532353031343631323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a363a2250656e63696c223b7d),
('ns22a6nj6q42cpisvaln90klikon3e3c', '::1', 1524431242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343433313234323b757365725f69647c613a323a7b733a323a226964223b733a323a223330223b733a343a226e616d65223b733a393a224e6f727468536f6674223b7d),
('oornmbff9a4r7mcrkh43dj1p53k2g34q', '::1', 1525003198, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532353030333139383b757365725f69647c613a323a7b733a323a226964223b733a323a223330223b733a343a226e616d65223b733a393a224e6f727468536f6674223b7d),
('qavid3vuin9rtrcb916kl7hqrnbl0m0t', '::1', 1524424626, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343432343632363b757365725f69647c613a323a7b733a323a226964223b733a323a223330223b733a343a226e616d65223b733a393a224e6f727468536f6674223b7d),
('s6p9g1o682nnhrhilml75c7ngrca1f9s', '::1', 1524425936, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343432353933363b757365725f69647c613a323a7b733a323a226964223b733a323a223330223b733a343a226e616d65223b733a393a224e6f727468536f6674223b7d),
('shj88pk2jtloblgjfc9q22vdcgvk4a8m', '::1', 1525014286, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532353031343238363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a363a2250656e63696c223b7d7374617475737c613a323a7b733a333a226d7367223b733a39343a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d636865636b2d636972636c652d6f2220617269612d68696464656e3d2274727565223e3c2f693e204c6f67696e20205375636365737366756c6c79223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('sp70p3eb1ddugekbbslcrk9g8s3ghjdl', '::1', 1524913321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343931333137383b757365725f69647c613a323a7b733a323a226964223b733a323a223330223b733a343a226e616d65223b733a393a224e6f727468536f6674223b7d),
('uenofe2rhaf7orimsae1k8v65vedkdus', '::1', 1524428263, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343432383236333b757365725f69647c613a323a7b733a323a226964223b733a323a223330223b733a343a226e616d65223b733a393a224e6f727468536f6674223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `mp_stock`
--

CREATE TABLE `mp_stock` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `manufacturing` date NOT NULL,
  `expiry` date NOT NULL,
  `qty` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `added` varchar(255) NOT NULL,
  `purchase` decimal(11,2) NOT NULL,
  `selling` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_stores`
--

CREATE TABLE `mp_stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_sub_entry`
--

CREATE TABLE `mp_sub_entry` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `accounthead` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_supplier_payments`
--

CREATE TABLE `mp_supplier_payments` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `method` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `agentname` varchar(50) NOT NULL,
  `mode` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_supply`
--

CREATE TABLE `mp_supply` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `region_id` int(11) NOT NULL,
  `town_id` int(11) NOT NULL,
  `expense` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_temp_barcoder_invoice`
--

CREATE TABLE `mp_temp_barcoder_invoice` (
  `id` int(11) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `product_no` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `mg` varchar(255) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `purchase` decimal(11,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `tax` double(11,2) NOT NULL,
  `agentid` int(11) NOT NULL,
  `source` varchar(50) NOT NULL,
  `pack` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_todolist`
--

CREATE TABLE `mp_todolist` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `addedby` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_town`
--

CREATE TABLE `mp_town` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_units`
--

CREATE TABLE `mp_units` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp_users`
--

CREATE TABLE `mp_users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `user_contact_1` varchar(50) NOT NULL,
  `user_contact_2` varchar(50) NOT NULL,
  `cus_picture` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `user_description` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_date` date NOT NULL,
  `agentname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mp_users`
--

INSERT INTO `mp_users` (`id`, `user_name`, `user_email`, `user_address`, `user_contact_1`, `user_contact_2`, `cus_picture`, `status`, `user_description`, `user_password`, `user_date`, `agentname`) VALUES
(1, 'Pencil', 'demo@pencil.net', '21th street 72 Avenue park land ', '923472394224', '923472394224', '86ed815b3c9225ba422bcdad8cb8e3d8.png', 0, 'admin', '8cb2237d0679ca88db6464eac60da96345513964', '2017-08-23', 'Pencil');

-- --------------------------------------------------------

--
-- Table structure for table `mp_vehicle`
--

CREATE TABLE `mp_vehicle` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `vehicle_id` varchar(255) NOT NULL,
  `chase_no` varchar(255) NOT NULL,
  `engine_no` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mp_banks`
--
ALTER TABLE `mp_banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_bank_opening`
--
ALTER TABLE `mp_bank_opening`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_id` (`bank_id`);

--
-- Indexes for table `mp_bank_transaction`
--
ALTER TABLE `mp_bank_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `bank_id` (`bank_id`),
  ADD KEY `payee_id` (`payee_id`);

--
-- Indexes for table `mp_barcode`
--
ALTER TABLE `mp_barcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_brand`
--
ALTER TABLE `mp_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_brand_sector`
--
ALTER TABLE `mp_brand_sector`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_category`
--
ALTER TABLE `mp_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `mp_contactabout`
--
ALTER TABLE `mp_contactabout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_customer_payments`
--
ALTER TABLE `mp_customer_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `mp_drivers`
--
ALTER TABLE `mp_drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_expense`
--
ALTER TABLE `mp_expense`
  ADD PRIMARY KEY (`id`),
  ADD KEY `head_id` (`head_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `payee_id` (`payee_id`);

--
-- Indexes for table `mp_generalentry`
--
ALTER TABLE `mp_generalentry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_head`
--
ALTER TABLE `mp_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_invoices`
--
ALTER TABLE `mp_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `cus_id` (`cus_id`),
  ADD KEY `prescription_id` (`prescription_id`),
  ADD KEY `transaction_id` (`transaction_id`);

--
-- Indexes for table `mp_langingpage`
--
ALTER TABLE `mp_langingpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_menu`
--
ALTER TABLE `mp_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_menulist`
--
ALTER TABLE `mp_menulist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `mp_multipleroles`
--
ALTER TABLE `mp_multipleroles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `menu_Id` (`menu_Id`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `mp_payee`
--
ALTER TABLE `mp_payee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_printer`
--
ALTER TABLE `mp_printer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_productslist`
--
ALTER TABLE `mp_productslist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `brand_sector_id` (`brand_sector_id`),
  ADD KEY `unit_type` (`unit_type`);

--
-- Indexes for table `mp_purchase`
--
ALTER TABLE `mp_purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `mp_region`
--
ALTER TABLE `mp_region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_return`
--
ALTER TABLE `mp_return`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `cus_id` (`cus_id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `mp_return_list`
--
ALTER TABLE `mp_return_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`return_id`),
  ADD KEY `medicine_id` (`product_id`);

--
-- Indexes for table `mp_sales`
--
ALTER TABLE `mp_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medicine_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `mp_sessions`
--
ALTER TABLE `mp_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `mp_stock`
--
ALTER TABLE `mp_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `mp_stores`
--
ALTER TABLE `mp_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_sub_entry`
--
ALTER TABLE `mp_sub_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`parent_id`),
  ADD KEY `accounthead` (`accounthead`),
  ADD KEY `amount` (`amount`);

--
-- Indexes for table `mp_supplier_payments`
--
ALTER TABLE `mp_supplier_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `mp_supply`
--
ALTER TABLE `mp_supply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_id` (`driver_id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `region_id` (`region_id`),
  ADD KEY `town_id` (`town_id`);

--
-- Indexes for table `mp_temp_barcoder_invoice`
--
ALTER TABLE `mp_temp_barcoder_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `mp_todolist`
--
ALTER TABLE `mp_todolist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addedby` (`addedby`);

--
-- Indexes for table `mp_town`
--
ALTER TABLE `mp_town`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_units`
--
ALTER TABLE `mp_units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `symbol` (`symbol`);

--
-- Indexes for table `mp_users`
--
ALTER TABLE `mp_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_name` (`user_name`),
  ADD KEY `user_name_2` (`user_name`);

--
-- Indexes for table `mp_vehicle`
--
ALTER TABLE `mp_vehicle`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mp_banks`
--
ALTER TABLE `mp_banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_bank_opening`
--
ALTER TABLE `mp_bank_opening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_bank_transaction`
--
ALTER TABLE `mp_bank_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_barcode`
--
ALTER TABLE `mp_barcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_brand`
--
ALTER TABLE `mp_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_brand_sector`
--
ALTER TABLE `mp_brand_sector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_category`
--
ALTER TABLE `mp_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_contactabout`
--
ALTER TABLE `mp_contactabout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mp_customer_payments`
--
ALTER TABLE `mp_customer_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_drivers`
--
ALTER TABLE `mp_drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_expense`
--
ALTER TABLE `mp_expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_generalentry`
--
ALTER TABLE `mp_generalentry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_head`
--
ALTER TABLE `mp_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `mp_invoices`
--
ALTER TABLE `mp_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_langingpage`
--
ALTER TABLE `mp_langingpage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mp_menu`
--
ALTER TABLE `mp_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `mp_menulist`
--
ALTER TABLE `mp_menulist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `mp_multipleroles`
--
ALTER TABLE `mp_multipleroles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
--
-- AUTO_INCREMENT for table `mp_payee`
--
ALTER TABLE `mp_payee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mp_printer`
--
ALTER TABLE `mp_printer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `mp_productslist`
--
ALTER TABLE `mp_productslist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_purchase`
--
ALTER TABLE `mp_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_region`
--
ALTER TABLE `mp_region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_return`
--
ALTER TABLE `mp_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_return_list`
--
ALTER TABLE `mp_return_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_sales`
--
ALTER TABLE `mp_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_stock`
--
ALTER TABLE `mp_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_stores`
--
ALTER TABLE `mp_stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_sub_entry`
--
ALTER TABLE `mp_sub_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_supplier_payments`
--
ALTER TABLE `mp_supplier_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_supply`
--
ALTER TABLE `mp_supply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_temp_barcoder_invoice`
--
ALTER TABLE `mp_temp_barcoder_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_todolist`
--
ALTER TABLE `mp_todolist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_town`
--
ALTER TABLE `mp_town`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_units`
--
ALTER TABLE `mp_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_users`
--
ALTER TABLE `mp_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mp_vehicle`
--
ALTER TABLE `mp_vehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `mp_bank_opening`
--
ALTER TABLE `mp_bank_opening`
  ADD CONSTRAINT `bank_opening_transac` FOREIGN KEY (`bank_id`) REFERENCES `mp_banks` (`id`);

--
-- Constraints for table `mp_bank_transaction`
--
ALTER TABLE `mp_bank_transaction`
  ADD CONSTRAINT `bankid_bank_fk` FOREIGN KEY (`bank_id`) REFERENCES `mp_banks` (`id`),
  ADD CONSTRAINT `payee_bank_fk` FOREIGN KEY (`payee_id`) REFERENCES `mp_payee` (`id`),
  ADD CONSTRAINT `transaction_general_fk` FOREIGN KEY (`transaction_id`) REFERENCES `mp_generalentry` (`id`);

--
-- Constraints for table `mp_customer_payments`
--
ALTER TABLE `mp_customer_payments`
  ADD CONSTRAINT `customer_trans_fk` FOREIGN KEY (`transaction_id`) REFERENCES `mp_generalentry` (`id`),
  ADD CONSTRAINT `payee_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `mp_payee` (`id`);

--
-- Constraints for table `mp_expense`
--
ALTER TABLE `mp_expense`
  ADD CONSTRAINT `general_expense_fk` FOREIGN KEY (`transaction_id`) REFERENCES `mp_generalentry` (`id`),
  ADD CONSTRAINT `head_expense_fk` FOREIGN KEY (`head_id`) REFERENCES `mp_head` (`id`),
  ADD CONSTRAINT `payee_expense_fk` FOREIGN KEY (`payee_id`) REFERENCES `mp_payee` (`id`);

--
-- Constraints for table `mp_invoices`
--
ALTER TABLE `mp_invoices`
  ADD CONSTRAINT `invoice_payee_fk` FOREIGN KEY (`cus_id`) REFERENCES `mp_payee` (`id`),
  ADD CONSTRAINT `invoice_transaction_fk` FOREIGN KEY (`transaction_id`) REFERENCES `mp_generalentry` (`id`);

--
-- Constraints for table `mp_menulist`
--
ALTER TABLE `mp_menulist`
  ADD CONSTRAINT `sub_menu_fk` FOREIGN KEY (`menu_id`) REFERENCES `mp_menulist` (`id`);

--
-- Constraints for table `mp_multipleroles`
--
ALTER TABLE `mp_multipleroles`
  ADD CONSTRAINT `roles_agentid_fk` FOREIGN KEY (`agentid`) REFERENCES `mp_users` (`id`),
  ADD CONSTRAINT `roles_menuid_fk` FOREIGN KEY (`menu_Id`) REFERENCES `mp_menu` (`id`),
  ADD CONSTRAINT `roles_user_fk` FOREIGN KEY (`user_id`) REFERENCES `mp_users` (`id`);

--
-- Constraints for table `mp_productslist`
--
ALTER TABLE `mp_productslist`
  ADD CONSTRAINT `product_brand_fk` FOREIGN KEY (`brand_id`) REFERENCES `mp_brand` (`id`),
  ADD CONSTRAINT `product_brandsector_fk` FOREIGN KEY (`brand_sector_id`) REFERENCES `mp_brand_sector` (`id`),
  ADD CONSTRAINT `product_cat_fk` FOREIGN KEY (`category_id`) REFERENCES `mp_category` (`id`),
  ADD CONSTRAINT `product_unit_fk` FOREIGN KEY (`unit_type`) REFERENCES `mp_units` (`symbol`);

--
-- Constraints for table `mp_purchase`
--
ALTER TABLE `mp_purchase`
  ADD CONSTRAINT `purchase_payee_fk` FOREIGN KEY (`supplier_id`) REFERENCES `mp_payee` (`id`),
  ADD CONSTRAINT `purchase_transaction_fk` FOREIGN KEY (`transaction_id`) REFERENCES `mp_generalentry` (`id`);

--
-- Constraints for table `mp_return`
--
ALTER TABLE `mp_return`
  ADD CONSTRAINT `return_customer_fk` FOREIGN KEY (`cus_id`) REFERENCES `mp_payee` (`id`),
  ADD CONSTRAINT `return_invoice_id` FOREIGN KEY (`invoice_id`) REFERENCES `mp_invoices` (`id`),
  ADD CONSTRAINT `return_transaction_general_fk` FOREIGN KEY (`transaction_id`) REFERENCES `mp_generalentry` (`id`);

--
-- Constraints for table `mp_return_list`
--
ALTER TABLE `mp_return_list`
  ADD CONSTRAINT `return_item_fk` FOREIGN KEY (`return_id`) REFERENCES `mp_return` (`id`),
  ADD CONSTRAINT `return_product_fk` FOREIGN KEY (`product_id`) REFERENCES `mp_productslist` (`id`);

--
-- Constraints for table `mp_sales`
--
ALTER TABLE `mp_sales`
  ADD CONSTRAINT `sales_productlist_fk` FOREIGN KEY (`product_id`) REFERENCES `mp_productslist` (`id`);

--
-- Constraints for table `mp_stock`
--
ALTER TABLE `mp_stock`
  ADD CONSTRAINT `stock_product_fk` FOREIGN KEY (`mid`) REFERENCES `mp_productslist` (`id`);

--
-- Constraints for table `mp_sub_entry`
--
ALTER TABLE `mp_sub_entry`
  ADD CONSTRAINT `sub_entry_fk` FOREIGN KEY (`parent_id`) REFERENCES `mp_generalentry` (`id`),
  ADD CONSTRAINT `supply_head_fk` FOREIGN KEY (`accounthead`) REFERENCES `mp_head` (`id`);

--
-- Constraints for table `mp_supplier_payments`
--
ALTER TABLE `mp_supplier_payments`
  ADD CONSTRAINT `supplier_payee_fk` FOREIGN KEY (`supplier_id`) REFERENCES `mp_payee` (`id`),
  ADD CONSTRAINT `supplier_payments_general_fk` FOREIGN KEY (`transaction_id`) REFERENCES `mp_generalentry` (`id`);

--
-- Constraints for table `mp_supply`
--
ALTER TABLE `mp_supply`
  ADD CONSTRAINT `supply_driver_fk` FOREIGN KEY (`driver_id`) REFERENCES `mp_drivers` (`id`),
  ADD CONSTRAINT `supply_region_fk` FOREIGN KEY (`region_id`) REFERENCES `mp_region` (`id`),
  ADD CONSTRAINT `supply_town_fk` FOREIGN KEY (`town_id`) REFERENCES `mp_town` (`id`),
  ADD CONSTRAINT `supply_vehicle_fk` FOREIGN KEY (`vehicle_id`) REFERENCES `mp_vehicle` (`id`);

--
-- Constraints for table `mp_temp_barcoder_invoice`
--
ALTER TABLE `mp_temp_barcoder_invoice`
  ADD CONSTRAINT `temp_agentid_fk` FOREIGN KEY (`agentid`) REFERENCES `mp_users` (`id`),
  ADD CONSTRAINT `temp_product_fk` FOREIGN KEY (`product_id`) REFERENCES `mp_productslist` (`id`);

--
-- Constraints for table `mp_todolist`
--
ALTER TABLE `mp_todolist`
  ADD CONSTRAINT `todo_agent_fk` FOREIGN KEY (`addedby`) REFERENCES `mp_users` (`user_name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
