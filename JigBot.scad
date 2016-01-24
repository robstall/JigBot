
side_thickness = 3;

translate([-85,0,0]) side_front();
side_rear();

module side_front() {
  color("lime")
  linear_extrude(side_thickness)
  polygon([[0,0],[85,0],[85,20],[95,15],[95,35],[85,30],[85,50],[45,20],[0,5]],[[0,1,2,3,4,5,6,7,8]]);
}

module side_rear() {
  color("green")
  difference() {
  linear_extrude(side_thickness)
    polygon([[0,0],[90,0],[90,65],[20,65],[0,50],[0,30],[10,35],[10,15],[0,20]],[[0,1,2,3,4,5,6,7,8]]);
  translate([30, 45, 0])  
    cylinder(r=10, h=side_thickness);
  translate([70, 45, 0])  
    cylinder(r=10, h=side_thickness);
  translate([30, 20, 0])  
    cylinder(r=10, h=side_thickness);
  translate([70, 20, 0])  
    cylinder(r=10, h=side_thickness);
  }
}