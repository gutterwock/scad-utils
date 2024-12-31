use <../scad/modules/roundedCube.scad>
$fn = 8;

translate([20, 0, 0])
  RoundedCube(dimensions = [20, 30, 40], bevelRadius = 4);

translate([-20, 0, 0])
  RoundedCube(dimensions = [15, 35, 30], bevelDimensions = [1, 3, 4]);
