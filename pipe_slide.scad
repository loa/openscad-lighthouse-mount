use <parts/slide.scad>;

radius=11;
length=50;

thickness=2;

stripe_width=5;
stripe_height=2;
stripe_edge_distance=4;

fn=120;

holder_hypotenuse=sqrt(2*pow(radius+thickness, 2));

difference() {
  difference() {
    union() {
      rotate([0, -45, 0])
      translate([0, -length/2, 0])
        cube([radius+thickness, length, radius+thickness]);

      translate([0, 0, holder_hypotenuse/4])
        slide(l = length, h = holder_hypotenuse/2, w1 = 25, w2 = 15);
    }

    translate([0, length/2+10, holder_hypotenuse])
    rotate([90, 0, 0])
      cylinder(h = length+20, r = radius, $fn = fn);
  }

  for(i=[-1, 1])
    translate([0, stripe_width/2+i*(length/2-stripe_width/2-stripe_edge_distance), sqrt(2*pow(radius+thickness, 2))])
    rotate([90, 0, 0])
      difference() {
        cylinder(h = stripe_width, r = radius+thickness+stripe_height, $fn = fn);
        translate([0, 0, -1])
        cylinder(h = stripe_width+2, r = radius+thickness, $fn = fn);
      }
}
