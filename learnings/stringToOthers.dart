void main() {
  int a = 40;
  var b = "15";
  var c = a + int.parse(b); //Parsing The String Together!
  print("$a + $b = $c");
  //String To Double:
  var d, e, f;
  d = 40;
  e = "0.15";
  f = d + double.parse(e);
  print("$d + $e = $f");
  //Int To String:
  var g, h, i;
  g = 40;
  h = "15";
  i = g.toString() + h;
  print("$g + $h = $i");
}
