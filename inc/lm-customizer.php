<?php
function lm_register_customize_sections($wp_customize)
{
  lm_floating_callout_section($wp_customize);
  lm_comments_callout_section($wp_customize);
  lm_aboutus_callout_section($wp_customize);
  lm_contactus_callout_section($wp_customize);
  lm_whyus_callout_section($wp_customize);
  lm_expertise_callout_section($wp_customize);
  lm_general_callout_section($wp_customize);
  lm_landing_callout_section($wp_customize);
  share_callout($wp_customize);
}


function lm_sanitize_number_absint($number, $setting)
{
  $number = absint($number);

  if ($number <= 0 or $number > 5) {
    return $setting->default;
  }

  return ($number ? $number : $setting->default);
}

/** GENERAL THEME */
function lm_general_callout_section($wp_customize)
{
  $wp_customize->add_section('lm-general-callout-section', [
    'title' => "General Site Theme",
    'priority' => 1,
  ]);

  // Primary Color
  $wp_customize->add_setting('lm-general-callout-primary', [
    'default' => '#da2fd5',
  ]);
  $wp_customize->add_control(new WP_Customize_Color_Control($wp_customize, 'lm-general-callout-primary-control', [
    'label' => 'Primary Color',
    'section' => 'lm-general-callout-section',
    'settings' => 'lm-general-callout-primary',
  ]));

  // Primary Color
  $wp_customize->add_setting('lm-general-callout-accent', [
    'default' => '#424242',
  ]);
  $wp_customize->add_control(new WP_Customize_Color_Control($wp_customize, 'lm-general-callout-accent-control', [
    'label' => 'Accent Color',
    'section' => 'lm-general-callout-section',
    'settings' => 'lm-general-callout-accent',
  ]));

  // Light Theme Color
  $wp_customize->add_setting('lm-general-callout-light', [
    'default' => '#f1f1f3',
  ]);
  $wp_customize->add_control(new WP_Customize_Color_Control($wp_customize, 'lm-general-callout-light-control', [
    'label' => 'Light Theme Color',
    'section' => 'lm-general-callout-section',
    'settings' => 'lm-general-callout-light',
  ]));
}

