<div class="post-thumbnail__wrapper">
  <div class="post-thumbnail">
    <div class="post-thumbnail__image">
      <img src="{{ get_field('featured_image', $post)['url'] }}">
    </div>
    <div class="post-thumbnail__info">
      <span class="post-thumbnail__info-title">{{ $post->post_title }}</span>
      <span class="post-thumbnail__info-type">{{ get_field('course_type', $post)->name }}</span>
      <span class="post-thumbnail__info-duration">{{ get_field('duration', $post) }}</span>
    </div>
    <div class="post-thumbnail__campuses">
      @foreach(get_field('Campuses', $post) as $campus)
{{--    This logic better not be here, but i have to do it shorten the task. Also, it's not as elegant as should be, but it's at least one-lined TODO move it out   --}}
        <span class="post-thumbnail__campus">{{ strtoupper(explode(' ', $campus['campus']->name)[0][0] . (explode(' ', $campus['campus']->name)[1][0] ?? '')) }}
        <p class="post-thumbnail__campus-name">{{ $campus['campus']->name }}</p></span>
      @endforeach
    </div>
  </div>
</div>
