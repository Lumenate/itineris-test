<?php echo $__env->make('partials.filter', ['filter_name' =>'campus', 'taxonomy' => get_terms([
    'taxonomy' => \App\Taxonomies\CampusTaxonomy::NAME,
    'hide_empty' => false,
    'orderby' => 'date',
    'order' => 'DESC',
])], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php echo $__env->make('partials.filter', ['filter_name' =>'course type', 'taxonomy' => get_terms([
    'taxonomy' => \App\Taxonomies\CourseTypeTaxonomy::NAME,
    'hide_empty' => false,
    'orderby' => 'date',
    'order' => 'DESC',
])], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<button class="filters-apply-btn">Apply now</button>
<?php /**PATH /private/var/www/wordpress/wp-content/themes/itineris-test/resources/views/sections/sidebar.blade.php ENDPATH**/ ?>