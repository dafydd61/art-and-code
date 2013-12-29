import processing.serial.*;

import cc.arduino.*;

Arduino arduino;

void setup() {
  size(470, 280);
  noStroke();
  
  println(Arduino.list());
  // Set the correct port here. My Arduino appears on port 8, so I use Arduino.list()[8]: 
  arduino = new Arduino(this, Arduino.list()[8], 57600);

  background(180);
  fill(0);
}

void draw() {
  
  // read analog 0 & 1
  float reading0 = arduino.analogRead(0);
  float reading1 = arduino.analogRead(1);
  
  reading0 = map(reading0, 0, 1023, 0, width);
  reading1 = map(reading1, 0, 1023, 0, height);
  
  // draw an ellipse
  ellipse(reading0, reading1, 1, 1);
  
  // Show the actual reading:
  // text(reading0, 20, 20);
  // text(reading1, 20, 40);
}

void keyPressed() {
  // Spacebar clears the window
  if ( key == ' ' ) {
    background(180);
  }
}
