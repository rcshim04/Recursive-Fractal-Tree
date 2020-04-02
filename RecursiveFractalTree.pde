/*  Eric Shim
    04/02/2020
    https://rcshim04.github.io
*/

float angle = 144;
float branchRatio = 0.67;

void setup() {
  size(800, 500);
  background(51);
  stroke(255, 150);
  strokeWeight(2);
}
void draw() {
  background(51);
  translate(width/2, height);
  branch(150);
}
void branch(float len) {
  line(0, 0, 0, -len);
  if(len > 5) {
    pushMatrix();
    translate(0, -len);
    rotate(angle);
    branch(len*branchRatio);
    popMatrix();
    pushMatrix();
    translate(0, -len);
    rotate(-angle);
    branch(len*branchRatio);
    popMatrix();
  }
}
void mouseWheel(MouseEvent event) {
  angle += event.getCount()/20.0;
}