/** LANDING SECTION CALLOUT */
function lm_landing_callout_section($wp_customize)
{
  $wp_customize->add_section('lm-landing-callout-section', [
    'title' => "Landing Section",
    'priority' => 2,
  ]);

  // Display?
  $wp_customize->add_setting('lm-landing-callout-display', [
    'default' => 'Yes',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-landing-callout-display-control', [
    'label' => 'Display this section?',
    'section' => 'lm-landing-callout-section',
    'settings' => 'lm-landing-callout-display',
    'type' => 'select',
    'choices' => ['Yes' => 'Yes', 'No' => 'No']
  ]));


  // Headline
  $wp_customize->add_setting('lm-landing-callout-headline', [
    'default' => 'בואו לייעוץ והדרכת הורים',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-landing-callout-headline-control', [
    'label' => 'Headline',
    'section' => 'lm-landing-callout-section',
    'settings' => 'lm-landing-callout-headline',
  ]));


  // Headline Color
  $wp_customize->add_setting('lm-landing-callout-headline-color', [
    'default' => '#000',
  ]);
  $wp_customize->add_control(new WP_Customize_Color_Control($wp_customize, 'lm-landing-callout-headline-color-control', [
    'label' => 'Headline Color',
    'section' => 'lm-landing-callout-section',
    'settings' => 'lm-landing-callout-headline-color',
  ]));


  // Sub-Headline
  $wp_customize->add_setting('lm-landing-callout-subhead', [
    'default' => 'לייעוץ והדרכה בואו לחלוק אתי את הידע הניסיון וההצלחות הרבות שצברתי עם משפחות מרוצות',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-landing-callout-subhead-control', [
    'label' => 'Sub-Headline',
    'section' => 'lm-landing-callout-section',
    'settings' => 'lm-landing-callout-subhead',
    'type' => 'textarea'
  ]));

  // Sub-Color
  $wp_customize->add_setting('lm-landing-callout-subhead-color', [
    'default' => '#000',
  ]);
  $wp_customize->add_control(new WP_Customize_Color_Control($wp_customize, 'lm-landing-callout-subhead-color-control', [
    'label' => 'Sub-Headline Color',
    'section' => 'lm-landing-callout-section',
    'settings' => 'lm-landing-callout-subhead-color',
  ]));

  // Phone Display
  $wp_customize->add_setting('lm-landing-callout-phone-display', [
    'default' => 'Yes',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-landing-callout-phone-display-control', [
    'label' => 'Display phone bubble?',
    'section' => 'lm-landing-callout-section',
    'settings' => 'lm-landing-callout-phone-display',
    'type' => 'select',
    'choices' => ['Yes' => 'Yes', 'No' => 'No']
  ]));

  // Phone Label
  $wp_customize->add_setting('lm-landing-callout-phone-label', [
    'default' => 'חייגו:',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-landing-callout-phone-label-control', [
    'label' => 'Phone Label',
    'section' => 'lm-landing-callout-section',
    'settings' => 'lm-landing-callout-phone-label'
  ]));

  // Phone Label Color
  $wp_customize->add_setting('lm-landing-callout-phone-label-color', [
    'default' => '#fff',
  ]);
  $wp_customize->add_control(new WP_Customize_Color_Control($wp_customize, 'lm-landing-callout-phone-label-color-control', [
    'label' => 'Phone Label Color',
    'section' => 'lm-landing-callout-section',
    'settings' => 'lm-landing-callout-phone-label-color',
  ]));

  // Phone Number
  $wp_customize->add_setting('lm-landing-callout-phone-number', [
    'default' => '050-0000000',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-landing-callout-phone-number-control', [
    'label' => 'Phone Number',
    'section' => 'lm-landing-callout-section',
    'settings' => 'lm-landing-callout-phone-number'
  ]));
  // Phone Number Color
  $wp_customize->add_setting('lm-landing-callout-phone-number-color', [
    'default' => '#fff',
  ]);
  $wp_customize->add_control(new WP_Customize_Color_Control($wp_customize, 'lm-landing-callout-phone-number-color-control', [
    'label' => 'Phone Number Color',
    'section' => 'lm-landing-callout-section',
    'settings' => 'lm-landing-callout-phone-number-color',
  ]));

  // Display form
  $wp_customize->add_setting('lm-landing-callout-display-form', [
    'default' => 'Yes',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-landing-callout-display-form-control', [
    'label' => 'Display form in this section?',
    'section' => 'lm-landing-callout-section',
    'settings' => 'lm-landing-callout-display-form',
    'type' => 'select',
    'choices' => ['Yes' => 'Yes', 'No' => 'No']
  ]));

  // Background Image
  $wp_customize->add_setting('lm-landing-callout-bgimg', [
    'default' => get_theme_file_uri('/assets/images/bannerbg.png'),
  ]);
  $wp_customize->add_control(new WP_Customize_Image_Control($wp_customize, 'lm-landing-callout-bgimg-control', [
    'label' => 'Background Image',
    'section' => 'lm-landing-callout-section',
    'settings' => 'lm-landing-callout-bgimg',
  ]));
}

