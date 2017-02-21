use <parts/screw_hole.scad>;
use <parts/box.scad>;
use <parts/box_rounded.scad>;
use <parts/slide.scad>;

width = 15;
depth = 84;
distance = 65;

difference() {
    box_rounded(depth, 45, 9, 10);

    translate([45/2-width/2-0.5, 10, 5])
        box(depth, width+1, 5);
    translate([45/2, 0, 5 + 2.5])
        union() {
            translate([0, depth/2-55+0.1, 0])
                slide(l = 50, h = 5, w1 = width+12, w2 = width+12);

            translate([0, depth/2, 0])
                slide(l = 60, h = 5, w1 = width+12, w2 = width);
        }
    translate([45/2, (depth-distance)/2, -1])
        screw_hole(r1=2, h1=1, r2=2, h2=2, r3=4, h3=4);
    translate([45/2, depth-(depth-distance)/2, -1])
        screw_hole(r1=2, h1=1, r2=2, h2=2, r3=4, h3=4);
}
