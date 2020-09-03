
int hue ;

void setup(){
  size(800,800);
  colorMode(HSB, 100, 100, 100);
  //fullScreen(); //make the sketch the whole screen

  frameRate(20);
}

void draw(){
  background(hue, 50, 50);
  //hue++;
  //hue+=2;
  
  //incremement hue
  hue = hue + 1 ;
  //println(mouseX);
}
