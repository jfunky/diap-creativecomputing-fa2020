class mouseSquare {
  //instance variables
  float xpos ;
  float ypos ;
  color c ;
  
  //constructor function
  mouseSquare(float tempX, float tempY, color tempC){ 
    xpos = tempX ;
    ypos = tempY ;
    c = tempC ;
  }
  
  //"methods" - adds functionality
  void drawRect(){
    rectMode(CENTER);
    fill(c);
    rect(xpos, ypos, 40, 40);
  }
  
  void up(){
    ypos--;
  }
  
}
