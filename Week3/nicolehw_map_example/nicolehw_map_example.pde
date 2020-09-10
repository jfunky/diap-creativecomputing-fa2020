/**
 Nicole Carpenter
 DIAP_CreativeCoding
 Fall2020
 09/08/2020
 Week 3
 
 */

int c = -5;
float cF = 10;

void setup () {
  size(800, 100);
  colorMode(HSB, 360, 100, 100);
  background(0, 0, 100);
}

void draw () {
  float x = map(mouseX,0,800,0,360);
  background(x, mouseY, 100);

  fill( cF, 100, 100);
  triangle( c, 25, c + 50, 50, c, 75);

  c++;
}

void mouseClicked() {
 c = -55;
 cF = (random(0, 360));
}
