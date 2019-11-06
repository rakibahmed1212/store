<section class="content">
    <div class="row">
        <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-yellow">
                <div class="inner">
                    <h3><label class="label "><?php echo number_format($cash_in_hand,2,'.','');?></label></h3>

                    <h4 class="paragraph">Cash in hand <?php echo $currency; ?></h4>
                </div>
                <div class="icon">
                    <i class="fa fa-money " aria-hidden="true"></i>
                </div>
                <a href="<?php echo base_url('statements/ledger_accounts');?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-aqua">
                <div class="inner">
                    <?php 
                    if($payables < 0)
                    {
                        $payables = '('.-(number_format($payables,2,'.','')).')';
                    }

                     ?>
                    <h3><label class="label"><?php echo $payables; ?></label></h3>

                    <h4 class="paragraph">Accounts Payables <?php echo $currency; ?></h4>
                </div>
                <div class="icon">
                    <i class="fa fa-hand-o-right" aria-hidden="true"></i>
                </div>
                 <a href="<?php echo base_url('statements/ledger_accounts');?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-red">
                <div class="inner">
                    <h3><label class="label"><?php echo $out_of_stock; ?></label></h3>
                    <h4 class="paragraph">Shortage items</h4>

                </div>
                <div class="icon">
                    <i class="fa fa-folder-o"></i>
                </div>
                <a href="<?php echo base_url('stock_alert_report');?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-green ">
                <div class="inner">
                    <h3><label class="label"><?php echo number_format($account_recieveble,2,'.','');?></label></h3>

                    <h4 class="paragraph">Accounts receivable <?php echo $currency; ?></h4>
                </div>
                <div class="icon">
                    <i class="fa fa-lemon-o"></i>
                </div>
                <a href="<?php echo base_url('statements/ledger_accounts');?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-blue">
                <div class="inner">
                    <h3><label class="label"><?php echo $customers_count; ?></label></h3>
                    <h4 class="paragraph">Customers</h4>

                </div>
                <div class="icon">
                    <i class="fa fa-user " aria-hidden="true"></i>
                </div>
               <a href="<?php echo base_url('customers');?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>        
        <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-red">
                <div class="inner">
                    <h3><label class="label"><?php echo $suppliers_count; ?></label></h3>
                    <h4 class="paragraph">Suppliers</h4>

                </div>
                <div class="icon">
                    <i class="fa fa-truck " aria-hidden="true"></i>
                </div>
               <a href="<?php echo base_url('supplier');?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-yellow">
                <div class="inner">
                    <h3><label class="label"><?php  echo number_format($expense_amount,2,'.',''); ?></label></h3>
                    <h4 class="paragraph">Expense This Month <?php echo $currency; ?></h4>

                </div>
                <div class="icon">
                   <i class="fa fa-rocket" aria-hidden="true"></i>
                </div>
               <a href="<?php echo base_url('expense');?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-aqua">
                <div class="inner">
                    <h3><label class="label"><?php  echo number_format($purchase_amount,2,'.',''); ?></label></h3>
                    <h4 class="paragraph">Purchases This Month <?php echo $currency; ?></h4>
                </div>
                <div class="icon">
                    <i class="fa fa-cubes"></i>
                </div>
               <a href="<?php echo base_url('purchase');?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
    </div>
    <div class="row tiles-bg-settings">
        <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-green">
                <div class="inner">
                    <h3><label class="label"><?php echo $product_Count;?></label></h3>

                    <h4 class="paragraph">Products in Stock</h4>
                </div>
                <div class="icon">
                    <i class="fa fa-shopping-basket" aria-hidden="true"></i>
                </div>
                <a href="<?php echo base_url('product/product_stock');?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-aqua">
                <div class="inner">
                    <h3><label class="label"><?php echo $Sales_today_count; ?></label></h3>
                    <h4 class="paragraph">Sales Today</h4>
                </div>
                <div class="icon">
                    <i class="fa fa-bar-chart "></i>
                </div>
                <a href="<?php echo base_url('sales_report');?>" class="small-box-footer"><span class="dashboard_text" > Sl <?php echo $sales_today_amount[0]; ?> | Ex <?php echo $sales_today_amount[1]; ?> | Pr <?php echo $sales_today_amount[0]-$sales_today_amount[1]; ?></a>
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-red">
                <div class="inner">
                    <h3><label class="label"><?php echo $Sales_month_count; ?></label></h3>

                    <h4 class="paragraph">Sales This Month</h4>
                </div>
                <div class="icon">
                    <i class="fa fa-area-chart "></i>
                </div>
                <a href="<?php echo base_url('sales_report');?>" class="small-box-footer"> <span class="dashboard_text" >  Sl <?php echo $sales_month_amount[0]; ?> | <span class="expense_das">Ex <?php echo $sales_month_amount[1]; ?></span>  | Pr <?php echo $sales_month_amount[0]-$sales_month_amount[1]; ?>  </span></a>
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-blue ">
                <div class="inner">
                    <h3><label class="label"><?php  echo number_format($total_retial_cost,2,'.',''); ?></label></h3>

                    <h4 class="paragraph">Worth of items in stock <?php echo $currency; ?></h4>
                </div>
                <div class="icon">
                    <i class="fa fa-dollar" aria-hidden="true"></i>
                </div>
                <a href="<?php echo base_url('product');?> " class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
    </div>
    <div class="row tiles-bg-settings">
        <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-red">
                <div class="inner">
                    <h3><label class="label"><?php  echo number_format($amount_return,2,'.',''); ?></label></h3>
                    <h4 class="paragraph">Return this month <?php echo $currency; ?></h4>
                </div>
                <div class="icon">
                    <i class="fa fa-fire" aria-hidden="true"></i>
                </div>
                <a href="<?php echo base_url('sales_report/return_item_report');?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-blue">
                <div class="inner">
                    <h3><label class="label"><?php  echo number_format($cash_in_bank,2,'.',''); ?></label></h3>

                    <h4 class="paragraph">Cash in Bank <?php echo $currency; ?></h4>
                </div>
                <div class="icon">
                    <i class="fa fa-bank" aria-hidden="true"></i>
                </div>
                 <a href="<?php echo base_url('statements/ledger_accounts');?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>        
        </div>
    </div>    
