float s = 150 ; 
float cx = 200 ;
float cy = 0 ;
float speed = 1 ;
float gravity = 0.8 ;

void setup(){
  size(600,600); 
}

void draw(){
  background(0);
  stroke(255,0,255);
  circle(cx,cy,s);
  
  cy += speed ;
  speed += gravity ;
  
  if (cy > height){ //<>//
    speed = speed * -0.8 ; //negative = reverse direction
    cy = height;
  }
  
}
