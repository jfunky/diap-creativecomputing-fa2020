
int hue ;

void setup(){
  size(800,800);
  colorMode(HSB, 100, 100, 100);
  //fullScreen(); //make the sketch the whole screen

  //white background in HSB mode
  background(100,0,100);

}

void draw(){
}

void mouseClicked(){
  //text string to print to the console
  println("x location: " + mouseX + "; y location: " + mouseY);
  //println(mouseX + mouseY);
  
  //create a random ellipse with a random color
  fill(random(0,100), 100, 100);
  ellipse(random(0, width), random(0, height), 100, 100);
}