</section>
    <div class="row">
        <section class="col-lg-7 connectedSortable">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title"><i class="fa fa-money" aria-hidden="true"></i> Total Revenue & Expense This Year <?php echo $currency; ?></h3>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                        </button>
                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>
                <div class="box-body">
                    <div class="chart">
                        <canvas id="areaChart" style="height:250px"></canvas>
                    </div>
                </div>
            </div>
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">  <i class="fa fa-contao" aria-hidden="true"></i> Product Shortage List</h3>

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                        </button>
                        <button type="button" class="btn btn-box-tool " data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>
                <div class="box-body">
                    <div class="table-responsive">
                        <table class="table no-margin">
                            <thead>
                                <tr>
                                    <th>product</th>
                                    <th>Weight</th>
                                    <th>Quantity</th>
                                    <th>Type</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    if($product_alert_limit != "")
                                    {
                                      foreach($product_alert_limit as $product_alert)
                                      {
                                  ?>
                                <tr>                                     
                                        <td><span class="label label-warning"><?php echo $product_alert->product_name; ?></span></td>
                                        <td>
                                            <?php echo $product_alert->mg; ?>
                                        </td>
                                        <td><span class="label label-danger"><?php echo $product_alert->quantity; ?></span></td> 
                                        <td><span class="label label-danger"><?php echo $product_alert->type; ?></span></td>
                                    </tr>
                                    <?php

                                        }
                                      }
                                      else
                                      {
                                        echo "No Customer is Added Yet";
                                      }
                                    ?>
                            </tbody>
                        </table> 
                    </div>
                </div>
                <div class="box-footer clearfix">
                    <a href="<?php echo base_url('stock_alert_report');?> " class="btn btn-default btn-flat pull-right"><i class="fa fa-clipboard" aria-hidden="true"></i> View report</a>
                </div>
            </div>
        </section>
        <section class="col-lg-5 connectedSortable">
            <div class="box box-primary ">
                <div class="box-header with-border">
                    <h3 class="box-title">  <i class="ion ion-stats-bars "></i> Sales Profit This Year <?php echo $currency; ?> </h3>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                        </button>
                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>
                <div class="box-body">
                    <div class="chart">
                        <canvas id="lineChart" style="height:249px"></canvas>
                    </div>
                </div>
            </div>
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title"><i class="fa fa-medkit" aria-hidden="true"></i> 
                    Recently Added Products</h3>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                        </button>
                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <ul class="products-list product-list-in-box">
                        <?php
                          if($productList_records != NULL)
                          {
                            foreach($productList_records as $Obj_productList_records)
                            {
                          ?>
                            <li class="item">
                                <div class="product-img">
                                    <img src="<?php echo base_url(); ?>assets/img/tablet.png" alt="Product Image">
                                </div>
                                <div class="product-info">
                                    <a href="javascript:void(0)" class="product-title"><?php echo $Obj_productList_records->product_name; ?>
                                      <span class="label label-warning pull-right">Retail <?php echo $currency; ?> <?php echo $Obj_productList_records->retail; ?></span>
                                    </a>

                                    <span class="product-description"><?php echo $Obj_productList_records->description; ?></span>
                                </div>
                            </li>
                            <?php
                                }
                              }
                              else
                              {
                                echo "No Customer is Added Yet";
                              }
                            ?>
                    </ul>
                </div>
                <div class="box-footer text-center">
                    <a href="<?php echo base_url('product');?>" class="uppercase"><i class="fa fa-clipboard" aria-hidden="true"></i> View All Products</a>
                </div>
            </div>
        </section>
