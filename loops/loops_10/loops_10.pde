/**
 * loops_07
 * 
 * Let's do something several times 
 *  
 */

void setup() {
  size(800, 450);
  // hey look - we've removed noLoop()! Also, we're not println()-ing i inside the loop.
}

void draw() {
  background(0);
  
  float spacing = float(mouseX) / float(width) * 50 + 50;
  int i = 0;
  while (i < 7) {
    rect(mouseX + (i * spacing), mouseY, 50, 50);
    i++;
  }
}
