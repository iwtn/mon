module three_circles() {
  translate([0, 35, 0]) {
    cylinder(20, r=30, center=true, $fn=720);
  }

  rotate([0, 0, 120]) {
    translate([-6, 32, 0]) {
      cylinder(15, r=37, center=true, $fn=720);
    }
  }

  translate([-8, 20, 0]) {
    cylinder(10, r=48.5, center=true, $fn=720);
  }
}

three_circles();

rotate([0, 0, 120]) {
  three_circles();
}

rotate([0, 0, 240]) {
  three_circles();
}
