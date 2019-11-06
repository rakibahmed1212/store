<section class="content-header">
    <div class="row">
        <div class="col-md-12">
            <div class="pull pull-right">
                <button type="button" onclick="show_modal_page('<?php echo base_url();?>supplier/popup/add_supplier_model')" class="btn btn-info btn-flat btn-lg " ><i class="fa fa-plus-square" aria-hidden="true"></i>
                    Add new supplier
                </button>
                <button onclick="printDiv('print-section')" class="btn btn-default btn-flat   pull-right btn-lg "><i class="fa fa-print  pull-left"></i> Print Report</button>
            </div>
        </div>
    </div>
</section>
<section class="content">
    <div class="box" id="print-section">
        <div class="box-header">
            <h3 class="box-title"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i> <?php echo $table_name; ?></h3><br />
            <small>By default it will fetch the current months data.</small>
        </div>
        <div class="box-body">
        <?php
            $attributes = array('id'=>'customer_ledger','method'=>'post','class'=>'');
        ?>
        <?php echo form_open_multipart('supplier/create_ledger',$attributes); ?>
        <div class="row no-print">
            <div class="col-md-12">
                 <div class="form-group">
                    <?php echo form_label('Date From:'); ?>
                    <?php $data = array('class'=>'form-control input-lg','type'=>'date','name'=>'date1');
                    echo form_input($data); ?>
                </div>
                <div class="form-group">
                    <?php echo form_label('Date To:'); ?>
                    <?php $data1 = array('class'=>'form-control input-lg','type'=>'date','name'=>'date2');
                        echo form_input($data1); ?>
                </div>
                <div class="form-group">
                    <?php echo form_label('Select supplier to genetate ledger'); ?>
                        <select name="supplier_id" class="form-control select2 input-lg">
                            <?php 
                            foreach ($supplier_list as $single_supplier) 
                            {
                            ?>
                                <option value="<?php echo $single_supplier->id; ?>">
                                    <?php echo $single_supplier->customer_name; ?>     
                                </option>
                            <?php 
                             }
                            ?>
                        </select>
                </div>  
                <div class="form-group">
                    <?php
                        $data = array('class'=>'btn btn-primary btn-flat margin btn-lg pull-right ','type' => 'submit','name'=>'btn_submit_supplier','value'=>'true', 'content' => '<i class="fa fa-floppy-o" aria-hidden="true"></i> Build ledger  ');
                        echo form_button($data);
                     ?>  
                </div>
            </div>
        </div>
        <?php form_close(); ?>
        <?php 
         $currency = $this->db->get_where('mp_langingpage', array('id' => 1))->result_array()[0]['currency'];
        if($ledger != NULL)
        {
        ?>
            <h2 class="text-center">
                <?php echo $heading; ?> 
            </h2>
            <h3 class="text-center">
                <?php echo $email_phone; ?> 
            </h3>
            <h4  class="purchase-heading"> <i class="fa fa-check-circle"></i>  
                 Purchases 
                <small>
                     Below shows the transaction of purchases with selected supplier.
                </small>
            </h4>
            <div class="row">
                <div class="col-md-12 table-responsive">
                    <table id="" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                            <?php
                            foreach ($table_heading_names_of_coloums as $table_head)
                            {
                            ?>
                                <th>
                                    <?php echo $table_head; ?>
                                </th>
                            <?php
                            }
                            ?>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        if($ledger != NULL)
                        {
                            $total = 0;
                            $paid = 0;
                            $balance = 0;

                            foreach ($ledger as $single_ledger)
                            {
                                $total = $total + $single_ledger->total_amount;
                                $paid = $paid + $single_ledger->cash;
                                $balance = $balance + ($single_ledger->total_amount-$single_ledger->cash);
                        ?>
                            <tr>
                                <td>
                                    <?php echo $single_ledger->payment_date; ?>
                                </td>
                                <td>
                                    <?php echo $single_ledger->id; ?>
                                </td>
                                <td>
                                    <?php echo $single_ledger->total_amount; ?>
                                </td>
                                <td>
                                    <?php echo $single_ledger->cash; ?>
                                </td>
                                <td>
                                    <?php echo $single_ledger->total_amount-$single_ledger->cash; ?>
                                </td>
                                 <td>
                                    <?php echo $single_ledger->payment_type_id; ?>
                                </td>
                                <td >
                                   <?php echo $single_ledger->description; ?>
                                </td>
                            </tr>
                            <?php
                                    }
                                }
                             ?>
                             <tr>
                                <th>Total</th>
                                <th></th>
                                <th><?php echo $currency.' '.number_format($total,'2','.',''); ?></th>
                                <th><?php echo $currency.' '.number_format($paid,'2','.',''); ?></th>
                                <th><?php echo $currency.' '.number_format($balance,'2','.',''); ?></th>
                                <th></th>
                                <th></th>
                            </tr>
                    </tbody>
                    </table>
                </div>
            </div>
            <?php 
                }
                if($ledger_return_data != NULL)
                {
             ?>
             <h4  class="purchase-heading"> <i class="fa fa-check-circle"></i>  
                Purchase Returns 
                <small>
                    Below shows the transaction of purchases return with selected supplier. 
                </small>
            </h4>
            <div class="row"> 
                <div class="col-md-12 table-responsive"> 
                    <table id="" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                            <?php
                                foreach ($table_heading_names_of_coloums_returns as $table_head)
                                {
                                ?>
                                <th>
                                    <?php echo $table_head; ?>
                                </th>
                                <?php
                                }
                                ?>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                if($ledger_return_data != NULL)
                                {
                                    $total = 0;
                                    $paid = 0;
                                    $balance = 0;
                                foreach ($ledger_return_data as $single_ledger)
                                {
                                    $total = $total + $single_ledger->total_amount;
                                    $paid = $paid + $single_ledger->cash;
                                    $balance = $balance + ($single_ledger->total_amount-$single_ledger->cash);
                            ?>
                                <tr>
                                    <td>
                                        <?php echo $single_ledger->payment_date; ?>
                                    </td>
                                    <td>
                                        <?php echo $single_ledger->id; ?>
                                    </td>
                                    <td>
                                        <?php echo $single_ledger->total_amount; ?>
                                    </td>
                                    <td>
                                        <?php echo $single_ledger->cash; ?>
                                    </td>
                                    <td>
                                        <?php echo $single_ledger->total_amount-$single_ledger->cash; ?>
                                    </td>
                                     <td>
                                        <?php echo $single_ledger->payment_type_id; ?>
                                    </td>
                                    <td>
                                       <?php echo $single_ledger->description; ?>
                                    </td> 
                                </tr>
                                <?php
                                    }
                                }
                                 ?>
                                 <tr>
                                    <th>Total</th>
                                    <th></th>
                                    <th><?php echo $currency.' '.number_format($total,'2','.',''); ?></th>
                                    <th><?php echo $currency.' '.number_format($paid,'2','.',''); ?></th>
                                    <th><?php echo $currency.' '.number_format($balance,'2','.',''); ?></th>
                                    <th></th>
                                    <th></th>
                                </tr>
                        </tbody>
                        </table>
                    </div>
                </div>
                <?php 
                    }
                    if($balance_paid != NULL)
                    {
                 ?>
                 <h4  class="purchase-heading"> <i class="fa fa-check-circle"></i>  
                     Purchases Balance Paid 
                    <small>
                         Below shows any amount paid for purchase balance to supplier. 
                    </small>
                 </h4>
                 <div class="row">
                    <div class="col-md-12  table-responsive">
                        <table id="" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                <?php
                                    foreach ($table_heading_names_of_coloums_balance_paid as $table_head)
                                    {
                                ?>
                                        <th>
                                            <?php echo $table_head; ?>
                                        </th>
                                <?php
                                    }
                                ?>
                                </tr>
                             </thead>
                            <tbody>
                                <?php
                                if($balance_paid != NULL)
                                {
                                    $total = 0;
                                    foreach ($balance_paid as $single_paid)
                                    {
                                        $total = $total + $single_paid->amount; 
                                ?>
                                    <tr>
                                        <td>
                                            <?php echo $single_paid->date; ?>
                                        </td>
                                        <td>
                                            <?php echo $single_paid->id; ?>
                                        </td>
                                        <td>
                                            <?php echo $single_paid->amount; ?>
                                        </td>
                                        <td>
                                            <?php echo $single_paid->method; ?>
                                        </td>
                                        <td  >
                                           <?php echo $single_paid->description; ?>
                                        </td>
                                    </tr>
                                    <?php
                                            }
                                        }
                                     ?>
                                     <tr>
                                        <th>Total piad to supplier</th>
                                        <th></th>
                                        <th colspan="5"><?php echo $currency.' '.number_format($total,'2','.',''); ?> /-</th> 
                                    </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <?php 
                }
                if($balance_recieved != NULL)
                {
                 ?>
                <h4  class="purchase-heading"> <i class="fa fa-check-circle"></i> 
                    Purchases Return Balance Recieved 
                    <small>
                        Below shows any amount recieved form purchase balance from supplier. 
                    </small>
                </h4>
               <div class="row">
                   <div class="col-md-12 table-responsive">
                        <table id="" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                <?php
                                foreach ($table_heading_names_of_coloums_balance_recieved as $table_head)
                                {
                                ?>
                                    <th><?php echo $table_head; ?></th>
                                <?php
                                }
                                ?>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                if($balance_recieved != NULL)
                                {
                                    $total = 0;
                                    foreach ($balance_recieved as $single_recieve)
                                    {
                                        $total = $total + $single_recieve->amount;  
                                ?>
                                    <tr>
                                        <td>
                                            <?php echo $single_recieve->date; ?>
                                        </td>
                                        <td>
                                            <?php echo $single_recieve->id; ?>
                                        </td>
                                        <td>
                                            <?php echo $single_recieve->amount; ?>
                                        </td>
                                        <td>
                                            <?php echo $single_recieve->method; ?>
                                        </td>
                                        <td >
                                           <?php echo $single_recieve->description; ?>
                                        </td>
                                    </tr>
                                    <?php

                                        }
                                    }
                                     ?>
                                     <tr>
                                        <th>Total recieved from supplier</th>
                                        <th></th>
                                        <th colspan="5"><?php echo $currency.' '.number_format($total,'2','.',''); ?> /-
                                        </th>
                                    </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <?php 
                    }
                    if($expense_transactions != NULL)
                    {
                        $total = 0;
                        $paid = 0;
                       
                ?>
                    <h4  class="purchase-heading"><i class="fa fa-check-circle"></i> 
                    Expenses piad to supplier
                    <small>List of expense amounts piad to customer. </small>
                    </h4>
                    <div class="table-responsive  ">
                        <table id="" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                <?php
                                foreach ($table_heading_names_of_coloums_expense as $table_head)
                                {
                                ?>
                                    <th>
                                        <?php echo $table_head; ?>
                                    </th>
                                <?php
                                }
                                ?>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    foreach ($expense_transactions as $single_single)
                                    {
                                        $total = $total + $single_single->total_bill;    
                                        $paid = $paid + $single_single->total_paid;    
                                ?>
                                    <tr>
                                        <td>
                                            <?php echo $single_single->date; ?>
                                        </td>
                                        <td>
                                            <?php echo $single_single->method; ?>
                                        </td>
                                        <td>
                                            <?php echo $single_single->customer_name; ?>
                                        </td>
                                        <td>
                                            <?php echo $single_single->user; ?>
                                        </td>
                                        <td>
                                            <?php echo $single_single->total_bill; ?>
                                        </td> 
                                        <td>
                                            <?php echo $single_single->total_paid; ?>
                                        </td>
                                        <td>
                                            <?php echo $single_single->total_paid-$single_single->total_paid; ?>
                                        </td>
                                        <td >
                                            <?php echo $single_single->description; ?>
                                        </td>
                                    </tr>
                                <?php
                                }
                                ?>
                              <tr>
                                <th>Total</th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th >
                                    <?php echo $currency.' '.number_format($total,'2','.',''); 
                                    ?> 
                                </th>
                                <th >
                                    <?php echo $currency.' '.number_format($paid,'2','.','');?>
                                </th>                                
                                <th >
                                    <?php echo $currency.' '.number_format($total-$paid,'2','.','');?>
                                </th>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                <?php 
                    }           
                    $received_total = 0;
                    $paid_total = 0;
                    if($bank_transactions != NULL)
                    {  
                 ?>
                    <h4  class="purchase-heading"><i class="fa fa-check-circle"></i> 
                        Transactions occured via banks
                        <small>List of cheques piad or recieved from customer. </small>
                    </h4>
                    <div class="table-responsive  ">
                        <table id="" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                <?php
                                foreach ($table_heading_names_of_coloums_transaction as $table_head)
                                {
                                ?>
                                    <th>
                                        <?php echo $table_head; ?>
                                    </th>
                                <?php
                                }
                                ?>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                foreach ($bank_transactions as $single_trans)
                                {
                                    //FOR CALCULATING PAID
                                    if($single_trans->transaction_status == 0 AND $single_trans->transaction_type == 'paid')
                                    {
                                        $paid_total = $paid_total + $single_trans->cheque_amount;
                                    }
                                    
                                    //FOR CALCULATING RECEIVED
                                    if($single_trans->transaction_status == 0 AND $single_trans->transaction_type == 'recieved')
                                    {
                                        $received_total = $received_total + $single_trans->cheque_amount;
                                    }   
                            ?>
                                <tr>
                                    <td>
                                        <?php echo $single_trans->date; ?>
                                    </td>
                                    <td>
                                        <?php echo $single_trans->bankname; ?>
                                    </td>
                                    <td>
                                        <?php echo $single_trans->customer_name; ?>
                                    </td>
                                    <td>
                                        <?php echo $single_trans->cheque_amount; ?>
                                    </td>
                                    <td >
                                        <?php echo $single_trans->ref_no; ?>
                                    </td> 
                                    <td >
                                       <?php 
                                            if($single_trans->transaction_status == 0 AND $single_trans->transaction_type == 'paid')
                                            {
                                                echo 'Cleared';
                                            }
                                            else if($single_trans->transaction_status == 1 AND $single_trans->transaction_type == 'paid')
                                            {
                                                echo 'Outstanding';
                                            }
                                            else if($single_trans->transaction_status == 0 AND $single_trans->transaction_type == 'recieved')
                                            {
                                                echo 'Deposited';
                                            }
                                            else if($single_trans->transaction_status == 1 AND $single_trans->transaction_type == 'recieved')
                                            {
                                                echo 'Not Deposited';
                                            }
                                        ?>
                                    </td>
                                    <td >
                                        <?php 
                                            if($single_trans->transaction_type == 'paid')
                                            {
                                                echo "Paid";
                                            }
                                            else
                                            {
                                                echo "Recieved";      
                                            }
                                        ?>
                                    </td>
                                </tr>
                            <?php
                                }
                            ?>
                            <tr>
                                <th>Total Received</th>
                                <th> <?php echo $currency.' '.$received_total; ?> /- </th>
                            </tr>
                            <tr>
                                <th>Total Paid</th>
                                <th> <?php echo $currency.' '.$paid_total; ?> /- </th>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <?php 
                        }
                     ?>
            </div>
        </div>
</section>
<!-- Bootstrap model  -->
<?php $this->load->view('bootstrap_model.php'); ?>
<!-- Bootstrap model  ends--> 