/** EXPERTISE SECTION */
function lm_expertise_callout_section($wp_customize)
{
  $wp_customize->add_section('lm-expertise-callout-section', [
    'title' => "Expertise Section",
    'priority' => 3,
  ]);

  // Display?
  $wp_customize->add_setting('lm-expertise-callout-display', [
    'default' => 'Yes',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-expertise-callout-display-control', [
    'label' => 'Display this section?',
    'section' => 'lm-expertise-callout-section',
    'settings' => 'lm-expertise-callout-display',
    'type' => 'select',
    'choices' => ['Yes' => 'Yes', 'No' => 'No']
  ]));

  // Expertise First Tab Header
  $wp_customize->add_setting('lm-expertise-callout-tab1-headline', [
    'default' => 'הורים לגיל הרך',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-expertise-callout-tab1-headline-control', [
    'label' => 'Tab #1 Headline',
    'section' => 'lm-expertise-callout-section',
    'settings' => 'lm-expertise-callout-tab1-headline',
  ]));
  // Expertise First Tab Icon

  // Expertise First Tab Content
  $wp_customize->add_setting('lm-expertise-callout-tab1-content', [
    'default' => 'לורם איפסום דולור סיט אמט, קונסקטורר אדיפיסינג אלית לורם איפסום דולור סיט אמט,
    קונסקטורר אדיפיסינג אלית. סת אלמנקום ניסי נון ניבאה. דס איאקוליס וולופטה דיאם.
    וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק. צש בליא,
    מנסוטו צמלח לביקו ננבי, צמוקו בלוקריה שיצמה ברורק. לורם איפסום דולור סיט אמט,
    קונסקטורר אדיפיסינג אלית. סת אלמנקום ניסי נון ניבאה. דס איאקוליס וולופטה דיאם.
    וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק.
    קונדימנטום קורוס בליקרה, נונסטי קלובר בריקנה סטום, לפריקך תצטריק לרטי.
  ',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-expertise-callout-tab1-content-control', [
    'label' => 'Tab #1 Content',
    'section' => 'lm-expertise-callout-section',
    'settings' => 'lm-expertise-callout-tab1-content',
    'type' => 'textarea'
  ]));

  // Expertise Second Tab Header
  $wp_customize->add_setting('lm-expertise-callout-tab2-headline', [
    'default' => 'הורים לילדים בגיל ביה"ס היסודי',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-expertise-callout-tab2-headline-control', [
    'label' => 'Tab #2 Headline',
    'section' => 'lm-expertise-callout-section',
    'settings' => 'lm-expertise-callout-tab2-headline',
  ]));
  // Expertise Second Tab Icon

  // Expertise Second Tab Content
  $wp_customize->add_setting('lm-expertise-callout-tab2-content', [
    'default' => 'קונסקטורר אדיפיסינג אלית. סת אלמנקום ניסי נון ניבאה. דס איאקוליס וולופטה דיאם.
    וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק.
    קונדימנטום קורוס בליקרה, נונסטי קלובר בריקנה סטום, לפריקך תצטריק לרטי.',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-expertise-callout-tab2-content-control', [
    'label' => 'Tab #2 Content',
    'section' => 'lm-expertise-callout-section',
    'settings' => 'lm-expertise-callout-tab2-content',
    'type' => 'textarea'
  ]));
  // Expertise Third Tab Header
  $wp_customize->add_setting('lm-expertise-callout-tab3-headline', [
    'default' => 'הורים לילדים בגיל ההתבגרות',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-expertise-callout-tab3-headline-control', [
    'label' => 'Tab #3 Headline',
    'section' => 'lm-expertise-callout-section',
    'settings' => 'lm-expertise-callout-tab3-headline',
  ]));
  // Expertise Third Tab Icon

  // Expertise Third Tab Content
  $wp_customize->add_setting('lm-expertise-callout-tab3-content', [
    'default' => 'קונסקטורר אדיפיסינג אלית. סת אלמנקום ניסי נון ניבאה. דס איאקוליס וולופטה דיאם.
    וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק.
    וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק.
    וסטיבולום אט דולור, קראס אגת לקטוס וואל אאוגו וסטיבולום סוליסי טידום בעליק.
    קונדימנטום קורוס בליקרה, נונסטי קלובר בריקנה סטום, לפריקך תצטריק לרטי.',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-expertise-callout-tab3-content-control', [
    'label' => 'Tab #3 Content',
    'section' => 'lm-expertise-callout-section',
    'settings' => 'lm-expertise-callout-tab3-content',
    'type' => 'textarea'
  ]));
}

