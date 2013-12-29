/*
  arduino_input_A0.pde
  A minimal input sketch for Arduino
  
  Reads from Analog pin 0 only, but you can easily edit to read from any or all analog pins.
  
  Based on arduino_input.pde - I've removed everything except what draws an ellipse.
  I've also moved the ellipse and changed its colour to make things more clear.
  
  Remember to set the correct port for Arduino in setup()!
  
  You need to have Firmata uploaded to your Arduino board.
*/  

import processing.serial.*;

import cc.arduino.*;

Arduino arduino;

void setup() {
  size(470, 280);
  noStroke();
  
  println(Arduino.list());
  // Set the correct port here. My Arduino appears on port 8, so I use Arduino.list()[8]: 
  arduino = new Arduino(this, Arduino.list()[8], 57600);
}

void draw() {
  background(0);
  fill(255);
  
  // read analog 0
  int reading = arduino.analogRead(0);
  
  // draw an ellipse based on the reading
  ellipse(width/2, height/2, reading / 16, reading / 16);
  
  // Show the actual reading:
  text(reading, 20, 20);
}
