//declare an image
//add through sketch > add file
PImage img;
int h1 = 0;

void setup() {
  colorMode(HSB,360,100,100);
    
  size(400, 300); //larger than puppy image
  //size(200,150); //same size as puppy image
  img = loadImage("puppy200px.jpg"); //load the image
  //println(img.width);
  //println(img.height);
}

void draw() {
  
  loadPixels();
  img.loadPixels(); //load the pixels in the image
  
  for (int y = 0; y < img.height; y++) {
    for (int x = 0; x < img.width; x++) {
      int imageLoc = x + y*img.width;
      
      //use displayLoc if image & display areas 
      //are NOT the same size --
      int displayLoc = x + y*width;
      //println(loc);
      
      float h = hue(img.pixels[imageLoc]+h1);
      float s = saturation(img.pixels[imageLoc]);
      float b = brightness(img.pixels[imageLoc]);
      
      pixels[displayLoc] = color(h,s,b);
      //pixels[imageLoc] = color(r,g,b) ;
    }
  }
  
  updatePixels();
  h1++;
  
  //image(img,width/2,height/2);
}
