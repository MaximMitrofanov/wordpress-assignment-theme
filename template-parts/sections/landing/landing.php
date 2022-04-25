<?php if (get_theme_mod('lm-landing-callout-display') === 'Yes') : ?>
  <style>
    .lm-landing-headline {
      color: <?php echo get_theme_mod('lm-landing-callout-headline-color') ?>
    }

    .lm-landing-subhead {
      color: <?php echo get_theme_mod('lm-landing-callout-subhead-color') ?>
    }
  </style>
  <section id="landing" style="background-image: url(<?php echo get_theme_mod('lm-landing-callout-bgimg') ?>); background-position: center; background-size: cover">
    <?php if (get_theme_mod('lm-landing-callout-phone-display') === 'Yes') {
      get_template_part('template-parts/extra/phone', null);
    }

    ?>
    <div class="website-info">
      <?php
      if (function_exists('the_custom_logo')) {
        $custom_logo_id = get_theme_mod('custom_logo');
        $logo = wp_get_attachment_image_src($custom_logo_id);
      }
      ?>
      <div class="website-logo">
        <img src="<?php echo $logo[0] ?>" alt="">
      </div>

      <div class="website-description">
        <h1 class="font-l b-400 lm-landing-headline"><?php echo get_theme_mod('lm-landing-callout-headline') ?></h1>
        <h2 class="font-m b-400 lm-landing-subhead"><?php echo get_theme_mod('lm-landing-callout-subhead') ?></h2>
      </div>

      <?php if (get_theme_mod('lm-landing-callout-display-form')  === 'Yes') : ?>
        <form action="none" class='mt-1 landing-form'>
          <div class="row flex-wrap">
            <div class="form-group col-6">
              <label for="name">
                <span class="icon">
                  <i class="fa-solid fa-user"></i>
                </span>
                <span class="text">שם מלא:</span>
              </label>
              <input type="text">
            </div>
            <div class="form-group col-6">
              <label for="name">
                <span class="icon">
                  <i class="fa-solid fa-phone-flip"></i>
                </span>
                <span class="text">טלפון:</span>
              </label>
              <input type="text">
            </div>
          </div>

          <div class="row">
            <button class='form-btn mt-3'>
              <div class='btn-content'>
                <span class='btn-text'>כן אני צריך ייעוץ עכשיו</span>
                <span class='btn-icon'><i class="fa-solid fa-arrow-left"></i></span>
              </div>
            </button>
          </div>
        </form>
      <?php endif ?>
    </div>
  </section>

<?php endif ?>