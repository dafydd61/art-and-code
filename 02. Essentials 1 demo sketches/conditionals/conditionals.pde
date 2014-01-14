/* Conditionals

Use if, else if and else to check on the state of the sketch.

*/

// Position of the ellipse
float x = 0;
float y = 0;
// increment - how far the ellipse moves every frame
float speedX = 2;
float speedY = 2;


void setup() {
  size(600, 400);
}

void draw() {
  
  // Silly background colour switching - to demo if/else if/else:
  if (mouseX > 300) {
    background(0, 0, 255);
  } else if (mouseX > 200) {
    background(0, 255, 0);
  } else {
    background(255,0 , 0);
  }
  
  
  // Draw the ball at the current x/y coordinates
  ellipse(x, y, 50, 50);
  
  // Increment x & y (move the ball)
  x = x + speedX;
  y = y + speedY;
  
  
  // Check on where the ball is. If it's moving off the screen in any direction, reverse its direction.
  // So for instance, instead of adding 2 each frame, we add -2.
  // There are "more elegant" ways to do this. Any ideas?  
  
  if ( x > width ) {
    speedX = -2;
  }

  if ( x < 0 ) {
    speedX = 2;
  }  
  
  if ( y > height ) {
    speedY = -2;
  }

  if ( y < 0 ) {
    speedY = 2;
  }

}
