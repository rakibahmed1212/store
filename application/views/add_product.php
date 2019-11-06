<section class="content">
    <div class="row">
        <div class="col-xs-12 col-md-12 col-sm-12">
            <div class="box " id="print-section">
                <div class="box-header">
                    <h3 class="box-title"><i class="fa fa-plus" aria-hidden="true"></i> 
                        Add New Product
                    </h3>
                </div>
                <?php
                    $attributes = array('id'=>'product_form','method'=>'post','class'=>'');
                ?>
                <?php echo form_open_multipart('product/add_product',$attributes); ?>
                <div class="box-body ">
                    <h4 class="purchase-heading"> <i class="fa fa-check-circle"></i> Product Info</h4>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <?php echo form_label('Product Name:'); ?>
                                <?php           
                                $data = array('class'=>'form-control input-lg','type'=>'text','name'=>'product_name','placeholder'=>'e.g Aquafina','reqiured'=>'');
                                echo form_input($data);         
                                ?> 
                            </div>
                            <small>Name of the product ? </small>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <?php echo form_label('SKU:'); ?>
                                <?php
                                        $data = array('class'=>'form-control input-lg','type'=>'text','name'=>'sku','placeholder'=>'e.g SKU','reqiured'=>'');
                                        echo form_input($data);
                                ?>
                            </div>
                            <small>Stock keeping unit ?  </small>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <?php echo form_label('Barcode:'); ?>
                                <?php
                                    $data = array('class'=>'form-control input-lg','type'=>'text','name'=>'barcode','placeholder'=>'e.g 000025444255658','reqiured'=>'');
                                        echo form_input($data);
                                ?>  
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <?php echo form_label('Type:'); ?>
                                <select class="form-control select2" name="type" id="category_id"  style="width: 100%;">
                                    <option value="Finished Products">
                                        Finished Products
                                    </option>
                                    <option value="Raw Product">
                                        Raw Product
                                    </option>
                                    <option value="Service">
                                        Service
                                    </option>
                                    <option value="Ticket">
                                        Ticket
                                    </option>
                                </select>  
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <?php echo form_label('Description:'); ?>
                                <textarea name="description" class="form-control" rows="5">
                                </textarea>  
                            </div>
                        </div>
                    </div>                    
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Upload item image:</label>
                                    <div class="input-group">
                                        <input type="file" name="medicine_picture" data-validate="required" class="form-control input-lg" data-message-required="Value Required" >
                                    </div>
                            </div>
                            <small>Product scan or captured image ?</small>
                        </div>
                    </div>
                </div>
                <div class="box-body">
                    <h4 class="purchase-heading"> <i class="fa fa-check-circle"></i> Grouping</h4>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label> Brand: <a onclick="show_modal_page('<?php echo base_url();?>product/popup/add_brand_model')" href="javascript:void(0)"> (add brand)</a></label>                
                                <select class="form-control select2" name="brand_id" id="category_id"  style="width: 100%;">
                                    <?php
                                    //category_names from mp_category table;
                                    if($brand != NULL)
                                    {       
                                        foreach ($brand as $single_brand)
                                        {
                                    ?>
                                            <option value="<?php echo $single_brand->id; ?>" >
                                                <?php echo $single_brand->name; ?> 
                                            </option>
                                    <?php
                                            }
                                        }
                                        else
                                        {
                                            echo "No Record Found";
                                        }
                                    ?>  
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label> Brand Sector: <a onclick="show_modal_page('<?php echo base_url();?>product/popup/add_brand_sector')" href="javascript:void(0)"> (add brand Sector)</a></label>                
                                <select class="form-control select2" name="sector_id" id="category_id"  style="width: 100%;">
                                    <?php
                                    //category_names from mp_category table;
                                    if($brandsector != NULL)
                                    {       
                                        foreach ($brandsector as $single_brandsector)
                                            {
                                    ?>
                                             <option value="<?php echo $single_brandsector->id; ?>" ><?php echo $single_brandsector->sector; ?> 
                                             </option>
                                    
                                    <?php
                                            }
                                        }
                                        else
                                        {
                                            echo "No Record Found";
                                        }
                                    ?>  
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label> Category: <a onclick="show_modal_page('<?php echo base_url();?>product/popup/add_category_model')" href="javascript:void(0)"> (add category)</a></label>                
                                <select class="form-control select2" name="category_id" id="category_id"  style="width: 100%;">
                                    <?php
                                    //category_names from mp_category table;
                                    if($catagory != NULL)
                                    {       
                                            foreach ($catagory as $obj_catagory_list){
                                    ?>
                                             <option value="<?php echo $obj_catagory_list->id; ?>" ><?php echo $obj_catagory_list->category_name; ?> </option>
                                    <?php
                                            }
                                        }
                                        else
                                        {
                                            echo "No Record Found";
                                        }
                                    ?>  
                                </select>
                            </div>
                        </div>
                    </div>                    
                </div>
                <div class="box-body bg-setting-product">
                    <h4 class="purchase-heading" ><i class="fa fa-check-circle"></i> Unit and Weights: </h4>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label> Unit Type: <a onclick="show_modal_page('<?php echo base_url();?>initilization/popup/add_unit_model')" href="javascript:void(0)"> (add unit)</a></label>  
                                    <select class="form-control input-lg" name="unit_symbol" ><?php
                                        //category_names from mp_category table;
                                        if($units != NULL)
                                        {       
                                            foreach ($units as $single_unit)
                                            {
                                    ?>
                                             <option value="<?php echo $single_unit->symbol; ?>" ><?php echo $single_unit->name.' '.$single_unit->symbol; ?> 
                                             </option>
                                    
                                    <?php
                                            }
                                        }
                                        else
                                        {
                                            echo "No Record Found";
                                        }
                                    ?>  
                                    </select>
                                    <small>Product weight measurement ? </small>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <?php echo form_label('Unit Weight: '); ?>
                                <?php               
                                $data = array('class'=>'form-control input-lg','type'=>'number','id'=>'','name'=>'product_mg','placeholder'=>'e.g 250','reqiured'=>'');
                                     echo form_input($data);         
                                 ?>  
                            </div>
                            <small>Single product weight ? </small>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <?php echo form_label('Net Weight: '); ?>
                                <?php
                                    $data = array('class'=>'form-control input-lg','type'=>'number','name'=>'net_weight','placeholder'=>'e.g 800','reqiured'=>'');
                                    echo form_input($data);
                                ?>  
                            </div>
                            <small>Total weight of packsize ? </small>
                        </div>
                    </div>                    
                </div>
                <div class="box-body">
                    <h4 class="purchase-heading" ><i class="fa fa-check-circle"></i> Stock / Expiry </h4>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <?php echo form_label('Minimum stock level required:'); ?>
                                <?php
                                        $data = array('class'=>'form-control input-lg','type'=>'number','name'=>'min_stock','placeholder'=>'e.g 20','reqiured'=>'');
                                        echo form_input($data);
                                ?>
                            </div>
                            <small>Product alert indicator level ? </small>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <?php echo form_label('Manufacturing Date:'); ?>
                                <?php
                                                    
                                    $data = array('class'=>'form-control input-lg','type'=>'date','id'=>'manufacturing','name'=>'manufacturing_date','placeholder'=>'e.g 12-08-2018','reqiured'=>'');
                                    echo form_input($data);         
                                ?>
                            </div>
                            <small>When manufactured ? </small>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                            <?php echo form_label('Expiry Date:'); ?>
                            <?php               
                                $data = array('class'=>'form-control input-lg','type'=>'date','id'=>'datepicker','name'=>'expiry_date','placeholder'=>'e.g 12-08-2018','reqiured'=>'');
                                echo form_input($data);         
                            ?>
                            </div>
                            <small>When it will be expired ? </small>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <?php echo form_label('Side Effects:'); ?>
                                <?php               
                                    $data = array('class'=>'form-control input-lg','type'=>'text','id'=>'sideeffects','name'=>'side_effects','placeholder'=>'e.g avoid childrens','reqiured'=>'');
                                    echo form_input($data);         
                                ?> 
                            </div>
                            <small>Side effects of product ? </small>
                        </div>
                    </div>                    
                </div>
                <div class="box-body bg-setting-product">
                    <h4 class="purchase-heading" > <i class="fa fa-check-circle"></i> Pricing/Cost </h4>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <?php echo form_label('Total Units:'); ?>
                                <?php               
                                $data = array('class'=>'form-control input-lg','type'=>'number','id'=>'total_units','name'=>'total_units','placeholder'=>'e.g 10','reqiured'=>'');
                                echo form_input($data);             
                                ?>
                            </div>
                             <small>How many packsize you ordered ? </small>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <?php echo form_label('Units Per Pack: '); ?>
                                <?php
                                        $data = array('class'=>'form-control input-lg','type'=>'number','id'=>'unit_per_pack','onkeyup'=>'calculate_quantity()','name'=>'packsize','placeholder'=>'e.g 12','reqiured'=>'');
                                        echo form_input($data);
                                ?>  
                            </div>
                            <small>Total number of products in each pack ? </small>
                        </div>                        
                        <div class="col-md-3">
                            <div class="form-group">
                                <?php echo form_label('Stock Quantity: '); ?>
                                <?php
                                    $data = array('class'=>'form-control input-lg','type'=>'number','id'=>'stock_quantity','name'=>'stock_quantity','reqiured'=>'');
                                    echo form_input($data);
                                ?>  
                            </div>
                            <small>Total quantity of single products ? </small>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                            <?php echo form_label('Unit Retail Price:'); ?>
                            <?php
                                $data = array('class'=>'form-control input-lg','type'=>'number','id'=>'unit_selling_price','onkeyup'=>'calculate_selling()','name'=>'retail','placeholder'=>'e.g 200','step'=>'.01','reqiured'=>'');
                                echo form_input($data);
                            ?>
                            </div>
                            <small>Single product retail price? </small>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <?php echo form_label('Unit Cost Price:'); ?>
                                <?php               
                                  $data = array('class'=>'form-control input-lg','type'=>'number','id'=>'unit_cost_price','name'=>'purchase','onkeyup'=>'calculate_cost()','placeholder'=>'e.g 150','step'=>'.01','reqiured'=>'');
                                echo form_input($data);         
                                ?>
                            </div>
                            <small>Price of single product purchased? </small>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <?php echo form_label('Pack Retail Price:'); ?>
                                <?php
                                        $data = array('class'=>'form-control input-lg','type'=>'number','id'=>'total_selling','name'=>'total_retail','placeholder'=>'e.g 12000','reqiured'=>'');
                                        echo form_input($data);
                                ?>
                            </div>
                            <small>Pack retial price? </small>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                            <?php echo form_label('Pack Purchase Price:'); ?>
                            <?php               
                                $data = array('class'=>'form-control input-lg','type'=>'number','id'=>'total_purchase','name'=>'total_cost','placeholder'=>'e.g 10800','reqiured'=>'');
                                echo form_input($data);         
                            ?>
                            </div>
                            <small>Pack purchase price? </small>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <?php echo form_label('Whole Sale Rate Per Pack:'); ?>
                                <?php
                                                    
                                    $data = array('class'=>'form-control input-lg','type'=>'number','id'=>'whole_sale_rate','name'=>'whole_sale','placeholder'=>'e.g 145','reqiured'=>'');
                                    echo form_input($data);         
                                ?>
                            </div>
                            <small>At what price you want to sell pack in whole sale market through <a href="<?php echo base_url('supply/create_new_supply') ?>">supply</a> option? </small>
                        </div> 
                    </div>                    
                    <div class="row">                     
                        <div class="col-md-3">
                            <div class="form-group">
                                <?php echo form_label('Sales Tax Per Unit (%) :'); ?>
                                <?php
                                        $data = array('class'=>'form-control input-lg','type'=>'number','name'=>'tax','value'=>'0','step'=>'.01','reqiured'=>'');
                                        echo form_input($data);
                                ?>
                            </div>
                            <small>Sales tax on each product in % ? </small>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <?php echo form_label('Unit Location in store: '); ?>
                                <?php
                                        $data = array('class'=>'form-control input-lg','type'=>'text','name'=>'location','placeholder'=>'Top right corner','reqiured'=>'');
                                        echo form_input($data);
                                ?>
                            </div>
                            <small>Location where you stored this product in store. </small>
                        </div>

                    </div>  
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <?php
                                    $data = array('class'=>'btn btn-info btn-flat btn-lg pull-right','type' => 'submit','name'=>'btn_submit_medicine','value'=>'true', 'content' => '<i class="fa fa-floppy-o" aria-hidden="true"></i> Save Product');
                                    
                                    echo form_button($data);
                                ?>
                            </div>
                        </div>
                    </div>                  
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Bootstrap model  -->
<?php $this->load->view('bootstrap_model.php'); ?>
<!-- Bootstrap model  ends-->

<!-- product calculations  -->
<script src="<?php echo base_url(); ?>assets/dist/js/backend/product.js"></script>