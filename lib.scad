module circle(radius, thickness) {
  cylinder(thickness, r=radius, center=true, $fn=720);
}
