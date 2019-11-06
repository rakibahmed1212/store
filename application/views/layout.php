
<section class="content">
    <div class="box box-info">
        <div class="box-header text-center">
            <h3 class="box-title"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> <?php echo $title1; ?></h3>
        </div>
        <div class="box-body">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <?php
					$Contact_attributes = array('id'=>'layout_form','method'=>'post','class'=>'form-horizontal');
    			?>
                    <?php echo form_open('Layout/details',$Contact_attributes); ?>
                        <!--.form group -->
                        <div class="form-group">
                            <?php echo form_label('Company Name:'); ?>
                            <?php
            					$data = array('class'=>'form-control input-lg','type'=>'text', 'value'=>$company_record[0]->companyname,'name'=>'company_name');
            					echo form_input($data);
            				?>
                        </div>
                        <div class="form-group">
                            <?php echo form_label('Company description:'); ?>
                            <?php
            					$data = array('class'=>'form-control input-lg','type'=>'text','value'=>$company_record[0]->companydescription,'name'=>'company_description');
            						echo form_input($data);
            				?>
                        </div>
                        <div class="form-group">
                            <?php echo form_label('Company Keywords:'); ?>
                            <?php
            					$data = array('class'=>'form-control input-lg','type'=>'text','value'=>$company_record[0]->companykeywords,'name'=>'company_keywords');
            					echo form_input($data);
            				?>
                        </div>
                        <div class="form-group">
                            <?php echo form_label('Currency :'); ?>
                            <?php
            					$data = array('class'=>'form-control input-lg','type'=>'text', 'value'=>$company_record[0]->currency ,'name'=>'company_currency');
            					echo form_input($data);
            				 ?>
                        </div>
                        <div class="form-group">
                            <?php echo form_label('Language :'); ?>
                            <?php
            					$data = array('class'=>'form-control input-lg','type'=>'text', 'value'=>$company_record[0]->language ,'name'=>'company_language');
            					echo form_input($data);
            				 ?>
                        </div> 
                        <div class="form-group">
                            <?php echo form_label('Theme primary:'); ?>
                            <a class="btn btn-default btn-sm " href="<?php echo base_url('layout/default_settings'); ?>"> Reset default 
                            </a>
                             <br>
                             <br>
                            <div class="input-group my-colorpicker2">
                              <?php
                                $data = array('class'=>'form-control my-colorpicker3 input-lg','type'=>'text', 'value'=>$company_record[0]->primarycolor,'name'=>'company_primary_color');
                                echo form_input($data);
                              ?>
                              <div class="input-group-addon">
                                <i></i>
                              </div>
                            </div>
                        </div>                        
                        <div class="form-group">
                            <?php echo form_label('Theme primary hover :'); ?>
                            <div class="input-group my-colorpicker2">
                              <?php
                                $data = array('class'=>'form-control my-colorpicker3 input-lg','type'=>'text', 'value'=>$company_record[0]->theme_pri_hover,'name'=>'company_primary_hover');
                                echo form_input($data);
                              ?>
                              <div class="input-group-addon">
                                <i></i>
                              </div>
                            </div>
                        </div>  
                        <div class="form-group">
                            <?php echo form_label('Verified invoice Expire time (in days) :'); ?>
                                <?php
                					$data = array('class'=>'form-control input-lg','type'=>'number', 'value'=>$company_record[0]->expirey ,'name'=>'company_expire_time');
                					echo form_input($data);
                				 ?>
                        </div>
                        <div class="form-group">
                            <?php
                                $data = array('class'=>'btn btn-info btn-flat btn-lg','type' => 'submit','name'=>'save_company_details','value'=>'true', 'content' => '<i class="fa fa-floppy-o" aria-hidden="true"></i> Save Company details');
                                echo form_button($data);
                             ?>
                        </div>
                    <?php echo form_close(); ?>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>
</section>