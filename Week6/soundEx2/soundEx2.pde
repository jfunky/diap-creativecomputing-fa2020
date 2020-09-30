import processing.sound.*;

AudioIn mic; //AudioIn object
Amplitude analyzer; //Amplitude object

void setup() {
  size(200, 200);
  background(255);
  // Start listening to the microphone
  // Create an audio input and grab the first channel
  mic = new AudioIn(this, 0);
  // Start the Audio Input
  mic.start();
 
  // Create a new amplitude analyzer
  analyzer = new Amplitude(this);
  // Patch the input to the analyzer
  analyzer.input(mic);
}

void draw() {
  // Get the overall volume (between 0 and 1.0)
  float volume = analyzer.analyze();
  float threshold = 0.5;
  if (volume > threshold) {
    stroke(0);
    fill(0, 100);
    rect(random(40, width), random(height), 20, 20);
  }
  
  // Graph the overall volume and show threshold
  float y = map(volume, 0, 1, height, 0);
  float ythreshold = map(threshold, 0, 1, height, 0);
  noStroke();
  fill(175);
  rect(0, 0, 20, height);
  // Then draw a rectangle size according to volume
  fill(0);
  rect(0, y, 20, y);
  stroke(0);
  line(0, ythreshold, 19, ythreshold);
}
