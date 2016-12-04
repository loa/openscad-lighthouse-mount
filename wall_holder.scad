use <parts/screw_hole.scad>;
use <parts/box_rounded.scad>;
use <parts/slide.scad>;

width = 15;
depth = 80;
distance = 65;
height = 5;

union() {
    difference() {
        box_rounded(depth, width, height, 5);

        translate([width/2, (depth-distance)/2, -1])
            screw_hole(r1=2.5, h1=1.5, r2=3, h2=2, r3=5, h3=3.5);
        translate([width/2, depth-(depth-distance)/2, -1])
            screw_hole(r1=2.5, h1=1.5, r2=3, h2=2, r3=5, h3=3.5);
    }

    translate([width/2, depth/2, 3])
        rotate([0, 180, 0])
        slide(l = 40, h = 4, w1 = width+10, w2 = width+4);
}
