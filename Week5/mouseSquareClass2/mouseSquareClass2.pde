mouseSquare squares[] = new mouseSquare[10]; 
int n = 0 ;

void setup(){
  size(600,600);
  rectMode(CENTER);
  
  //for (int i = 0; i < squares.length ; i++){
  //  if (squares[i] != null){
  //    squares[i] = new mouseSquare(random(width), random(height));
  //  }
  //}
  
}

void draw(){
  background(0);
  
  for (int i = 0; i < squares.length ; i++){
    //this conditional is for when we created squares with mouseClicked
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
