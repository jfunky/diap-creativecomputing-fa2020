class Particle {
  //variables
  float xpos ;
  float ypos ;
  
  //constructor
  Particle(float x, float y){
    xpos = x ;
    ypos = y ;
  }
  
  void display(){
    fill(0, 0, 255);
    ellipse(xpos, ypos, 5, 9);
  }
  
  //methods
  void fall(){
    ypos = ypos + 1 ;
  }
  
}
