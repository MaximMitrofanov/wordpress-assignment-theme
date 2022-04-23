<style>
  .phone-label-color {
    color:<?php echo get_theme_mod('lm-landing-callout-phone-label-color') ?>
  }

  .phone-number-color {
    color:<?php echo get_theme_mod('lm-landing-callout-phone-number-color') ?>
  }
</style>
<div class="phone-wrapper">
  <div class="phone-info font-m">
    <i class="fa-solid fa-phone-volume fa-rotate-by phone-label-color" style="--fa-rotate-angle: 215deg"></i>
    <span class="phone-label phone-label-color b-700"><?php echo get_theme_mod('lm-landing-callout-phone-label') ?></span>
    <span class="phone-number phone-number-color b-200"><?php echo get_theme_mod('lm-landing-callout-phone-number') ?></span>
  </div>
</div>