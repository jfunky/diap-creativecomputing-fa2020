// based on Processing Electronics tutorial: https://processing.org/tutorials/electronics/
// and ITP's Processing Serial Lab: https://itp.nyu.edu/physcomp/labs/labs-serial-communication/serial-output-from-an-arduino/

import processing.serial.*; 
 
Serial port;                             // Create object from Serial class 
int val;                                 // Data received from the serial port 
 
void setup() { 
  size(200, 200); 
  frameRate(10); 
  
  //print available Serial ports:
  printArray(Serial.list());
  
  // Open the port that the board is connected to and use the same speed (9600 bps) 
  port = new Serial(this, Serial.list()[3], 9600); 
} 

void draw() { 
  background(255);                       // Set background to white
  fill(val); 
  rect(50, 50, 100, 100);
} 

void serialEvent (Serial port) {
  // get the byte:
  int inByte = port.read();
  
  //store value in val:
  val = inByte;
  
  // print it:
  println(inByte);
}
