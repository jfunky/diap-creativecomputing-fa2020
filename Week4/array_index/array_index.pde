color c[] = new color[4];
int n = 0 ;

void setup(){
  size(400,400);
  
  c[0] = color(255, 0, 200);
  c[1] = color(255, 100, 0);
  c[2] = color(0, 200, 255);
  c[3] = color(0, 255, 150);
  
}

void draw(){
  background(c[n]);
}

void mouseClicked(){
  n += 1 ;
}
