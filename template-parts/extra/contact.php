<?php if (get_theme_mod('lm-floating-callout-display-m') === 'Yes') : ?>
  <button class="contact-us-btn font-s" data-modal="contactUsModal">
    <?php echo get_theme_mod('lm-contact-callout-button') ?>
  </button>
  <div class="contact-us-modal" id="contactUsModal">
    <h1 class="font-m">
      <?php echo get_theme_mod('lm-contact-callout-header') ?>
    </h1>
    <h2 class="font-s">
      <?php echo get_theme_mod('lm-contact-callout-subheader') ?>
    </h2>

    <form action="none" class='mt-3 modal-contact-form'>
      <div class="form-group col-12">
        <label for="name">
          <span class="icon">
            <i class="fa-solid fa-user"></i>
          </span>
          <span class="text">שם מלא:</span>
        </label>
        <input type="text">
      </div>
      <div class="form-group col-12 mt-1">
        <label for="name">
          <span class="icon">
            <i class="fa-solid fa-phone-flip"></i>
          </span>
          <span class="text">טלפון:</span>
        </label>
      </div>
      <div class="form-group col-12 mt-1">
        <select name="" id="">
          <option value="">בחר שירות</option>
          <?php
          $selectString = get_theme_mod('lm-aboutus-callout-form-select');
          $selectArray = array_map('trim', explode(',', $selectString));

          foreach ($selectArray as $selectItem) :
          ?>
            <option value="<?php echo $selectItem ?>"><?php echo $selectItem ?></option>
          <?php endforeach ?>
        </select>

      </div>
      <div class="row">
        <button class='form-btn mt-1'>
          <div class='btn-content font-m'>
            <span class='btn-text'>כן אני מעוניין בייעוץ עכשיו</span>
            <span class='btn-icon'><i class="fa-solid fa-arrow-left"></i></span>
          </div>
        </button>
      </div>

    </form>
  </div>
<?php endif ?>