<?php
require get_stylesheet_directory() . '/inc/lm-customizer.php';


$version = wp_get_theme()->get('Version');

function lm_theme_support()
{
  add_theme_support('title-tag');
  add_theme_support('custom-logo', [
    'header-text' => ['site-title', 'site-description'],
    'flex-height' => true,
    'flex-width' => true
  ]);
}
add_action('after_setup_theme', 'lm_theme_support');

function lm_register_styles()

{
  global $version;
  wp_enqueue_style('lm-comments', get_theme_file_uri('/assets/css/sections/comments.css'), ['lm-styles'], $version, 'all');
  wp_enqueue_style('lm-why-us', get_theme_file_uri('/assets/css/sections/why-us.css'), ['lm-styles'], $version, 'all');
  wp_enqueue_style('lm-landing-style', get_theme_file_uri('/assets/css/sections/landing.css'), ['lm-styles'], $version, 'all');
  wp_enqueue_style('lm-interested-style', get_theme_file_uri('/assets/css/sections/interested.css'), ['lm-styles'], $version, 'all');
  wp_enqueue_style('lm-expertise-style', get_theme_file_uri('/assets/css/sections/expertise.css'), ['lm-styles'], $version, 'all');
  wp_enqueue_style('lm-contact-us-style', get_theme_file_uri('/assets/css/sections/contact-us.css'), ['lm-styles'], $version, 'all');
  wp_enqueue_style('lm-about-us-style', get_theme_file_uri('/assets/css/sections/about-us.css'), ['lm-styles'], $version, 'all');
  wp_enqueue_style('lm-carousel', get_theme_file_uri('/assets/css/misc/carousel.css'), ['lm-styles'], $version, 'all');
  wp_enqueue_style('lm-form', get_theme_file_uri('/assets/css/misc/form.css'), ['lm-styles'], $version, 'all');
  wp_enqueue_style('lm-generic', get_theme_file_uri('/assets/css/misc/generic.css'), ['lm-styles'], $version, 'all');
  wp_enqueue_style('lm-styles', get_theme_file_uri('/assets/css/main.css'), ['google-fonts-assistant'], $version, 'all');
  wp_enqueue_style('google-fonts-assistant', '//fonts.googleapis.com/css2?family=Assistant:wght@200;300;400;500;600;700;800&display=swap', [], $version, 'all');
  wp_enqueue_style('font-awesome', '//cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css', [], $version, 'all');
}
add_action('wp_enqueue_scripts', 'lm_register_styles');

function lm_register_scripts()
{
  global $version;
  wp_enqueue_script('lm-carousel', get_theme_file_uri('/assets/js/carousel.js'), ['lm-main'], $version, 'all', true);
  wp_enqueue_script('lm-index', get_theme_file_uri('/build/index.js'), ['j-query'], $version, 'all', true);
  wp_enqueue_script('j-query', '//code.jquery.com/jquery-3.6.0.min.js', [], '3.6.0', 'all', true);
}
add_action('wp_enqueue_scripts', 'lm_register_scripts');



// // Add Phone callout section to admin panel
// function lm_phone_callout($wp_customize)
// {
//   $wp_customize->add_section('lm-phone-callout-section', [
//     'title' => 'Phone Bubble'
//   ]);

//   $wp_customize->add_setting('lm-phone-callout-label', [
//     'default' => 'חייגו:',
//   ]);


//   $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-phone-callout-label-control', [
//     'label' => 'Label',
//     'section' => 'lm-phone-callout-section',
//     'settings' => 'lm-phone-callout-label'
//   ]));


//   $wp_customize->add_setting('lm-phone-callout-number', [
//     'default' => '050-0000000',
//   ]);


//   $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-phone-callout-number-control', [
//     'label' => 'Number',
//     'section' => 'lm-phone-callout-section',
//     'settings' => 'lm-phone-callout-number'
//   ]));
// }

// add_action('customize_register', 'lm_phone_callout');

// // Add contact callout section to admin panel
// function lm_contact_callout($wp_customize)
// {
//   // Section
//   $wp_customize->add_section('lm-contact-callout-section', [
//     'title' => 'Contact Callout'
//   ]);

//   // Header setting
//   $wp_customize->add_setting('lm-contact-callout-header', [
//     'default' => 'מעוניינים בייעוץ ראשוני?',
//   ]);

//   // Sub-Header setting
//   $wp_customize->add_setting('lm-contact-callout-subheader', [
//     'default' => 'אל תחכו, השאירו פרטים ואחזור בהקדם:',
//   ]);

//   // Button setting
//   $wp_customize->add_setting('lm-contact-callout-button', [
//     'default' => 'צור קשר',
//   ]);

//   // Header control
//   $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-contact-callout-header-control', [
//     'label' => 'Header',
//     'section' => 'lm-contact-callout-section',
//     'settings' => 'lm-contact-callout-header'
//   ]));

//   // Sub-Header control
//   $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-contact-callout-subheader-control', [
//     'label' => 'Sub-Header',
//     'section' => 'lm-contact-callout-section',
//     'settings' => 'lm-contact-callout-subheader'
//   ]));

//   // Button control
//   $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'lm-contact-callout-button-control', [
//     'label' => 'Button',
//     'section' => 'lm-contact-callout-section',
//     'settings' => 'lm-contact-callout-button'
//   ]));
// }

// add_action('customize_register', 'lm_contact_callout');



///////////////// Admin Dashboard Settings

/* Remove Default Blog Dashboard Items **/

function remove_default_post_type()
{
  remove_menu_page('edit.php');
  remove_menu_page('edit-comments.php');
  remove_menu_page('edit.php?post_type=page');
}
add_action('admin_menu', 'remove_default_post_type');

function remove_default_post_type_menu_bar($wp_admin_bar)
{
  $wp_admin_bar->remove_node('new-post');
  $wp_admin_bar->remove_node('new-page');
}
add_action('admin_bar_menu', 'remove_default_post_type_menu_bar', 999);

function remove_draft_widget()
{
  remove_meta_box('dashboard_quick_press', 'dashboard', 'side');
}
add_action('wp_dashboard_setup', 'remove_draft_widget', 999);

/* End Remove Default Blog Dashboard Items **/


/** Add Recommendations Post Type */
function lm_post_types()
{
  register_post_type('recommendations', [
    'show_in_rest' => true,
    'public' => true,
    'archive' => false,
    'labels' => [
      'capability_type' => 'recommendations',
      'map_meta_cap' => true,
      'name' => 'Recommendations',
      'add_new' => 'New Recommendation',
      'add_new_item' => 'Add New Recommendation',
      'edit_item' => 'Edit Recommendation',
      'all_items' => 'All Recommendations',
      'singular_name' => 'Recommendation'
    ],
    'description' => 'Adding recommendations from customers inside the page',
    'menu_icon' => 'dashicons-heart',
  ]);
  register_post_type('reason', [
    'archive' => false,
    'show_in_rest' => true,
    'public' => true,
    'labels' => [
      'name' => 'Reasons',
      'add_new' => 'New Reason',
      'add_new_item' => 'Add New Reason',
      'edit_item' => 'Edit Reason',
      'all_items' => 'All Reason',
      'singular_name' => 'Reason'
    ],
    'description' => 'Adding reasons to choose us for customers to view on front page',
    'menu_icon' => 'dashicons-list-view',
  ]);
}
add_action('init', 'lm_post_types');


/** Enable SVG Support */
function cc_mime_types($mimes)
{
  $mimes['svg'] = 'image/svg+xml';
  return $mimes;
}
add_filter('upload_mimes', 'cc_mime_types');
