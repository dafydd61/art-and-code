// This sketch counts different frames for alternating images. 
// The sketch runs for an indefinite period of time, and chooses  
// a new image every 31st frame, as per the counter mark.
// **Keep in mind that it may choose the same pic as last time, so it won't necessarily change the picture every 31 frames.**

int pic = 0;
int counter = 0;

void setup() {
  size(600, 600);
}

void draw() {
  // Every time counter is 0, select a picture
  if (counter == 0) {

    // Assign pic a random number between 0 and 1:
    pic = int(random(2));
    
    /*
    // alternate version, more complicated and less elegant:
    float r = random(2);
    if ( r < 1 ) {
      pic = 0;
      } else {
        pic = 1;
      }
    }
    */
  }

  // Based on the value of pic, display a specific image
  // We're using background() for simplicity, but you can use image() or really anything else that responds to two different states
  if ( pic == 0 ) {
    // you would show picture #1 here
    background(255, 0, 0);
    } else {
    // you would show picture #2 here    
    background(0, 255, 0);
  }

  // counter increment  continuously
  counter++;
  // at the 31st frame reset the counter so that the pic value changes
  if ( counter > 30 ) {
    counter = 0;
  }
}
