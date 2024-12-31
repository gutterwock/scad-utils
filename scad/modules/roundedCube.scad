module Corner(bevelDimensions, bevelRadius) {
  if(is_undef(bevelDimensions))
    sphere(r = bevelRadius);
  else
    scale(bevelDimensions) sphere(r = 1);
};

module RoundedCube(dimensions, bevelDimensions, bevelRadius = 1) {
  hull() {
    translate([dimensions.x / 2, dimensions.y / 2, dimensions.z / 2])
      Corner(bevelDimensions, bevelRadius);
    translate([-dimensions.x / 2, dimensions.y / 2, dimensions.z / 2])
      Corner(bevelDimensions, bevelRadius);
    translate([-dimensions.x / 2, -dimensions.y / 2, dimensions.z / 2])
      Corner(bevelDimensions, bevelRadius);
    translate([dimensions.x / 2, -dimensions.y / 2, dimensions.z / 2])
      Corner(bevelDimensions, bevelRadius);
    translate([dimensions.x / 2, dimensions.y / 2, -dimensions.z / 2])
      Corner(bevelDimensions, bevelRadius);
    translate([-dimensions.x / 2, dimensions.y / 2, -dimensions.z / 2])
      Corner(bevelDimensions, bevelRadius);
    translate([-dimensions.x / 2, -dimensions.y / 2, -dimensions.z / 2])
      Corner(bevelDimensions, bevelRadius);
    translate([dimensions.x / 2, -dimensions.y / 2, -dimensions.z / 2])
      Corner(bevelDimensions, bevelRadius);
  }
};
