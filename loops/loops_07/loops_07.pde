/**
 * loops_07
 * 
 * Fancy loops: a loop within a loop
 */

void setup() {
  size(800, 450);
}

void draw() {
  background(0);
  int i = 0;
  while (i < 7) {
    int j = 0;
    while (j < 4) {
      rect(mouseX + (i * 100), mouseY + (j * 100), 50, 50);
      j++;
    }
    i++;
  }
}
