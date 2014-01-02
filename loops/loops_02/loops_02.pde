/**
 * loops_02
 * 
 * Let's do something several times 
 * This is a smarter version. It's called a while loop.
 */

void setup() {
  size(800, 450);
  noLoop(); // Let's only run draw once for now.
}

void draw() {
  background(0);
  
  int i = 0;               // First, set up a counter
  while (i < 7) {          // As long as the counter is less than 7...
    println("Dafydd is cool.");
    i = i + 1;             // add 1 to i
  }
}
