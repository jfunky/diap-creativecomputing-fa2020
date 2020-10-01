class mouseSquare {
  //instance variables
  float xpos ;
  float ypos ;
  color col ;
  int dir ;
  
  //constructor
  mouseSquare(float x, float y, color c){
    xpos = x ;
    ypos = y ;
    col = c ;
    dir = -1 ;
  }
  
  //methods
  void display(){
    fill(col);
    rect(xpos, ypos, 40, 40);
  }
  
  void rise(){
    ypos = ypos + (1*dir) ;
    //println(ypos);
  }
  
  void rain(Particle r){
    float d = dist(r.xpos, r.ypos, xpos, ypos) ;
    //println(d);
    if (d < 25) {
      col = color(0, 0, 255);
      dir = 2;  //"bounce"
    }
  }
  
}
