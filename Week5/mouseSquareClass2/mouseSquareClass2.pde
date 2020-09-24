mouseSquare squares[] = new mouseSquare[10]; 
int n = 0 ;

void setup(){
  size(600,600);
  rectMode(CENTER);
}

void draw(){
  background(0);
  
  for (int i = 0; i < squares.length ; i++){
    if (squares[i] != null){
      squares[i].display();
      squares[i].rise();
    }
  }
}

void mouseClicked(){
  squares[n] = new mouseSquare(mouseX, mouseY);
  n++;
}

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
