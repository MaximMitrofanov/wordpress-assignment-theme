<?php if (get_theme_mod('lm-aboutus-callout-display') === 'Yes') : ?>
  <section id="aboutUs">
    <div class="about-us-details-wrapper">
      <div class="about-us-details" style='background: <?php echo get_theme_mod('lm-aboutus-callout-contentbg-color') ?>'>
        <h1 class="font-l"><?php echo get_theme_mod('lm-aboutus-callout-headline') ?></h1>
        <p class="font-s"><?php echo get_theme_mod('lm-aboutus-callout-content') ?></p>
      </div>

    </div>
    <div class="about-us-img">
      <img src="<?php echo wp_get_attachment_url(get_theme_mod('lm-aboutus-callout-sideimg')) ?>" alt="">
    </div>
  </section>
<?php endif ?>