<style type="text/css">
  .select2-container--default .select2-selection--single, .select2-selection .select2-selection--single
  {
    border:none;
    border-bottom: 1px solid #ccc;
    background-color: transparent;
  }
</style>
<section class="content">
    <div class="box" id="print-section">
        <div class="box-body">
            <?php
                $attributes = array('id'=>'open_balance_accounts','method'=>'post','class'=>'');
            ?>
            <?php echo form_open('bank/add_cheque',$attributes); ?>
                <div class="row no-print invoice" >
                    <h4  class="purchase-heading" > <i class="fa fa-check-circle"></i>  Create Cheque <span class="pull-right"> <i class="fa fa-calendar"></i> Cheque Date : <?php
                      $data = array('class'=>' cheque-fields','type'=>'date','name'=>'deposit_date','reqiured'=>'');
                      echo form_input($data);
                    ?></span>
                        <small>Use to create a cheques</small>
                    </h4>
                    <div class="col-md-12 cheque-area-border" style="background:url('<?php echo base_url('assets/img/cheque.jpg'); ?>');">
                      <span class="pull-right bank-balance" >Available Balance:  <?php echo $this->db->get_where('mp_langingpage', array('id' => 1))->result_array()[0]['currency'] ;?>  <span id="available_balance">0</span> </span> 
                      
                      <div class="form-group cheque-setting-top">
                           <label><i class="fa fa-check-circle"></i> Bank</label>
                              <select onchange="find_available(this.value)" name="bank_id" class="form-control select2 cheque-fields">
                                    <option value="0" >Select bank</option>
                                    <?php 
                                      foreach ($bank_list as $single_bank) 
                                      {

                                    ?>
                                         <option value="<?php echo $single_bank->id ?>">
                                          <?php echo $single_bank->bankname.' | '.$single_bank->branch.' | '.$single_bank->branchcode.' | '.$single_bank->title.' | '.$single_bank->accountno;  ?>
                                          </option>
                                    <?php   
                                      }
                                    ?>   
                              </select>
                        </div>
                        <div class="form-group ">
                            <?php echo form_label(''); ?>
                            <label><i class="fa fa-check-circle"></i> Cheque No</label>
                             <?php
                                $data = array('class'=>'form-control cheque-fields','type'=>'text','name'=>'cheque_id','reqiured'=>'');
                              echo form_input($data);
                            ?>
                        </div>                       
                        <div class="form-group">
                              <label><i class="fa fa-check-circle"></i> Payee Name</label>
                              <select name="payee_id" class="form-control select2 cheque-fields">
                                    <?php 
                                      foreach ($customer_list as $customer) 
                                      {
                                    ?>
                                         <option value="<?php echo $customer->id ?>">
                                          <?php echo 'Name '.$customer->customer_name.' | Email '.$customer->cus_email.' | Contact '.$customer->cus_contact_1; ?>
                                          </option>
                                    <?php   
                                      }
                                    ?>   
                              </select>
                        </div>   
                        <div class="form-group">
                            <label><i class="fa fa-check-circle"></i> Account</label>
                              <select name="account_head" class="form-control select2 cheque-fields">
                                    <?php 
                                      foreach ($head_list as $head) 
                                      {
                                    ?>
                                         <option value="<?php echo $head->id ?>">
                                          <?php echo 'Name : '.$head->name.' | Nature : '.$head->nature.' | Type : '.$head->type; ?>
                                          </option>
                                    <?php   
                                      }
                                    ?>   
                              </select>
                        </div>                         
                        <div class="form-group">
                            <label><i class="fa fa-check-circle"></i> Amount</label>
                            <?php
                                $data = array('class'=>'form-control cheque-fields ','type'=>'number','name'=>'amount','onkeyup'=>'check_amount(this.value)','step'=>'.01','placeholder'=>'e.g 4000');
                                echo form_input($data);
                            ?>
                        </div>                                         
                        <div class="form-group">
                            <label><i class="fa fa-check-circle"></i> Narration</label>
                             <?php
                                $data = array('class'=>'form-control cheque-fields ','type'=>'text','name'=>'description','reqiured'=>'','placeholder'=>'e.g Paid to Supplier Pencil for his payables.');
                                echo form_input($data);
                            ?>
                            <?php
                                $data = array('class'=>'','type'=>'hidden','id'=>'currrent_amount','name'=>'currrent_amount','value'=>'');
                                echo form_input($data);
                            ?>
                        </div>                    
                    </div>  
                    <div class="form-group ">
                      <?php
                          $data = array('class'=>'btn btn-info btn-submit-cheque btn-lg pull-right ','type' => 'submit','name'=>'btn_submit_balance','value'=>'true','disabled'=>'disabled','content' => '<i class="fa fa-floppy-o" aria-hidden="true"></i> 
                              Save Cheque ');
                          echo form_button($data);
                       ?>  
                    </div>
                </div>  
                <?php form_close(); ?>
        </div>
    </div>
</section>
<!-- cheque calculations  -->
<?php 
    $this->load->view('script/cheque_script.php');
 ?>