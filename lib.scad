module circle(radius, thickness) {
  cylinder(thickness, r=radius, center=true, $fn=720);
}

module circumference(radius, thickness) {
  difference() {
    cylinder(thickness, r=radius, center=true, $fn=720);
    cylinder(thickness + 1, r=radius - 1, center=true, $fn=720);
  }
}

function smooth_radius(x1, y1, r1, x2, y2) = sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2)) + r1;