<section class="col-lg-12 connectedSortable">
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title"><i class="fa fa-truck" aria-hidden="true"></i> Latest Suppliers</h3>
            <div class="box-tools pull-right">
                <span class="label label-primary"><i class="fa fa-truck" aria-hidden="true"></i> <?php echo count($result_supplier); ?> New Suppliers</span>
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i>
                </button>
            </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body no-padding">
            <ul class="users-list clearfix">
                <?php
                  if($result_supplier != "")
                  {
                    foreach($result_supplier as $single_supplier)
                    {
                  ?>
                        <li>
                            <img width="100" height="100" src="<?php echo base_url(); ?>uploads/supplier/<?php echo $single_supplier->cus_picture; ?>" alt="User Image">
                            <a class="users-list-name" href="#"><?php echo $single_supplier->customer_name; ?></a>
                            <span class="users-list-date"><?php echo $single_supplier->cus_contact_1; ?></span>
                        </li>
                 <?php   
                    }
                      }
                      else
                      {
                        echo "No Supplier is added yet";
                      }
                  ?>
            </ul>
        </div>
        <div class="box-footer text-center">
            <a href="<?php echo base_url('supplier');?>" class="uppercase"><i class="fa fa-clipboard" aria-hidden="true"></i> View All Suppliers</a>
        </div>
    </div>
</section>
<section class="col-lg-12 connectedSortable">
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title"><i class="fa fa-truck" aria-hidden="true"></i> Latest Customer</h3>
            <div class="box-tools pull-right">
                <span class="label label-primary"><i class="fa fa-truck" aria-hidden="true"></i> <?php echo count($result_customer); ?> New Customer</span>
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i>
                </button>
            </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body no-padding">
            <ul class="users-list clearfix">
                <?php
                  if($result_customer != "")
                  {
                    foreach($result_customer as $single_supplier)
                    {
                  ?>
                        <li>
                            <img width="100" height="100" src="<?php echo base_url(); ?>uploads/customers/<?php echo $single_supplier->cus_picture; ?>" alt="User Image">
                            <a class="users-list-name" href="#"><?php echo $single_supplier->customer_name; ?></a>
                            <span class="users-list-date"><?php echo $single_supplier->cus_contact_1; ?></span>
                        </li>
                 <?php   

                    }
                      }
                      else
                      {
                        echo "No Customer is added yet";
                      }

                  ?>
            </ul>
        </div>
        <div class="box-footer text-center">
            <a href="<?php echo base_url('customers');?>" class="uppercase"><i class="fa fa-clipboard" aria-hidden="true"></i> View All Customer</a>
        </div>
    </div>
</section>
</div>
<?php 
    $this->load->view('script/dashboard_script.php');
 ?>