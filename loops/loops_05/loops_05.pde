/**
 * loops_05 
 * 
 * Let's do something several times 
 * Why the heck would we bother doing math to the counter?
 * Because you can use that math to draw stuff!
 */

void setup() {
  size(800, 450);
  background(0);
  noLoop(); // Let's only run draw once for now.
  fill(255);
}

void draw() {
  int i = 0;
  while (i < 7) {
    // Draw a rectangle, and use the current value of the counter to determine the x position: 
    rect(i * 100, 100, 50, 50);
    println(i * 100);
    i++;
  }
}
