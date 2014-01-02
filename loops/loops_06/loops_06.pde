/**
 * loops_06 
 * 
 * Let's do something several times 
 * Now let's remove noLoop() and add some behaviour.
 * Every frame, use a loop to draw 7 rectangles, and move 'em around with the mouse.
 * What else can you think of doing here?
 */

void setup() {
  size(800, 450);
  // hey look - we've removed noLoop()! Also, we're not println()-ing i inside the loop.
}

void draw() {
  background(0);
  int i = 0;
  while (i < 7) {
    rect(mouseX + (i * 100), mouseY, 50, 50);
    i++;
  }
}
