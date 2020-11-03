mouseSquare s1 ;

mouseSquare s2 ;
mouseSquare s3 ;

void setup(){
  size(600,600);
  rectMode(CENTER);
  //print(s1);
  s1 = new mouseSquare(width/2, 400);
  
  s2 = new mouseSquare(200, 200);
  s3 = new mouseSquare(400, 200);


}

void draw(){
  //if (s1 != null){
    s1.nose();
    s1.vibration();
  //}
  
    s2.eye();
    s2.vibration();
    
    s3.eye();
    s3.vibration();
}

//void mouseClicked(){
//  s1 = new mouseSquare(mouseX, mouseY);
//}

class mouseSquare {
  //instance variables
  float xpos ;
  float ypos ;
  
  //constructor
  mouseSquare(float x, float y){
    xpos = x ;
    ypos = y ;
  }
  
  //methods
  void nose(){
    fill(255, 255, 200);
    rect(xpos, ypos, 40, 40);
  }
  
  void eye(){
    fill(255, 255, 200);
    ellipse(xpos, ypos, 40, 40);
    fill(255);
    ellipse(xpos+10,ypos-10,5,5);
  }
  
  void vibration(){
    xpos = random(xpos-10, xpos+10);
    ypos = random(ypos-10, xpos+10);
    //ypos = ypos - 1 ;
    //print(ypos);
  }
  
}
