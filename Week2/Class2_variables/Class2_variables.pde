//declare global variables 
int faceX ; 
int faceY ;

//setup runs once
void setup(){ 
  size(600, 800);
  
  //initialize variables after width & height are defined
  faceX = width/2;
  faceY = height/2;
  
  background(255);
  frameRate(20);
}

//this runs 60 times per second 
void draw() { 
  noFill();
  ellipse(faceX, faceY, 500, 500);
  
  fill(255,30,200);
  stroke(0);
  //left eye
  ellipse(faceX-150, faceY-150, 30, 30);
  
  //right eye
  ellipse(faceX+150, faceY-150, 30, 30);
  
  //rect parameters: x,y,w,h
  //the tongue?
  rect(faceX, faceY, 100, 80);
  
  //mouth
  line(faceX-200,faceY,faceX+200,faceY);
  
  //increment faceX
  faceX = faceX + 1 ;
  
}
