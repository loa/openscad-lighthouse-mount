use <box.scad>;

module box_rounded(w, l, h, r) {
    difference() {
        box(w, l, h);

        translate([l, w, 0]) rotate([0, 0, 180]) difference() {
            translate([0, 0, h / 2]) cube([2*r, 2*r, 2*h], center = true);
            translate([r, r, h / 2]) cylinder(h = 3*h, r = r, center = true, $fn=60);
        }

        translate([0, w, 0]) rotate([0, 0, 270]) difference() {
            translate([0, 0, h / 2]) cube([2*r, 2*r, 2*h], center = true);
            translate([r, r, h / 2]) cylinder(h = 3*h, r = r, center = true, $fn=60);
        }

        translate([l, 0, 0]) rotate([0, 0, 90]) difference() {
            translate([0, 0, h / 2]) cube([2*r, 2*r, 2*h], center = true);
            translate([r, r, h / 2]) cylinder(h = 3*h, r = r, center = true, $fn=60);
        }

        difference() {
            translate([0, 0, h / 2]) cube([2*r, 2*r, 2*h], center = true);
            translate([r, r, h / 2]) cylinder(h = 3*h, r = r, center = true, $fn=60);
        }
    }
}

box_rounded(30, 50, 5, 5);
