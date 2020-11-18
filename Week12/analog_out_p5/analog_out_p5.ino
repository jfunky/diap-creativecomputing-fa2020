/*
  Examples from PComp Lab - Output from P5 to Arduino

  Reads an analog input on pin 0, prints the result to the Serial Monitor.
  Graphical representation is available using Serial Plotter (Tools > Serial Plotter menu).
  Attach the center pin of a potentiometer to pin A0, and the outside pins to +5V and ground.

  This example code is in the public domain.

  http://www.arduino.cc/en/Tutorial/AnalogReadSerial
*/

void setup() {
 Serial.begin(9600);           // initialize serial communications
}
 
void loop() {
 if (Serial.available() > 0) { // if there's serial data available
 int inByte = Serial.read();   // read it
 Serial.write(inByte);         // send it back out as raw binary data
 analogWrite(9, inByte);       // pwm pin?
 }
}
