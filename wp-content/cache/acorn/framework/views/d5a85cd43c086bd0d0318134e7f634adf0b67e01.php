<div class="content">
  <?php $__currentLoopData = get_posts( ['post_type' => 'course', 'numberposts' => 9,] ); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <?php echo $__env->make('partials/post_thumbnail', ['post' => $post], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</div>
<?php /**PATH /private/var/www/wordpress/wp-content/themes/itineris-test/resources/views/partials/content.blade.php ENDPATH**/ ?>