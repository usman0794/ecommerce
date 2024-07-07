<?php $__env->startSection('css'); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<?php echo $__env->make('partials.global.common-header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>


<?php echo $__env->make('partials.global.subscription-popup', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>


<?php if($ps->slider == 1): ?>
    <div class="position-relative">
        <span class="nextBtn"></span>
        <span class="prevBtn"></span>
        <section class="home-slider owl-theme owl-carousel">
            <?php $__currentLoopData = $sliders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="banner-slide-item" style="background: url('<?php echo e(asset('assets/images/sliders/'.$data->photo)); ?>') no-repeat center center / cover ;">
                <div class="container">
                    <div class="banner-wrapper-item text-<?php echo e($data->position); ?>">
                        <div class="banner-content text-dark ">
                            <h5 class="subtitle text-dark slide-h5"><?php echo e($data->subtitle_text); ?></h5>

                            <h2 class="title text-dark slide-h5"><?php echo e($data->title_text); ?></h2>

                            <p class="slide-h5"><?php echo e($data->details_text); ?></p>

                            <a href="<?php echo e($data->link); ?>" class="cmn--btn "><?php echo e(__('SHOP NOW')); ?></a>
                        </div>
                    </div>
                </div>
            </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </section>
    </div>
<?php endif; ?>




 <!--==================== Category Section Start ====================-->
 <div class="full-row pt-0 mt-5 px-sm-5 pb-0">
    <div class="container-fluid">
        <div class="row row-cols-xxl-6 row-cols-md-3 row-cols-sm-2 row-cols-2 g-3 coustom-categories-banner-1 e-wrapper-absolute e-hover-image-zoom">
            <?php $__currentLoopData = $featured_categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $fcategory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="col">
                <div class="product type-product">
                    <div class="product-wrapper">
                        <div class="product-image">
                            <a href="<?php echo e(route('front.category',$fcategory->slug)); ?>"><img src="<?php echo e(asset('assets/images/categories/'.$fcategory->image)); ?>" alt="Product image"></a>
                        </div>
                        <div class="product-info">
                            <h6 class="product-title"><a href="<?php echo e(route('front.category',$fcategory->slug)); ?>"><?php echo e($fcategory->name); ?></a></h6>
                            <span class="strok">(<?php echo e($fcategory->products_count); ?>)</span>
                        </div>
                    </div>
                </div>
            </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>
</div>
<!--==================== Category Section End ====================-->





<?php if($ps->arrival_section == 1): ?>
       <!--==================== Best Month Offer Section Start ====================-->
       <div class="full-row px-sm-5">
        <div class="container-fluid">
            <div class="row justify-content-center wow fadeInUp animated" data-wow-delay="200ms" data-wow-duration="1000ms">
                <div class="col-xxl-5 col-xl-7 col-lg-9">
                    <div class="text-center mb-40">
                        <h2 class="text-center font-500 mb-4"><?php echo e(__('Best Month Offer')); ?></h2>
                        <span class="sub-title"><?php echo e(__('Erat pellentesque curabitur euismod dui etiam pellentesque rhoncus fermentum tristique lobortis lectus magnis. Consequat porta turpis maecenas')); ?></span>
                    </div>
                </div>
            </div>
            <div class="row g-4">
                <div class="col-xxl-6 col-md-12">
                    <div class="banner-wrapper hover-img-zoom banner-one custom-class-122 bg-light">
                        <div class="banner-image overflow-hidden transation"><img src="<?php echo e(asset('assets/images/arrival/'.$arrivals[0]['photo'])); ?>" alt="Banner Image"></div>
                        <div class="banner-content y-center position-absolute">
                            <div class="middle-content">
                                <span class="up-to-sale"><?php echo e($arrivals[0]['up_sale']); ?></span>
                                <h3><a href="<?php echo e($arrivals[0]['url']); ?>" class="text-dark text-decoration-none"><?php echo e($arrivals[0]['title']); ?></a></h3>
                                <a href="<?php echo e($arrivals[0]['url']); ?>" class="category"><?php echo e($arrivals[0]['header']); ?></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-3 col-md-6">
                    <div class="banner-wrapper hover-img-zoom banner-one custom-class-123">
                        <div class="banner-image overflow-hidden transation"><img src="<?php echo e(asset('assets/images/arrival/'.$arrivals[1]['photo'])); ?>" alt="Banner Image"></div>
                        <div class="banner-content position-absolute">
                            <div class="middle-content">
                                <span class="up-to-sale"><?php echo e($arrivals[1]['up_sale']); ?></span>
                                <h3><a href="<?php echo e($arrivals[1]['url']); ?>" class="text-dark text-decoration-none"><?php echo e($arrivals[1]['title']); ?></a></h3>
                                <a href="<?php echo e($arrivals[1]['url']); ?>" class="category"><?php echo e($arrivals[1]['header']); ?></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-3 col-md-6">
                    <div class="banner-wrapper hover-img-zoom banner-one custom-class-124 bg-light">
                        <div class="banner-image overflow-hidden transation"><img src="<?php echo e(asset('assets/images/arrival/'.$arrivals[2]['photo'])); ?>" alt="Banner Image"></div>
                        <div class="banner-content position-absolute">
                            <span class="up-to-sale"><?php echo e($arrivals[2]['up_sale']); ?></span>
                            <h3><a href="<?php echo e($arrivals[2]['url']); ?>" class="text-dark text-decoration-none"><?php echo e($arrivals[2]['title']); ?></a></h3>
                            <a href="<?php echo e($arrivals[2]['url']); ?>" class="category"><?php echo e($arrivals[2]['header']); ?></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--==================== Best Month Offer Section End ====================-->

<?php endif; ?>


<div id="extraData">
    <div class="text-center">
        <img  src="<?php echo e(asset('assets/images/'.$gs->loader)); ?>">
    </div>
</div>



    <?php if(isset($visited)): ?>
    <?php if($gs->is_cookie == 1): ?>
        <div class="cookie-bar-wrap show">
            <div class="container d-flex justify-content-center">
                <div class="col-xl-10 col-lg-12">
                    <div class="row justify-content-center">
                        <div class="cookie-bar">
                            <div class="cookie-bar-text">
                                <?php echo e(__('The website uses cookies to ensure you get the best experience on our website.')); ?>

                            </div>
                            <div class="cookie-bar-action">
                                <button class="btn btn-primary btn-accept">
                                <?php echo e(__('GOT IT!')); ?>

                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php endif; ?>
    <?php endif; ?>
<!-- Scroll to top -->
<a href="#" class="scroller text-white" id="scroll"><i class="fa fa-angle-up"></i></a>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
	<script>
		let checkTrur = 0;
		$(window).on('scroll', function(){

		if(checkTrur == 0){
			$('#extraData').load('<?php echo e(route('front.extraIndex')); ?>');
			checkTrur = 1;
		}
		});
        var owl = $('.home-slider').owlCarousel({
        loop: true,
        nav: false,
        dots: true,
        items: 1,
        autoplay: true,
        margin: 0,
        animateIn: 'fadeInDown',
        animateOut: 'fadeOutUp',
        mouseDrag: false,
    })
    $('.nextBtn').click(function() {
        owl.trigger('next.owl.carousel', [300]);
    })
    $('.prevBtn').click(function() {
        owl.trigger('prev.owl.carousel', [300]);
    })
	</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.front', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\genius-shop-single\project\resources\views/partials/theme/theme1.blade.php ENDPATH**/ ?>