mouseSquare squares[] = new mouseSquare[10]; 
int n = 0 ;

Particle p ;

void setup(){
  size(600,600);
  rectMode(CENTER);
  
  p = new Particle(random(width), random(height));
}

void draw(){
  background(0);
  
  for (int i = 0; i < squares.length ; i++){
    if (squares[i] != null){
      squares[i].display();
      squares[i].rise();
      squares[i].rain(p);
    }
  }
  
  p.display();
  p.fall();
  
}

void mouseClicked(){
  squares[n] = new mouseSquare(mouseX, mouseY, color(255));
  n++;
}
