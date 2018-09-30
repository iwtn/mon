module circumference(radius) {
  w = 5;
  difference() {
    cylinder(w, r=radius, center=true, $fn=720);
    cylinder(w + 1, r=radius - 1, center=true, $fn=720);
  };
}

module three_circles() {
  circumference(70);

  translate([0, 35, 0]) {
    circumference(30);
  }

  translate([-6, 32, 0]) {
    circumference(37);
  }

  rotate([0, 0, 120]) {
    translate([-8, 20, 0]) {
      circumference(48.5);
    }
  }

  translate([-75, 15, 0]) {
    circumference(80);
  }

  translate([30, 30, 0]) {
    circumference(20);
  }
}

three_circles();
