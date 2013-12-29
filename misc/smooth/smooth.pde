// smooth.pde

// The ellipse follows the mouse, but slowly, so all motion is smooth
// We do this by figuring out how far the ellipse needs to go, but then only going partway

// You can use this to smooth any stream of numbers!

float posX, posY, lastX, lastY;

void setup() {
  size(600, 600);
  fill(100);
  noStroke();
}

void draw() {
  background(100, 20, 70);
  
  // Where is mouse?
  float mX = mouseX;
  float mY = mouseY;
  
  // How far is the mouse from the ellipse?
  float dX = mX - lastX;
  float dY = mY - lastY;
  
  // Move the ellipse **part** of the way to the mouse
  // The "speed" is determined by the multiplication - here I'm using .2
  // Using hier numbers (up to 1) will make the movement faster, lower wil make it slower 
  posX = lastX + dX * .2;
  posY = lastY + dY * .2;
  
  ellipse(posX, posY, 20, 20);
  
  // Remember where the ellipse is now:
  lastX = posX;
  lastY = posY;
}
