void setup(){
  size(800,600); //fullScreen is also an option here
}

void draw(){
  
  //testing if I roll over the square
  //if yes, make it red
  if (mouseY>200 && mouseY<300 && mouseX>200 && mouseX<300) { //resolve to true
      fill(255,0,0); //only executes if line 8 is "true"
  }
    else { //otherwise; will execute if line 8 is false
      fill(255);
  }  
  
  rect(200,200,100,100);

}

void mouseClicked (){
  //test if I'm on the square
  if (mouseY>200 && mouseY<300 && mouseX>200 && mouseX<300) { //resolve to true
    background(random(255),0,0); 
  }
  else { 
    background(255); //if I click outside of the square
  }  
    
}
