<section class="content-header">
    <div class="row">
        <div class="col-md-12">
            <div class="pull pull-right">
                <button onclick="printDiv('print-section')" class="btn btn-default btn-lg btn-flat   pull-right "><i class="fa fa-print  pull-left"></i> Print Report</button>
            </div>
        </div>
    </div>
</section>
<section class="content">
    <div class="box" id="print-section">
        <div class="box-body box-bg ">
            <div class="make-container-center">
            <?php
                $attributes = array('id'=>'ledger_accounts','method'=>'post','class'=>'');
            ?>
            <?php echo form_open_multipart('statements/trail_balance',$attributes); ?>
            <div class="row no-print">
                <div class="col-md-12 ">
                    <div class="form-group">
                        <?php echo form_label('Select year'); ?>
                        <select class="form-control" name="year">
                            <option  value="2017"> 2017</option>
                            <option  value="2018"> 2018</option>
                            <option  value="2019"> 2019</option>
                            <option  value="2020"> 2020</option>
                            <option  value="2021"> 2021</option>
                        </select>
                    </div>
                </div>                    
                <div class="col-md-12 ">
                    <div class="form-group">
                        <?php
                            $data = array('class'=>'btn btn-info btn-flat margin btn-lg pull-right ','type' => 'submit','name'=>'btn_submit_customer','value'=>'true', 'content' => '<i class="fa fa-floppy-o" aria-hidden="true"></i> 
                                Create Statement');
                            echo form_button($data);
                         ?>  
                    </div>
                </div>      
            <?php form_close(); ?>
        </div>
        <div class="row">
            <div class="col-md-3"></div>
                <div class="col-md-6">
                   <h2 style="text-align:center">Trial Balance </h2>
                   <h3 style="text-align:center">
                        <?php echo $this->db->get_where('mp_langingpage', array('id' => 1))->result_array()[0]['companyname'] ;
                        ?>
                    </h3>
                   <h4 style="text-align:center">As of :  <?php echo $year; ?> <b>
                   </h4>
                   <h4 style="text-align:center">Created : <?php echo Date('Y-m-d'); ?> <b>
                   </h4>
                </div>
                <div class="col-md-3"></div>  
        </div>
        <div class="row">
            <div class="col-md-12">
                 <table class="table table-striped table-hover">
                     <thead>
                         <tr class="balancesheet-header">
                             <th class="col-md-10">ACCOUNT TITLE</th>
                             <th class="col-md-1">DEBIT</th>
                             <th class="col-md-1">CREDIT</th>
                         </tr>
                     </thead>
                     <tbody>
                        <?php echo $trail_records; ?>
                     </tbody>
                 </table>
            </div>
           
        </div>
            </div>
        </div>
    </div>
</section>
<!-- Bootstrap model  -->
<?php $this->load->view('bootstrap_model.php'); ?>
<!-- Bootstrap model  ends--> 