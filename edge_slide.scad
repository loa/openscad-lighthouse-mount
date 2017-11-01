use <parts/screw_hole.scad>;
use <parts/slide.scad>;

width = 15;
depth = 80;
distance = 65;
height = 5;

difference() {
  translate([0, 0, -15])
    cube([width, 5, 15]);

  translate([2, 2, -20])
    cube([width-4, 6, 20]);

  translate([-1, 6, 5])
  rotate([90, 180, 90])
    linear_extrude(height=width+2)
    polygon(points=[[0, 0], [4, 20.1], [0, 20.1]]);

  translate([width/2, 1, -15/2])
  rotate([90, 0, 0])
    cylinder(h=5, r=0.8, $fn=180, center=true);
}

translate([0, -depth+20+height, 0])
  cube([width, depth-20, height]);

translate([0, -depth, 0])
translate([width/2, depth/2, 2.5])
rotate([0, 180, 0])
  slide(l = 50, h = 5, w1 = width+10, w2 = width);
