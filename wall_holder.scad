use <parts/screw_hole.scad>;
use <parts/box_rounded.scad>;
use <parts/slide.scad>;

width = 24;
depth = 89;
distance = 65;
height = 5;

union() {
    difference() {
        box_rounded(depth, width, height, 5);

        translate([width/2, (depth-distance)/2, -1])
            screw_hole(r1=5, h1=2, r2=6, h2=2, r3=10, h3=3);
        translate([width/2, depth-(depth-distance)/2, -1])
            screw_hole(r1=5, h1=2, r2=6, h2=2, r3=10, h3=3);
    }

    translate([width/2, depth/2, 3])
        rotate([0, 180, 0])
        slide(l = 40, h = 4, w1 = width+10, w2 = width+4);
}
