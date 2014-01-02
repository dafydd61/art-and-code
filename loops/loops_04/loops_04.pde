/**
 * loops_04 
 * 
 * Let's do something several times 
 * And how about doing some math to that counter?
 */

void setup() {
  size(800, 450);
  background(0);
  noLoop(); // Let's only run draw once for now.
}

void draw() {
  int i = 0;
  while (i < 7) {
    println(i * 100);
    i++;
  }
}
