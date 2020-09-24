mouseSquare s1 ;

void setup(){
  size(600,600);
  rectMode(CENTER);
  //print(s1);
  s1 = new mouseSquare(width/2, height);
}

void draw(){
  //if (s1 != null){
    s1.display();
    s1.rise();
  //}
}

//void mouseClicked(){
//  s1 = new mouseSquare(mouseX, mouseY);
//}

class mouseSquare {
  //variables
  float xpos ;
  float ypos ;
  
  //constructor
  mouseSquare(float x, float y){
    xpos = x ;
    ypos = y ;
  }
  
  void display(){
    rect(xpos, ypos, 40, 40);
  }
  
  //methods
  void rise(){
    ypos = ypos - 1 ;
    //print(ypos);
  }
  
}
