<?php if (get_theme_mod('lm-comments-callout-display') === 'Yes') : ?>
  <?php
  $comments = new WP_Query([
    'posts_per_page' => 99,
    'post_type' => 'recommendations'
  ]);
  ?>

  <section id="comments">
    <h1 class="font-l b-600 color-primary italic"><?php echo get_theme_mod('lm-comments-callout-headline') ?></h1>
    <div class="comments-carousel-wrapper" data-carousel-wrapper>
      <div id="commentsCarousel" class="comments-carousel" data-carousel-slider>

        <div data-carousel-track data-elements-per-tab='<?php echo get_theme_mod('lm-comments-callout-amount') ?>'>
          <?php while ($comments->have_posts()) : ?>
            <?php $comments->the_post() ?>
            <div class="carousel-item comment">
              <div class="comment-content">
                <h1 class="font-s b-400 color-primary m-0 mt-1"><?php the_title() ?></h1>
                <?php the_content() ?>
              </div>
            </div>
          <?php endwhile ?>
        </div>

      </div>
      <div class="comments-carousel-arrow arrow-right" data-carousel-arrow="right">
        <i class="fa-solid fa-arrow-right-long"></i>
      </div>
      <div class="comments-carousel-arrow arrow-left" data-carousel-arrow="left">
        <i class="fa-solid fa-arrow-left-long"></i>
      </div>
    </div>
  </section>
<?php endif ?>