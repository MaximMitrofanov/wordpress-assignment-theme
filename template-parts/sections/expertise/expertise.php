<?php if (get_theme_mod('lm-expertise-callout-display') === 'Yes') : ?>
  <section id="expertise">
    <div class="expertise-group" data-tabs="expertiseExpand">
      <button class="expertise-cube active" data-tab-btn>
        <h1 class="font-m b-400"><?php echo get_theme_mod('lm-expertise-callout-tab1-headline') ?></h1>
        <!-- svg/image -->
      </button>

      <button class="expertise-cube" data-tab-btn>
        <h1 class="font-m b-400"><?php echo get_theme_mod('lm-expertise-callout-tab2-headline') ?></h1>
        <!-- svg/image -->
      </button>

      <button class="expertise-cube" data-tab-btn>
        <h1 class="font-m b-400"><?php echo get_theme_mod('lm-expertise-callout-tab3-headline') ?></h1>
        <!-- svg/image -->
      </button>
    </div>
    <div id="expertiseExpand" class="expertise-content expanded font-s" data-expandable>
      <div class="tabs">
        <div class="slider">
          <div class="tab-item" data-tab-item>
            <?php echo get_theme_mod('lm-expertise-callout-tab1-content') ?>
          </div>
          <div class="tab-item" data-tab-item>
            <?php echo get_theme_mod('lm-expertise-callout-tab2-content') ?>
          </div>
          <div class="tab-item" data-tab-item>
            <?php echo get_theme_mod('lm-expertise-callout-tab3-content') ?>
          </div>
        </div>
      </div>
    </div>
  </section>
<?php endif ?>