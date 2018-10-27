Fragments = 720;

module circle(radius, thickness) {
  cylinder(thickness, r=radius, center=true, $fn=Fragments);
}

module circumference(radius) {
  thickness = 1;

  difference() {
    cylinder(thickness, r=radius, center=true, $fn=Fragments);
    cylinder(thickness + 1, r=radius - 1, center=true, $fn=Fragments);
  }
}

function smooth_radius(v1, r1, v2) = sqrt(pow(v1[0] - v2[0], 2) + pow(v1[1] - v2[1], 2)) + r1;
