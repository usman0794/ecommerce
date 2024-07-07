<?php $__env->startSection('content'); ?>
					<input type="hidden" id="headerdata" value="<?php echo e(__('Arrival')); ?>">
					<div class="content-area">
						<div class="mr-breadcrumb">
							<div class="row">
								<div class="col-lg-12">
										<h4 class="heading"><?php echo e(__('Arrival')); ?></h4>
										<ul class="links">
											<li>
												<a href="<?php echo e(route('admin.dashboard')); ?>"><?php echo e(__('Dashboard')); ?> </a>
											</li>
											<li>
												<a href="javascript:;"><?php echo e(__('Home Page Settings')); ?> </a>
											</li>
											<li>
												<a href="<?php echo e(route('admin-arrival-index')); ?>"><?php echo e(__('Arrival Section')); ?></a>
											</li>
										</ul>
								</div>
							</div>
						</div>
						<div class="product-area">
							<div class="row">
								<div class="col-lg-12">
									<div class="mr-table allproduct">

                        				<?php echo $__env->make('alerts.admin.form-success', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

										<div class="table-responsive">
												<table id="geniustable" class="table table-hover dt-responsive" cellspacing="0" width="100%">
													<thead>
														<tr>
									                        <th><?php echo e(__('Image')); ?></th>
															<th><?php echo e(__('Up To Sale')); ?></th>
                                                            <th><?php echo e(__('Text')); ?></th>
									                        <th><?php echo e(__('Title')); ?></th>
                                                            <th><?php echo e(__('Options')); ?></th>
														</tr>
													</thead>
												</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

										<div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="modal1" aria-hidden="true">


										<div class="modal-dialog modal-dialog-centered" role="document">
										<div class="modal-content">
												<div class="submit-loader">
														<img  src="<?php echo e(asset('assets/images/'.$gs->admin_loader)); ?>" alt="">
												</div>
											<div class="modal-header">
											<h5 class="modal-title"></h5>
											<button type="button" class="close" data-dismiss="modal" aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											</div>
											<div class="modal-body">

											</div>
											<div class="modal-footer">
											<button type="button" class="btn btn-secondary" data-dismiss="modal"><?php echo e(__('Close')); ?></button>
											</div>
										</div>
										</div>
</div>






<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="modal1" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">

	<div class="modal-header d-block text-center">
		<h4 class="modal-title d-inline-block"><?php echo e(__('Confirm Delete')); ?></h4>
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
	</div>

      <!-- Modal body -->
      <div class="modal-body">
            <p class="text-center"><?php echo e(__('You are about to delete this Slider.')); ?></p>
            <p class="text-center"><?php echo e(__('Do you want to proceed?')); ?></p>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer justify-content-center">
            <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo e(__('Cancel')); ?></button>
            <form action="" class="d-inline delete-form" method="POST">
				<input type="hidden" name="_method" value="delete" />
				<input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
				<button type="submit" class="btn btn-danger"><?php echo e(__('Delete')); ?></button>
			</form>
      </div>

    </div>
  </div>
</div>



<?php $__env->stopSection(); ?>



<?php $__env->startSection('scripts'); ?>




    <script type="text/javascript">

(function($) {
		"use strict";

		var table = $('#geniustable').DataTable({
			   ordering: false,
               processing: true,
               serverSide: true,
               ajax: '<?php echo e(route('admin-arrival-datatables')); ?>',
               columns: [
                        { data: 'photo', name: 'photo' , searchable: false, orderable: false},
						{ data: 'up_sale', name: 'up_sale' },
						{ data: 'header', name: 'header' },
                        { data: 'title', name: 'title' },
            			{ data: 'action', searchable: false, orderable: false }
                     ],
                language : {
                	processing: '<img src="<?php echo e(asset('assets/images/'.$gs->admin_loader)); ?>">'
                },
				drawCallback : function( settings ) {
	    				$('.select').niceSelect();	
				}
            });


})(jQuery);

</script>


<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/demoroyal/public_html/test/online_store_api/project/resources/views/admin/arrival/index.blade.php ENDPATH**/ ?>