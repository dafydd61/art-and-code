/**
 * loops_08
 * 
 * Another loop syntax: for()
 * You don't *need* it, but it's sometimes more convenient than while()
 * SYNTAX:
 * for ( set counter; set limits; set increment value ) {}
 */

void setup() {
  size(800, 450);
}

void draw() {
  background(0);
  for (int i = 0; i < 7; i++) {
    for (int j = 0; j < 4; j++) {
      rect(mouseX + (i * 100), mouseY + (j * 100), 50, 50);
    }
  }
}
