<?php if (get_theme_mod('lm-contactus-callout-display') === 'Yes') : ?>
  <section id="midContactUs">
    <div class="contact-us-info">
      <img src="<?php echo get_theme_mod('lm-contactus-callout-logo') ?>" alt="logo">
      <h1 class="font-l"><?php echo get_theme_mod('lm-contactus-callout-headline') ?></h1>
      <h2 class="font-sm b-200"><?php echo get_theme_mod('lm-contactus-callout-subhead') ?></h2>
    </div>
    <form action="none" class='mt-3 contactus-form'>
      <div class="row contactus-row-1 flex-wrap">
        <div class="form-group col-4">
          <label for="name">
            <span class="icon">
              <i class="fa-solid fa-user"></i>
            </span>
            <span class="text">שם מלא:</span>
          </label>
          <input type="text">
        </div>
        <div class="form-group col-4 form-group-middle">
          <label for="name">
            <span class="icon">
              <i class="fa-solid fa-phone-flip"></i>
            </span>
            <span class="text">טלפון:</span>
          </label>
        </div>
        <div class="form-group col-4">
          <select name="" id="">
            <option value="">בחר תחום יייעוץ</option>
            <?php
            $selectString = get_theme_mod('lm-aboutus-callout-form-select');
            $selectArray = array_map('trim', explode(',', $selectString));

            foreach ($selectArray as $selectItem) :
            ?>
              <option value="<?php echo $selectItem ?>"><?php echo $selectItem ?></option>
            <?php endforeach ?>
          </select>
        </div>
      </div>

      <div class="row mt-2 contactus-row-2 flex-wrap">
        <div class="form-group col-6 ">
          <label for="name">
            <span class="icon">
              <i class="fa-solid fa-envelope"></i>
            </span>
            <span class="text">מייל:</span>
          </label>
          <input type="text">
        </div>

        <button class='form-btn'>
          <div class='btn-content'>
            <span class='btn-text'>כן אני מעוניין בייעוץ עכשיו</span>
            <span class='btn-icon'><i class="fa-solid fa-arrow-left"></i></span>
          </div>
        </button>
      </div>
    </form>
  </section>
<?php endif ?>