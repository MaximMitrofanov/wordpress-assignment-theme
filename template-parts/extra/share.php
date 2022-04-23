<?php
$linkedin = get_theme_mod('lm-share-callout-linkedin');
$ytb = get_theme_mod('lm-share-callout-ytb');
$fb = get_theme_mod('lm-share-callout-fb');
$twt = get_theme_mod('lm-share-callout-twt');
$pinterest = get_theme_mod('lm-share-callout-pinterest');

if ($linkedin || $ytb || $fb || $twt || $pinterest) : ?>
  <div class="share-wrapper">
    <button class="avatar share font-s" data-drawer="shareDrawer">
      <i class="fa-solid fa-share-nodes"></i>
    </button>
    <div class="share-options-wrapper">
      <div class="share-options-drawer" id="shareDrawer">

        <?php if ($linkedin) {
          get_template_part('template-parts/extra/share', 'avatar', [
            'class' => 'linkedin',
            'icon' => 'fa-brands fa-linkedin-in'
          ]);
        }
        ?>

        <?php if ($ytb) {
          get_template_part('template-parts/extra/share', 'avatar', [
            'class' => 'ytb',
            'icon' => 'fa-brands fa-youtube'
          ]);
        }
        ?>

        <?php if ($fb) {
          get_template_part('template-parts/extra/share', 'avatar', [
            'class' => 'fb',
            'icon' => 'fa-brands fa-facebook-f'
          ]);
        }
        ?>

        <?php if ($twt) {
          get_template_part('template-parts/extra/share', 'avatar', [
            'class' => 'twt',
            'icon' => 'fa-brands fa-twitter'
          ]);
        }
        ?>
        <?php if ($pinterest) {
          get_template_part('template-parts/extra/share', 'avatar', [
            'class' => 'pinterest',
            'icon' => 'fa-brands fa-pinterest-p'
          ]);
        }
        ?>
      </div>
    </div>
  </div>
<?php endif; ?>