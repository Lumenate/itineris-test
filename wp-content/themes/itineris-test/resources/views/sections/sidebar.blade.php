@include('partials.filter', ['filter_name' =>'campus', 'taxonomy' => get_terms([
    'taxonomy' => \App\Taxonomies\CampusTaxonomy::NAME,
    'hide_empty' => false,
    'orderby' => 'date',
    'order' => 'DESC',
])])
@include('partials.filter', ['filter_name' =>'course type', 'taxonomy' => get_terms([
    'taxonomy' => \App\Taxonomies\CourseTypeTaxonomy::NAME,
    'hide_empty' => false,
    'orderby' => 'date',
    'order' => 'DESC',
])])
<button class="filters-apply-btn">Apply now</button>
