module RoundedCube(d, h, w, bevelRadius) {
  hull() {
    translate([w / 2, d / 2, h / 2])
      sphere(r = bevelRadius);
    translate([-w / 2, d / 2, h / 2])
      sphere(bevelRadius);
    translate([-w / 2, -d / 2, h / 2])
      sphere(bevelRadius);
    translate([w / 2, -d / 2, h / 2])
      sphere(bevelRadius);
    translate([w / 2, d / 2, -h / 2])
      sphere(bevelRadius);
    translate([-w / 2, d / 2, -h / 2])
      sphere(bevelRadius);
    translate([-w / 2, -d / 2, -h / 2])
      sphere(bevelRadius);
    translate([w / 2, -d / 2, -h / 2])
      sphere(bevelRadius);
  }
};