/** WHY US SECTION */
function lm_whyus_callout_section($wp_customize)
{
  $wp_customize->add_section('lm-whyus-callout-section', [
    'title' => "Why Us Section",
    'priority' => 4,
  ]);

  // Display?
  $wp_customize->add_setting('lm-whyus-callout-display', [
    'default' => 'Yes',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-whyus-callout-display-control', [
    'label' => 'Display this section?',
    'section' => 'lm-whyus-callout-section',
    'settings' => 'lm-whyus-callout-display',
    'type' => 'select',
    'choices' => ['Yes' => 'Yes', 'No' => 'No']
  ]));

  // Headline
  $wp_customize->add_setting('lm-whyus-callout-headline', [
    'default' => 'למה דווקא לבחור בנו?',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-whyus-callout-headline-control', [
    'label' => 'Headline',
    'section' => 'lm-whyus-callout-section',
    'settings' => 'lm-whyus-callout-headline',
  ]));

  // BG IMG
  $wp_customize->add_setting('lm-whyus-callout-bgimg', [
    'default' => get_theme_file_uri('/assets/images/reasonsbg.png'),
  ]);
  $wp_customize->add_control(new WP_Customize_Image_Control($wp_customize, 'lm-whyus-callout-bgimg-control', [
    'label' => 'Background Image',
    'section' => 'lm-whyus-callout-section',
    'settings' => 'lm-whyus-callout-bgimg',
  ]));

  // Quote
  $wp_customize->add_setting('lm-whyus-callout-quote', [
    'default' => '“הצטרפו אלי למסע של שינוי,
    והפכו את ההורות שלכם לחוויה הרבה יותר טובה”
  ',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-whyus-callout-quote-control', [
    'label' => 'Quote',
    'section' => 'lm-whyus-callout-section',
    'settings' => 'lm-whyus-callout-quote',
    'type' => 'textarea'
  ]));

  // Inspiring IMG
  $wp_customize->add_setting('lm-whyus-callout-ins', [
    'default' => get_theme_file_uri('/assets/images/happyfamily.png'),
  ]);
  $wp_customize->add_control(new WP_Customize_Image_Control($wp_customize, 'lm-whyus-callout-ins-control', [
    'label' => 'Inspiring Image',
    'section' => 'lm-whyus-callout-section',
    'settings' => 'lm-whyus-callout-ins',
  ]));
}

/** CONTACT US SECTION */
function lm_contactus_callout_section($wp_customize)
{
  $wp_customize->add_section('lm-contactus-callout-section', [
    'title' => "Contact Us Section",
    'priority' => 5,
  ]);

  // Display?
  $wp_customize->add_setting('lm-contactus-callout-display', [
    'default' => 'Yes',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-contactus-callout-display-control', [
    'label' => 'Display this section?',
    'section' => 'lm-contactus-callout-section',
    'settings' => 'lm-contactus-callout-display',
    'type' => 'select',
    'choices' => ['Yes' => 'Yes', 'No' => 'No']
  ]));

  // Logo
  $wp_customize->add_setting('lm-contactus-callout-logo', [
    'default' => get_theme_file_uri('/assets/images/logo-placeholder.png'),
  ]);
  $wp_customize->add_control(new WP_Customize_Image_Control($wp_customize, 'lm-contactus-callout-logo-control', [
    'label' => 'Logo',
    'section' => 'lm-contactus-callout-section',
    'settings' => 'lm-contactus-callout-logo',
  ]));

  // Headline
  $wp_customize->add_setting('lm-contactus-callout-headline', [
    'default' => 'להדרכה הנכונה ולייעוץ הנכון להורות שלכם',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-contactus-callout-headline-control', [
    'label' => 'Headline',
    'section' => 'lm-contactus-callout-section',
    'settings' => 'lm-contactus-callout-headline',
  ]));


  // Headline Color
  $wp_customize->add_setting('lm-contactus-callout-headline-color', [
    'default' => '#fff',
  ]);
  $wp_customize->add_control(new WP_Customize_Color_Control($wp_customize, 'lm-contactus-callout-headline-color-control', [
    'label' => 'Headline Color',
    'section' => 'lm-contactus-callout-section',
    'settings' => 'lm-contactus-callout-headline-color',
  ]));


  // Sub-Headline
  $wp_customize->add_setting('lm-contactus-callout-subhead', [
    'default' => 'השאירו פרטים ואחזור אליכם בהקדם עם כל הפרטים',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-contactus-callout-subhead-control', [
    'label' => 'Sub-Headline',
    'section' => 'lm-contactus-callout-section',
    'settings' => 'lm-contactus-callout-subhead',
  ]));

  // Sub-Color
  $wp_customize->add_setting('lm-contactus-callout-subhead-color', [
    'default' => '#fff',
  ]);
  $wp_customize->add_control(new WP_Customize_Color_Control($wp_customize, 'lm-contactus-callout-subhead-color-control', [
    'label' => 'Sub-Headline Color',
    'section' => 'lm-contactus-callout-section',
    'settings' => 'lm-contactus-callout-subhead-color',
  ]));
}

