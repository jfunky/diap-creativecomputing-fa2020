// Import the sound library
import processing.sound.*;

// A sound file object
SoundFile nature; //declaring our object

//A button object
Button button ;

void setup() {
  size(400, 400);
  // Load the sound file
  nature = new SoundFile(this, "nature-rain-animals.mp3");
  //remember to add to your data folder!!!
  button = new Button(width/2, height/2, 64);
  colorMode(HSB,360,100,100);
}

void draw() {
  background(255);
  // Show the doorbell
  button.display(mouseX, mouseY);
}

void mousePressed() {
  // If the user clicks on the doorbell, play the sound!
  if (button.contains(mouseX, mouseY)) {
    nature.play();
  }
}
