use <parts/screw_hole.scad>;
use <parts/box_rounded.scad>;

width = 24;
depth = 89;
distance = 65;

difference() {
    box_rounded(depth, width, 5, 5);

    translate([width/2, (depth-distance)/2, -1])
        screw_hole(r1=5, h1=2, r2=6, h2=2, r3=10, h3=3);
    translate([width/2, depth-(depth-distance)/2, -1])
        screw_hole(r1=5, h1=2, r2=6, h2=2, r3=10, h3=3);
}
