float theta  ;
float orbitTheta ;
float scalar = .5;

void setup(){
  size(800,600);
  //rectMode(CENTER);
}

void draw(){
  theta = map(mouseX,0,width,0,TWO_PI) ; //is there a better way to do this based on map?
  orbitTheta += .1 ;
  noFill();
  
  pushMatrix();
    stroke(3);
    stroke(255);
    //command to make this rectangle relative to the center
    //translate(width/2,height/2); 
    //scale(scalar);
    //rotate some position away from that place
    rotate(orbitTheta);
    rect(150,150,80,60);
  popMatrix(); //will restore the coordinate system, specifically
  
  //push will save coordinate system & style info
  //push(); 
  pushMatrix(); //will save the coordinate system, specifically
    stroke(0);
    //translate(width/2,height/2); 
    //rotate was radians by default
    rotate(theta); //we can use the radians() function to calculate based on degrees
    rect(0,0,180,160);
  popMatrix();
  
   
  
}
