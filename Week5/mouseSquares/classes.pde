class mouseSquare {
  //data
  float xpos ;
  float ypos ;
  
  //constructor function
  mouseSquare(float tempX, float tempY){ 
    xpos = tempX ;
    ypos = tempY ;
  }
  
  //"methods" - adds functionality
  void drawRect(){
    rectMode(CENTER);
    fill(255, 0, 255);
    rect(xpos, ypos, 40, 40);
  }
  
  void up(){
    ypos--;
  }
  
}
