import processing.serial.*;

import cc.arduino.*;

Arduino arduino;

void setup() {
  size(470, 280);
  noStroke();
  
  println(Arduino.list());
  // Set the correct port here. My Arduino appears on port 8, so I use Arduino.list()[8]: 
  arduino = new Arduino(this, Arduino.list()[8], 57600);

  fill(255);
  
}

void draw() {
  
  // read analog 0
  int reading = arduino.analogRead(0);
  float readingScaled = map(reading, 0, 1023, 0, 255);

  background(0, readingScaled, 0);
    
  // Show the actual reading:
  text(reading, 20, 20);
}
