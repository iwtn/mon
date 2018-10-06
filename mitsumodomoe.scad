include <lib.scad>

module on_circle(radius) {
  circle(radius, 5);
}

module off_circle(radius) {
  circle(radius, 6);
}

module head() {
  union() {
    translate([0, 35, 0]) {
      on_circle(30);
    }
    difference() {
      difference() {
        translate([-6, 32, 0]) {
          on_circle(37);
        }

        rotate([0, 0, 120]) {
          translate([-8, 20, 0]) {
            off_circle(51.5);
          }
        }
      }
      translate([30, 30, 0]) {
        off_circle(20);
      }
    }
  }
}

module tail() {
  difference() {
    intersection() {
      translate([-75, 15, 0]) {
        on_circle(80);
      }
      off_circle(70);
    }
    rotate([0, 0, 120]) {
      translate([-8, 20, 0]) {
        off_circle(51.5);
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
