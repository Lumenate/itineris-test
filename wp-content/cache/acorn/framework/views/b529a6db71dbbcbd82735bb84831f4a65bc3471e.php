<div class="filter">
  <div class="filter-title__wrapper">
    <span class="filter-title"><?php echo __("Filter by") . " $filter_name"; ?></span>
  </div>
  <div class="filter__terms">
    <?php if($filter_name == 'course type'): ?>
      <div class="filter__item">
        <input class="filter__item-check" type="checkbox" value="" id="filter-course_type-all">
        <label class="filter__item-label" for="filter-course_type-all">
          All
        </label>
      </div>
    <?php endif; ?>
    <?php $__currentLoopData = $taxonomy; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $term): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      <div class="filter__item">
        <input class="filter__item-check" type="checkbox" value="" id="filter-<?php echo e($term->taxonomy); ?>-<?php echo e($term->term_id); ?>">
        <label class="filter__item-label" for="filter-<?php echo e($term->taxonomy); ?>-<?php echo e($term->term_id); ?>">
          <?php echo e($term->name); ?>

        </label>
      </div>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
  </div>
</div>
<?php /**PATH /private/var/www/wordpress/wp-content/themes/itineris-test/resources/views/partials/filter.blade.php ENDPATH**/ ?>