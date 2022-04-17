

<?php echo $__env->make('sections.hero', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

<div class="content-wrapper">
  <?php if (! empty(trim($__env->yieldContent('sidebar')))): ?>
    <aside class="sidebar">
      <?php echo $__env->yieldContent('sidebar'); ?>
    </aside>
  <?php endif; ?>

  <main id="main" class="main">
    <?php echo $__env->yieldContent('content'); ?>
  </main>
</div>



<?php /**PATH /private/var/www/wordpress/wp-content/themes/itineris-test/resources/views/layouts/app.blade.php ENDPATH**/ ?>