class mouseSquare {
  //variables
  float xpos ;
  float ypos ;
  color col ;
  
  //constructor
  mouseSquare(float x, float y, color c){
    xpos = x ;
    ypos = y ;
    col = c ;
  }
  
  void display(){
    fill(col);
    rect(xpos, ypos, 40, 40);
  }
  
  //methods
  void rise(){
    ypos = ypos - 1 ;
    //print(ypos);
  }
  
  void rain(Particle r){
    if (dist(r.xpos, r.ypos, xpos, ypos) < 40) {
      col = color(0, 0, 255);
    }
  }
  
}
