PImage img;
int pointillize = 32;

void setup() {
  //size(200,150);
  size(800,600);
  img = loadImage("puppy200px.jpg");
  background(0);
}

void draw() {
  // Pick a random point
  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y*img.width;

  float mx = map(x,0,200,0,width);
  float my = map(y,0,150,0,height);
  
  // Look up the RGB color in the source image
  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  noStroke();
  
  // Draw an ellipse at that location with that color
  fill(r,g,b,100);
  //ellipse(x,y,pointillize,pointillize);
  ellipse(mx, my, pointillize, pointillize);

  //updatePixels(); //not using here !!
}
