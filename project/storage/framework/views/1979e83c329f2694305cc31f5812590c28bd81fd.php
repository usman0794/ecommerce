


<?php $__env->startSection('styles'); ?>

<style type="text/css">
.img-upload #image-preview {
  background-size: unset !important;
  }
</style>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

<div class="content-area">
              <div class="mr-breadcrumb">
                <div class="row">
                  <div class="col-lg-12">
                      <h4 class="heading"><?php echo e(__('Payment Informations')); ?></h4>
                    <ul class="links">
                      <li>
                        <a href="<?php echo e(route('admin.dashboard')); ?>"><?php echo e(__('Dashboard')); ?> </a>
                      </li>
                      <li>
                        <a href="javascript:;"><?php echo e(__('Payment Settings')); ?></a>
                      </li>
                      <li>
                        <a href="<?php echo e(route('admin-gs-payments')); ?>"><?php echo e(__('Payment Informations')); ?></a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="add-product-content1 social-links-area">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="product-description">
                      <div class="body-area">
                        <div class="gocover" style="background: url(<?php echo e(asset('assets/images/'.$gs->admin_loader)); ?>) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
                        <form action="<?php echo e(route('admin-gs-update-payment')); ?>" id="geniusform" method="POST" enctype="multipart/form-data">
                          <?php echo csrf_field(); ?>

                        <?php echo $__env->make('alerts.admin.form-both', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>


                        <div class="row add_lan_tab justify-content-center">
                          <div class="col-lg-12">
                           
                            <div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
          
                              
        
      
      
                              <div class="tab-pane fade show active" id="nav-setting" role="tabpanel" aria-labelledby="nav-setting-tab">
                                <div class="row justify-content-center">
                                  <div class="col-lg-4">
                                    <div class="left-area">
                                      <h4 class="heading">
                                          <?php echo e(__('Guest Checkout')); ?>

                                      </h4>
                                    </div>
                                  </div>
                                  <div class="col-lg-6">
                                      <div class="action-list">
                                          <select class="process select droplinks <?php echo e($gs->guest_checkout == 1 ? 'drop-success' : 'drop-danger'); ?>">
                                            <option data-val="1" value="<?php echo e(route('admin-gs-status',['guest_checkout',1])); ?>" <?php echo e($gs->guest_checkout == 1 ? 'selected' : ''); ?>><?php echo e(__('Activated')); ?></option>
                                            <option data-val="0" value="<?php echo e(route('admin-gs-status',['guest_checkout',0])); ?>" <?php echo e($gs->guest_checkout == 0 ? 'selected' : ''); ?>><?php echo e(__('Deactivated')); ?></option>
                                          </select>
                                        </div>
                                  </div>
                                </div>
          
                                  <div class="row justify-content-center">
                                    <div class="col-lg-4">
                                      <div class="left-area">
                                          <h4 class="heading"><?php echo e(__('Currency Format')); ?> *</h4>
                                      </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <select name="currency_format" required="">
                                            <option value="0" <?php echo e($gs->currency_format == 0 ? 'selected' : ''); ?>><?php echo e(__('Before Price')); ?></option>
                                            <option value="1" <?php echo e($gs->currency_format == 1 ? 'selected' : ''); ?>><?php echo e(__('After Price')); ?></option>
                                        </select>
                                    </div>
                                  </div>
          
                                  <div class="row justify-content-center">
                                    <div class="col-lg-4">
                                      <div class="left-area">
                                          <h4 class="heading">
                                            <?php echo e(__('Decimal Separator')); ?> *
                                          </h4>
                                      </div>
                                    </div>
                                    <div class="col-lg-6">
                                      <select name="decimal_separator" class="input-field" required>
                                        <option value="">
                                          <?php echo e(__('Select Decimal Separator')); ?>

                                        </option>
                                        <option value="." <?php echo e($gs->decimal_separator == '.' ? 'selected' : ''); ?>>
                                          <?php echo e(__('Dot(.)')); ?>

                                        </option>
                                        <option value="," <?php echo e($gs->decimal_separator == ',' ? 'selected' : ''); ?>>
                                          <?php echo e(__('Comma(,)')); ?>

                                        </option>
                                      </select>
                                    </div>
                                  </div>

                                  <div class="row justify-content-center">
                                    <div class="col-lg-4">
                                      <div class="left-area">
                                          <h4 class="heading">
                                            <?php echo e(__('Thousand Separator')); ?> *
                                          </h4>
                                      </div>
                                    </div>
                                    <div class="col-lg-6">
                                      <select name="thousand_separator" class="input-field" required>
                                        <option value="">
                                          <?php echo e(__('Select Thousand Separator')); ?>

                                        </option>
                                        <option value="." <?php echo e($gs->thousand_separator == '.' ? 'selected' : ''); ?>>
                                          <?php echo e(__('Dot(.)')); ?>

                                        </option>
                                        <option value="," <?php echo e($gs->thousand_separator == ',' ? 'selected' : ''); ?>>
                                          <?php echo e(__('Comma(,)')); ?>

                                        </option>
                                      </select>
                                    </div>
                                  </div>

                                  <div class="row justify-content-center">
                                    <div class="col-lg-4">
                                      <div class="left-area">
                                          <h4 class="heading"><?php echo e(__('Withdraw Fee')); ?> *
                                            </h4>
                                      </div>
                                    </div>
                                    <div class="col-lg-6">
                                      <input type="text" class="input-field" placeholder="<?php echo e(__('Withdraw Fee')); ?>" name="withdraw_fee" value="<?php echo e($gs->withdraw_fee); ?>" required="">
                                    </div>
                                  </div>
          
                                  <div class="row justify-content-center">
                                    <div class="col-lg-4">
                                      <div class="left-area">
                                          <h4 class="heading"><?php echo e(__('Withdraw Charge(%)')); ?> *
                                            </h4>
                                      </div>
                                    </div>
                                    <div class="col-lg-6">
                                      <input type="text" class="input-field" placeholder="<?php echo e(__('Withdraw Charge(%)')); ?>" name="withdraw_charge" value="<?php echo e($gs->withdraw_charge); ?>" required="">
                                    </div>
                                  </div>
                              </div>
                            </div>
                          </div>
                        </div>



                        <div class="row justify-content-center">
                          <div class="col-lg-4">
                            <div class="left-area">

                            </div>
                          </div>
                          <div class="col-lg-6">
                            <button class="addProductSubmit-btn" type="submit"><?php echo e(__('Save')); ?></button>
                          </div>
                        </div>
                     </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\genius-shop-single\project\resources\views/admin/generalsetting/paymentsinfo.blade.php ENDPATH**/ ?>