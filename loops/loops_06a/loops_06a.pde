/**
 * loops_06a 
 * 
 * Let's do something several times 
 * Aside: rather than do that fancy math, we can just count by greater values, like 100
 */

void setup() {
  size(800, 450);
  // hey look - we've removed noLoop()! Also, we're not println()-ing i inside the loop.
}

void draw() {
  background(0);
  int i = 0;
  while (i < 700) {
    rect(mouseX + i, mouseY, 50, 50);
    i+=100; // Short for add 100 to i
  }
}
