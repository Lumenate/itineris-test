<div class="post-thumbnail__wrapper">
  <div class="post-thumbnail">
    <div class="post-thumbnail__image">
      <img src="<?php echo e(get_field('featured_image', $post)['url']); ?>">
    </div>
    <div class="post-thumbnail__info">
      <span class="post-thumbnail__info-title"><?php echo e($post->post_title); ?></span>
      <span class="post-thumbnail__info-type"><?php echo e(get_field('course_type', $post)->name); ?></span>
      <span class="post-thumbnail__info-duration"><?php echo e(get_field('duration', $post)); ?></span>
    </div>
    <div class="post-thumbnail__campuses">
      <?php $__currentLoopData = get_field('Campuses', $post); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $campus): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

        <span class="post-thumbnail__campus"><?php echo e(strtoupper(explode(' ', $campus['campus']->name)[0][0] . (explode(' ', $campus['campus']->name)[1][0] ?? ''))); ?>

        <p class="post-thumbnail__campus-name"><?php echo e($campus['campus']->name); ?></p></span>
      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
  </div>
</div>
<?php /**PATH /private/var/www/wordpress/wp-content/themes/itineris-test/resources/views/partials/post_thumbnail.blade.php ENDPATH**/ ?>