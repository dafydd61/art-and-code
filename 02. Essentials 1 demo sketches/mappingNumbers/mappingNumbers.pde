/* mappingNumbers

Use map() to scale a set of numbers. Here, we scale and invert.

*/

float c = 0;

void setup() {
  size(600, 600);
}

void draw() {
  c = map(mouseX, 0, 600, 255, 0);
  background(c);
}
