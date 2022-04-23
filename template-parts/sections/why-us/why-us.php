<?php if (get_theme_mod('lm-whyus-callout-display') === 'Yes') : ?>
  <section id="whyUs" style="background: url(<?php echo get_theme_mod('lm-whyus-callout-bgimg') ?>); background-size: cover;">
    <div class="reason-container">
      <h1 class="font-l"><?php echo get_theme_mod('lm-whyus-callout-headline') ?></h1>
      <ul class="reason-list">
        <?php
        $reasons = new WP_Query([
          'posts_per_page' => 99,
          'post_type' => 'reason'
        ]);


        while ($reasons->have_posts()) {
          $reasons->the_post();

          get_template_part('template-parts/sections/why-us/why-us', 'reason-item', [
            'header' => get_the_title(),

            'content' => get_the_content(),

            'icon' => get_field('reasons_icon')
          ]);
        } ?>

      </ul>
    </div>
    <aside class="side-filler">
      <pre class="quote font-l b-800"><?php echo get_theme_mod('lm-whyus-callout-quote') ?></pre>
      <div class="inspiring-img">
        <img src="<?php echo get_theme_mod('lm-whyus-callout-ins') ?>" alt="">
      </div>
    </aside>
  </section>
<?php endif ?>