/**ABOUT US SECTION */
function lm_aboutus_callout_section($wp_customize)
{
  $wp_customize->add_section('lm-aboutus-callout-section', [
    'title' => "About Us Section",
    'priority' => 6,
  ]);

  // Display?
  $wp_customize->add_setting('lm-aboutus-callout-display', [
    'default' => 'Yes',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-aboutus-callout-display-control', [
    'label' => 'Display this section?',
    'section' => 'lm-aboutus-callout-section',
    'settings' => 'lm-aboutus-callout-display',
    'type' => 'select',
    'choices' => ['Yes' => 'Yes', 'No' => 'No']
  ]));

  // Side Image
  $wp_customize->add_setting('lm-aboutus-callout-sideimg', [
    'default' => get_theme_file_uri('/assets/images/potrait.jpg'),
  ]);
  $wp_customize->add_control(new WP_Customize_Cropped_Image_Control($wp_customize, 'lm-aboutus-callout-sideimg-control', [
    'label' => 'Side Image',
    'section' => 'lm-aboutus-callout-section',
    'settings' => 'lm-aboutus-callout-sideimg',
    'width' => 500,
    'height' => 800
  ]));

  // Headline
  $wp_customize->add_setting('lm-aboutus-callout-headline', [
    'default' => 'קצת עליי',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-aboutus-callout-headline-control', [
    'label' => 'Headline',
    'section' => 'lm-aboutus-callout-section',
    'settings' => 'lm-aboutus-callout-headline',
  ]));


  // Content
  $wp_customize->add_setting('lm-aboutus-callout-content', [
    'default' => '...',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-aboutus-callout-content-control', [
    'label' => 'Content',
    'section' => 'lm-aboutus-callout-section',
    'settings' => 'lm-aboutus-callout-content',
    'type' => 'textarea'
  ]));

  // Content Background Color
  $wp_customize->add_setting('lm-aboutus-callout-contentbg-color', [
    'default' => '#fef8fe',
  ]);
  $wp_customize->add_control(new WP_Customize_Color_Control($wp_customize, 'lm-aboutus-callout-contentbg-color-control', [
    'label' => 'Content Background Color',
    'section' => 'lm-aboutus-callout-section',
    'settings' => 'lm-aboutus-callout-contentbg-color',
  ]));

  // Form Select
  $wp_customize->add_setting('lm-aboutus-callout-form-select', [
    'default' => 'דוגמא, דוגמא, דוגמא',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-aboutus-callout-form-select-control', [
    'label' => 'Form Select Options (Splitted by comma ",")',
    'section' => 'lm-aboutus-callout-section',
    'settings' => 'lm-aboutus-callout-form-select',
  ]));
}

