<?php if (get_theme_mod('lm-floating-callout-display-sq') === 'Yes') : ?>
<div class="quick-share">
  <?php
  get_template_part('template-parts/extra/share', 'avatar', [
    'class' => 'messenger',
    'icon' => 'fa-brands fa-facebook-messenger'
  ]);
  ?>
  <?php
  get_template_part('template-parts/extra/share', 'avatar', [
    'class' => 'whatsapp',
    'icon' => 'fa-brands fa-whatsapp'
  ]);
  ?>
</div>
<?php endif?>