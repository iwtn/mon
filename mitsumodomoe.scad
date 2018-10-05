module circumference(radius) {
  w = 5;
  difference() {
    cylinder(w, r=radius, center=true, $fn=720);
    cylinder(w + 1, r=radius - 1, center=true, $fn=720);
  };
}

module circle(radius) {
  cylinder(5, r=radius, center=true, $fn=720);
}

module head() {
  thickness = 5
  space_thickness = thickness + 1

  union() {
    translate([0, 35, 0]) {
      cylinder(thickness, r=30, center=true, $fn=720);
    }
    difference() {
      difference() {
        translate([-6, 32, 0]) {
          cylinder(thickness, r=37, center=true, $fn=720);
        }

        rotate([0, 0, 120]) {
          translate([-8, 20, 0]) {
            cylinder(space_thickness, r=51.5, center=true, $fn=720);
          }
        }
      }
      translate([30, 30, 0]) {
        cylinder(space_thickness, r=20, center=true, $fn=720);
      }
    }
  }
}

module tail() {
  thickness = 5
  space_thickness = thickness + 1

  difference() {
    intersection() {
      translate([-75, 15, 0]) {
        cylinder(thickness, r=80, center=true, $fn=720);
      }
      cylinder(space_thickness, r=70, center=true, $fn=720);
    }
    rotate([0, 0, 120]) {
      translate([-8, 20, 0]) {
        cylinder(space_thickness, r=51.5, center=true, $fn=720);
      }
    }
  }
}

module tomoe() {
  head();
  tail();
}

for(z = [0, 120, 240]) {
  rotate([0, 0, z]) {
    tomoe();
  }
}
