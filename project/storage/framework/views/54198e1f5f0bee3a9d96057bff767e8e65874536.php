<?php if(Auth::guard('admin')->check()): ?>

<option data-href="" value="">Select Sub Category</option>
<?php $__currentLoopData = $cat->subs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sub): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<option data-href="<?php echo e(route('admin-childcat-load',$sub->id)); ?>" value="<?php echo e($sub->id); ?>"><?php echo e($sub->name); ?></option>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

<?php else: ?>

<option data-href="" value="">Select Sub Category</option>
<?php $__currentLoopData = $cat->subs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sub): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<option data-href="<?php echo e(route('vendor-childcat-load',$sub->id)); ?>" value="<?php echo e($sub->id); ?>"><?php echo e($sub->name); ?></option>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>
<?php /**PATH /home/demoroyal/public_html/test/online_store_api/project/resources/views/load/subcategory.blade.php ENDPATH**/ ?>