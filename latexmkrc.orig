$cleanup_includes_cusdep_generated = 1;
$cleanup_includes_generated = 1;

add_cus_dep( "svg", "pdf", 1, 'svg2pdf');
sub svg2pdf {
  system("make $_[0].pdf");
}
