		<a class="clear"><?php echo e(__('New Order(s).')); ?></a>
		<?php if(count($datas) > 0): ?>
		<a id="order-notf-clear" data-href="<?php echo e(route('order-notf-clear')); ?>" class="clear" href="javascript:;">
			<?php echo e(__('Clear All')); ?>

		</a>
		<ul>
		<?php $__currentLoopData = $datas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
			<li>
				<a href="<?php echo e(route('admin-order-show',$data->order_id)); ?>"> <i class="fas fa-newspaper"></i> <?php echo e(__('You Have a new order.')); ?></a>
			</li>
		<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

		</ul>

		<?php else: ?> 

		<a class="clear" href="javascript:;">
			<?php echo e(__('No New Notifications.')); ?>

		</a>

		<?php endif; ?><?php /**PATH C:\xampp\htdocs\genius-shop-single\project\resources\views/admin/notification/order.blade.php ENDPATH**/ ?>