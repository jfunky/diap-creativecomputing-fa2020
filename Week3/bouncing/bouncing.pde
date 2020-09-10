float s = 150 ; 
float cx = 0 ;
float cy = 350 ;
float speed = 5 ;
int dir = 1 ;

void setup(){
  size(600,400); 
}

void draw(){
  background(0);
  stroke(255,0,255);
  circle(cx,cy,s);
  
  cx += speed*dir ;
  
  if (cx > width || cx < 0) {//yes, true //<>//
    //make the circle travel back in the opposite direction
    dir = dir * -1 ; 
  }
  
}
