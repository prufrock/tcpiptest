$x = "a";
$size = 53535;
$out = "";
while($size > 0){
  $out = $out . $x;
  $size--;
}
print $out;
