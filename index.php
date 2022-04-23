<?php
get_header();
?>

<style>
  :root {
	--primary-color: <?php echo get_theme_mod('lm-general-callout-primary')?>;
	--secondary-color: <?php echo get_theme_mod('lm-general-callout-accent')?>;
}
</style>

<aside class="extra-wrapper">
  <?php
  get_template_part('template-parts/extra/contact', null);

  get_template_part('template-parts/extra/share', null);

  get_template_part('template-parts/extra/share', 'quick');
  ?>
</aside>

<!-- Landing Section -->
<?php
get_template_part('template-parts/sections/landing/landing', null)
?>

<!-- Expertise Section -->
<?php
get_template_part('template-parts/sections/expertise/expertise')
?>

<!-- Why us Section -->
<?php
get_template_part('template-parts/sections/why-us/why-us', null);
?>

<!-- Mid Contact us Section -->
<?php
get_template_part('template-parts/sections/contact-us/contact-us', null);
?>

<!-- About us Section -->
<?php
get_template_part('template-parts/sections/about-us/about-us', null);
?>

<!-- Comments Section -->
<?php
get_template_part('template-parts/sections/comments/comments', null);
?>

<!-- Interested Section -->
<?php
get_template_part('template-parts/sections/interested/interested', null);
?>


<?php
get_footer();
?>