/**COMMENTS SECTION */
function lm_comments_callout_section($wp_customize)
{
  $wp_customize->add_section('lm-comments-callout-section', [
    'title' => 'Comments Section',
    'priority' => 7
  ]);

  // Display?
  $wp_customize->add_setting('lm-comments-callout-display', [
    'default' => 'Yes',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-comments-callout-display-control', [
    'label' => 'Display this section?',
    'section' => 'lm-comments-callout-section',
    'settings' => 'lm-comments-callout-display',
    'type' => 'select',
    'choices' => ['Yes' => 'Yes', 'No' => 'No']
  ]));

  // Headline
  $wp_customize->add_setting('lm-comments-callout-headline', [
    'default' => 'הצטרפו למאות לקוחות מרוצים',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-comments-callout-headline-control', [
    'label' => 'Headline',
    'section' => 'lm-comments-callout-section',
    'settings' => 'lm-comments-callout-headline',
  ]));

  // Amount Per Page
  $wp_customize->add_setting('lm-comments-callout-amount', [
    'sanitize_callback' => 'lm_sanitize_number_absint',
    'default' => 4,
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-comments-callout-amount-control', [
    'label' => 'Comments Per Tab (min: 1, max: 5)',
    'section' => 'lm-comments-callout-section',
    'settings' => 'lm-comments-callout-amount',
    'type' => 'number',
    'input_attrs' => [
      'min' => 1,
      'max' => 5
    ]
  ]));
}

/**Floating */
function lm_floating_callout_section($wp_customize)
{
  $wp_customize->add_section('lm-floating-callout-section', [
    'title' => 'Floating Items',
    'priority' => 8
  ]);

  // Display?
  $wp_customize->add_setting('lm-floating-callout-display-sq', [
    'default' => 'Yes',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-floating-callout-display-sq-control', [
    'label' => 'Display quick share?',
    'section' => 'lm-floating-callout-section',
    'settings' => 'lm-floating-callout-display-sq',
    'type' => 'select',
    'choices' => ['Yes' => 'Yes', 'No' => 'No']
  ]));
  $wp_customize->add_setting('lm-floating-callout-display-s', [
    'default' => 'Yes',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-floating-callout-display-s-control', [
    'label' => 'Display share drawer?',
    'section' => 'lm-floating-callout-section',
    'settings' => 'lm-floating-callout-display-s',
    'type' => 'select',
    'choices' => ['Yes' => 'Yes', 'No' => 'No']
  ]));
  $wp_customize->add_setting('lm-floating-callout-display-m', [
    'default' => 'Yes',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-floating-callout-display-m-control', [
    'label' => 'Display contact modal?',
    'section' => 'lm-floating-callout-section',
    'settings' => 'lm-floating-callout-display-m',
    'type' => 'select',
    'choices' => ['Yes' => 'Yes', 'No' => 'No']
  ]));
  $wp_customize->add_setting('lm-floating-callout-display-gt', [
    'default' => 'Yes',
  ]);
  $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-floating-callout-display-gt-control', [
    'label' => 'Display go top button?',
    'section' => 'lm-floating-callout-section',
    'settings' => 'lm-floating-callout-display-gt',
    'type' => 'select',
    'choices' => ['Yes' => 'Yes', 'No' => 'No']
  ]));

  
}

function share_callout($wp_customize)
{
  $share_options = [
    ['linkedin', 'LinkedIn'],
    ['ytb', 'YouTube'],
    ['fb', 'Facebook'],
    ['twt', 'Twitter'],
    ['pinterest', 'Pinterest'],
  ];
  // Section
  $wp_customize->add_section('lm-share-callout-section', [
    'title' => 'Share Callout',
    'priority' => 9,
    'description' => 'Here you can change what share options are available if any'
  ]);

  // All share options
  foreach ($share_options as [$key, $label]) {
    $wp_customize->add_setting('lm-share-callout-' . $key, [
      'default' => true
    ]);
  }


  // All share controls
  foreach ($share_options as [$key, $label]) {
    $wp_customize->add_control(
      new WP_Customize_Control(
        $wp_customize,
        'lm-share-callout-' . $key . '-control',
        [
          'label' => $label,
          'section' => 'lm-share-callout-section',
          'settings' => 'lm-share-callout-' . $key,
          'type'  => 'checkbox'
        ]
      )
    );
  }
}

add_action('customize_register', 'lm_register_customize_sections');
