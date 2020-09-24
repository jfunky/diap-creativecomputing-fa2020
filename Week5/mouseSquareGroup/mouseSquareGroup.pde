//declaring a mouseSquare object
mouseSquare squares[] = new mouseSquare[10]; 
int index = 0 ;

void setup(){
  size(600,600);
  
  //quickly make 100 randomly colored squares
  //for (int i=0; i<100; i++){
  //  color randomCol = color(random(255), 100, 100);
  //  squares[i] = new mouseSquare(random(600), random(600), randomCol);
  //}
  
  //float xpos = random(600);
  //float ypos = random(600);
  
  //square2 = new mouseSquare(xpos, ypos);
  //println(square1.xpos);
  
}

void draw(){
  background(0);
  
  for (int i=0; i<10; i++){
    if (squares[i] != null){ 
      squares[i].drawRect();
      squares[i].up();
    }
  }

  
}

void mouseClicked(){
  color randomCol = color(random(255), 100, random(255));
  squares[index] = new mouseSquare(mouseX, mouseY, randomCol);
  index++;
}
