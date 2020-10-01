class mouseSquare {
  //variables
  float xpos ;
  float ypos ;
  
  //constructor
  mouseSquare(float x, float y){
    xpos = x ;
    ypos = y ;
  }
  
  //methods
  void display(){
    rect(xpos, ypos, 40, 40);
  }
  
  void rise(){
    ypos = ypos - 1 ;
    //print(ypos);
  }
  
}
