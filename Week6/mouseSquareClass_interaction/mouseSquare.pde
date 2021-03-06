class mouseSquare {
  //instance variables
  float xpos ;
  float ypos ;
  color col ;
  
  //constructor
  mouseSquare(float x, float y, color c){
    xpos = x ;
    ypos = y ;
    col = c ;
  }
  
  //methods
  void display(){
    fill(col);
    rect(xpos, ypos, 40, 40);
  }
  
  void rise(int dir){
    ypos = ypos + (0.1*dir) ;
    //println(ypos);
  }
  
  boolean rain(Particle r){
    float d = dist(r.xpos, r.ypos, xpos, ypos) ;
    //println(d);
    if (d < 25) {
      col = color(0, 0, 255);
      return true ;
    }
    else {
      return false ;
    }
  }
  
}
