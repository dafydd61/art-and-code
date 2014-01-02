/**
 * loops_03 
 * 
 * Let's do something several times 
 * Hey - instead of saying the same thing over and over, let's print out the value of the counter.
 */

void setup() {
  size(800, 450);
  background(0);
  noLoop(); // Let's only run draw once for now.
}

void draw() {
  int i = 0;
  while (i < 7) {
    println(i);
    i++; // add 1 to i - this is a short form for i = i + 1
  }
}
