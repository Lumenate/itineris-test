<div class="filter">
  <div class="filter-title__wrapper">
    <span class="filter-title">{!! __("Filter by") . " $filter_name" !!}</span>
  </div>
  <div class="filter__terms">
    @if($filter_name == 'course type')
      <div class="filter__item">
        <input class="filter__item-check" type="checkbox" value="" id="filter-course_type-all">
        <label class="filter__item-label" for="filter-course_type-all">
          All
        </label>
      </div>
    @endif
    @foreach($taxonomy as $term)
      <div class="filter__item">
        <input class="filter__item-check" type="checkbox" value="" id="filter-{{ $term->taxonomy }}-{{ $term->term_id }}">
        <label class="filter__item-label" for="filter-{{ $term->taxonomy }}-{{ $term->term_id }}">
          {{ $term->name }}
        </label>
      </div>
    @endforeach
  </div>
</div>
