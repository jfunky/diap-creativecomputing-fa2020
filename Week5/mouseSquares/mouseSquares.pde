//declaring a mouseSquare object
mouseSquare square1 ;
mouseSquare square2 ;

void setup(){
  size(600,600);
  
  float xpos = random(600);
  float ypos = random(600);
  
  square2 = new mouseSquare(xpos, ypos);
  //println(square1.xpos);
  
}

void draw(){
  background(0);
  
  if (square1 != null){
    square1.drawRect();
    square1.up();
  }
  
  if (square2 != null){
    square2.drawRect();
    square2.up();
  }
  
}

void mouseClicked(){
  //logic to create multiple ...
  square1 = new mouseSquare(mouseX, mouseY);
}
