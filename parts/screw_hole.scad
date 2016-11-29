module screw_hole(r1, h1, r2, h2, r3, h3){
    d = 0.01;

    union() {
        cylinder(h=h1, r=r1, $fn=60);
        translate([0, 0, h1-d]) cylinder(h=h2+d, r1=r1, r2=r2, $fn=60);
        translate([0, 0, h1+h2-d]) cylinder(h=h3+d, r=r3, $fn=60);
    }
}

screw_hole(r1=10, h1=10, r2=20, h2=10, r3=30, h3=10);
