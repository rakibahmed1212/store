<?php
/*
*  @author    : Muhammad Ibrahim
*  @Mail      : aliibrahimroshan@gmail.com
*  @Created   : 14th August, 2017
*  @Developed : Team Gigabyte
*  @URL       : www.gigabyteltd.net
*  @Envato    : https://codecanyon.net/user/gb_developers
*/
defined('BASEPATH') OR exit('No direct script access allowed');
class Sales_report extends CI_Controller
{
	//Sales_report
	public function index()
	{
		// DEFINES PAGE TITLE
		$data['title'] = 'Product and other items sales report';

		// DEFINES NAME OF TABLE HEADING
		$data['table_name'] = 'Product and other items sales report :';

		// DEFINES WHICH PAGE TO RENDER
		$data['main_view'] = 'medicine_sales';

		// DEFINES THE TABLE HEAD
		$data['table_heading_names_of_coloums'] = array(
			'Sno',
			'Invoice ID',
			'Date',
			'Product Name',
			'Weight',
			'Price',
			'Qty',
			'Subtotal'
		);
		$collection = array();

		// DEFINES TO LOAD THE MODEL
		$this->load->model('Accounts_model');

		// FECHING VALUES FROM DATE FIELDS
		$first_date = html_escape($this->input->post('date1'));
		$second_date = html_escape($this->input->post('date2'));
		if ($first_date == NULL OR $second_date == NULL)
		{
			$first_date = date('Y-m-d');
			$second_date = date('Y-m-d');
			
			// FETCH SALES RECORD FROM invoices TABLE
			$result_invoices = $this->Accounts_model->fetch_record_date('mp_invoices', $first_date, $second_date);
		}
		else
		{
			// FETCH SALES RECORD FROM invoices TABLE
			$result_invoices = $this->Accounts_model->fetch_record_date('mp_invoices', $first_date, $second_date);
		}

		if ($result_invoices != NULL)
		{
			$count = 0;
			foreach($result_invoices as $obj_result_invoices)
			{

				// FETCH SALES RECORD FROM SALES TABLE
				$result_sales = $this->Accounts_model->fetch_record_sales('mp_sales', 'order_id', $obj_result_invoices->id);
				if ($result_sales != NULL)
				{
					$collection[$count] = $result_sales;
					$count++;
				}
			}

			// ASSIGNING THE FETCHED RECORD OF TABLE TO ARRAY OBJECT TO PRINT IN VIEWS
			$data['invoices_record'] = $result_invoices;

			// ASSIGNING THE FETCHED RECORD OF TABLE TO ARRAY OBJECT TO PRINT IN VIEWS
			$data['Sales_collection'] = $collection;

			// print_r($result_invoices);
			// print_r($collection);
			// DEFINES GO TO MAIN FOLDER FOND INDEX.PHP  AND PASS THE ARRAY OF DATA TO THIS PAGE
			$this->load->view('main/index.php', $data);
		}
		else
		{
			// INCASE OF ERROR OR PAGE NOT FOUND
			// DEFINES WHICH PAGE TO RENDER
			$data['main_view'] = 'main/error_invoices.php';
			$data['actionresult'] = "sales_report/";
			$data['heading1'] = "No sales available. ";
			$data['heading2'] = "Oops! Sorry no sales record available in the given details";
			$data['details'] = "We will work on fixing that right away. Meanwhile, you may return or try using the search form.";

			// DEFINES GO TO MAIN FOLDER FOND INDEX.PHP  AND PASS THE ARRAY OF DATA TO THIS PAGE
			$this->load->view('main/index.php', $data);
		}
	}

	//sales_report/return_item_report
	function return_item_report()
	{
		// DEFINES PAGE TITLE
		$data['title'] = 'Product and other items return report';

		// DEFINES NAME OF TABLE HEADING
		$data['table_name'] = 'Product and other items return report :';

		// DEFINES WHICH PAGE TO RENDER
		$data['main_view'] = 'product_return';

		// DEFINES THE TABLE HEAD
		$data['table_heading_names_of_coloums'] = array(
			'Sno',
			'Invoice ID',
			'Date',
			'Customer Name',
			'Agent',
			'Total Bill',
			'Deduct Disc',
			'Paid Back',
			'Balance',
			'Action'
		);
		$collection = array();

		// DEFINES TO LOAD THE MODEL
		$this->load->model('Accounts_model');

		// FECHING VALUES FROM DATE FIELDS
		$first_date = html_escape($this->input->post('date1'));
		$second_date = html_escape($this->input->post('date2'));

		if ($first_date == NULL OR $second_date == NULL)
		{
			$first_date = date('Y-m-d');
			$second_date = date('Y-m-d');
			
			// FETCH SALES RECORD FROM invoices TABLE
			$result_invoices = $this->Accounts_model->return_items_date('mp_return_list', $first_date, $second_date);
		}
		else
		{
			// FETCH SALES RECORD FROM invoices TABLE
			$result_invoices = $this->Accounts_model->return_items_date('mp_return_list', $first_date, $second_date);
		}

			$data['return_data'] = $result_invoices;
			// DEFINES GO TO MAIN FOLDER FOND INDEX.PHP  AND PASS THE ARRAY OF DATA TO THIS PAGE
			$this->load->view('main/index.php', $data);
	}
}