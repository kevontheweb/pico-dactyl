tolerance=0.4;
//loligagger mount
/*
translate([0,0,-12.5/2])union(){
cube([28.75,4.55,12.5], center=true);
translate([0,((4.55-2)/2 - 4.55),-4/2])cube([36.75,2,16.5],center=true);
}
*/


//usb b
translate([14,0,0])rotate([0,180,0])union(){
    rotate([0,90,0])union(){
        translate([0,26/2-3,0])cube([16,26,14],center=true);

        difference(){
            hull(){
                translate([16,5,0])rotate([90])cylinder(d=12, h=5, $fn=16);
                translate([-16,5,0])rotate([90])cylinder(d=12, h=5, $fn=16);
            }
            union(){
                translate([16,10,0])rotate([90])cylinder(d=3, h=20, $fn=16);
                translate([-16,10,0])rotate([90])cylinder(d=3, h=20, $fn=16);
            }
        }
    }

//rj45
    translate([22,28/2,16.5/2])union(){
        translate([0,-28/2+16.5/2-3, - 14/2 - 1.4/2])cube([20,16.5,14], center=true);
        cube([26, 28, 1.4], center=true);
    }
}




/*
union(){
    difference(){
        //plate
        translate([0,-2,0])cube([50,2,40],center=true);

        //holes
        translate([14,0,0])rotate([0,180,0])union(){
            rotate([0,90,0])union(){
                translate([16,10,0])rotate([90])cylinder(d=3+tolerance, h=20, $fn=16);
                translate([-16,10,0])rotate([90])cylinder(d=3+tolerance, h=20, $fn=16);
            }

            rotate([0,180,0])union(){
                rotate([0,90,0])union(){
                    translate([0,26/2-3-1,0])cube([16+tolerance,26,14+tolerance],center=true);
                }
            }

            translate([22,28/2,16.5/2])union(){
                translate([0,-28/2+16.5/2-3-1, - 14/2 - 1.4/2])cube([20+tolerance,16.5,14+tolerance], center=true);
            }
        }
    }
    //clips
    translate([14,0,0])rotate([0,180,0])translate([22,28/2,16.5/2])union(){
        difference(){
            union(){
                translate([22/2+3/2,-28/2+1,0])cube([4,4,3],center=true);
                translate([-22/2-3/2,-28/2+1,0])cube([4,4,3],center=true);
            }
            cube([26+tolerance, 28, 1.4+tolerance], center=true);
        }
        difference(){
            translate([0,-16.5/2+1,-14])cube([20+3,16.5,5],center=true);
            translate([0,-28/2+16.5/2-3, - 14/2 - 1.4/2])cube([20+tolerance,16.5+tolerance,14], center=true);
        }
    }
}
*/