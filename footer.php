<?php
if (function_exists('the_custom_logo')) {
  $custom_logo_id = get_theme_mod('custom_logo');
  $logo = wp_get_attachment_image_src($custom_logo_id);
}
?>
<footer style="min-height: 100px; background-color: #000; display: flex; justify-content: center; align-items: center">
  <div class=" watermark" style='width: 10%; text-align: center'>
    <img src="<?php echo $logo[0] ?>" alt="">
  </div>
</footer>


<?php
wp_footer();
?>
</body>

</html>