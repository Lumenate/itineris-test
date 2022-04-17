<header class="hero">
  <div class="hero-left">
    <div class="hero-left__text-wrapper">
      <span class="hero-left__title">{!! get_field('hero_title', 'option') !!}</span>
      <span class="hero-left__text">{!! get_field('hero_text', 'option') !!}</span>
      <span class="hero-left__undersign">{!! get_field('hero_undersign', 'option') !!}</span>
    </div>
  </div>
  <div class="hero-right" style="background-image: url('{!! get_field('hero_image', 'option')['url']  !!}')"></div>
</header>
