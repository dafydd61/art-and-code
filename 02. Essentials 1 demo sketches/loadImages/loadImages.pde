/* loadImages

Load images into two PImage objects.
Choose which one to show depending on the mouse position.

*/

// 1. Create ("declare") the image objects
PImage pic1;
PImage pic2;

void setup() {
  size(600, 600);
  
  // 2. Load the images
  pic1 = loadImage("p-croswell.jpg");
  pic2 = loadImage("p-dino.jpg");
}

void draw() {
  if ( mouseX < 300 ) {
    // 3. Display an image
    image(pic1, 0, 0, width, height);
  } else {
    image(pic2, 0, 0, width, height);
  }
}
