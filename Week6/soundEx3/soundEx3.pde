import processing.sound.*;

//sound objects
AudioIn mic;

Amplitude analyzer;

SoundFile nature;

void setup() {
  size(200, 200);
  background(255);
  
  //soundfile
  nature = new SoundFile(this, "nature-rain-animals.mp3"); 
  nature.loop();

  // Start listening to the microphone
  // Create an audio input and grab the first channel
  mic = new AudioIn(this, 0);
  // Start the Audio Input
  mic.start();
  // Create a new amplitude analyzer
  analyzer = new Amplitude(this);
  
  
  //you can decide to patch through sound from the
  //mic or from a Soundfile:
  
  // Patch the input to the analyzer
  //analyzer.input(mic);

  //sketch >> add file
  analyzer.input(nature);
  
}

void draw() {
  //background(90);
  // Get the overall volume (between 0 and 1.0)
  float volume = analyzer.analyze();
  
  // ellipse size mapped to volume
  float s = map(volume, 0, 1, height, 0);

  ellipse(width/2,height/2,s,s);

}
