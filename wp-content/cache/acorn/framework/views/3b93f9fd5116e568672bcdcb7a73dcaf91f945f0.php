<header class="hero">
  <div class="hero-left">
    <div class="hero-left__text-wrapper">
      <span class="hero-left__title"><?php echo get_field('hero_title', 'option'); ?></span>
      <span class="hero-left__text"><?php echo get_field('hero_text', 'option'); ?></span>
      <span class="hero-left__undersign"><?php echo get_field('hero_undersign', 'option'); ?></span>
    </div>
  </div>
  <div class="hero-right" style="background-image: url('<?php echo get_field('hero_image', 'option')['url']; ?>')"></div>
</header>
<?php /**PATH /private/var/www/wordpress/wp-content/themes/itineris-test/resources/views/sections/hero.blade.php ENDPATH**/ ?>