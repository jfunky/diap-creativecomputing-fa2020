float s = 150 ; 

void setup(){
  size(800,600); //fullScreen is also an option here
}

void draw(){
  
  //if mouseX & mouseY in within the radial bounds of the circle
  //test mouseX & mouseY are between width/2, height/2 & radius
  if (dist(width/2, height/2, mouseX, mouseY) < s/2) { //resolve to true
      fill(255,0,0); //only executes if line 8 is "true"
  }
    else { //otherwise; will execute if line 8 is false
      fill(255);
  }  
  
  ellipse(width/2,height/2,s,s);

}

void mouseClicked (){
  //test if I'm on the square
  if (dist(width/2, height/2, mouseX, mouseY) < s/2) { //resolve to true
    background(random(255),0,0); 
  }
  else { 
    background(255); //if I click outside of the square
  }  
    
}
