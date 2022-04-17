<div class="content">
  @foreach(get_posts( ['post_type' => 'course', 'numberposts' => 9,] ) as $post)
    @include('partials/post_thumbnail', ['post' => $post])
  @endforeach
</div>
