mouseSquare squares[] = new mouseSquare[10]; 
Particle raindrops[] = new Particle[10];
int n = 0 ;

//Particle p ;

void setup(){
  size(600,600);
  rectMode(CENTER);
  
  for (int i=0; i<raindrops.length; i++){
    raindrops[i] = new Particle(random(width), random(-10, 0));
  }
  
}

void draw(){
  background(0);
  
  for (int i=0; i < squares.length ; i++){
    if (squares[i] != null){
      squares[i].display();
      
      
      //check against each element of the array
      for (int j=0; j<raindrops.length; j++){
        squares[i].rain(raindrops[j]);
        println(squares[i].rain(raindrops[j]));
        
        //in-class exploration of directionality &
        //boolean methods --
        //if (squares[i].rain(raindrops[j])) {
        //  squares[i].rise(1);
        //}
        //else {
        //  squares[i].rise(-1);
        //}
      }
      
    }
  }
  
  for (int j=0; j<raindrops.length; j++){
    raindrops[j].display();
    raindrops[j].fall();
  }
  
  
}

void mouseClicked(){
  squares[n] = new mouseSquare(mouseX, mouseY, color(255));
  n++;
}
