// this is a comment

//defining a global variable
// 1. data type;  2. name; 3. assignment (value) 
int rainDrop = 200 ; 

//setup runs once
void setup(){ 

  //crucially! no variables can be used in the size function
  size(800,600); 
  
  /** 1: parameters:grayscale 0-255
      2: 2nd is opacity
      3: 1st: red, 2nd: green, 3rd: blue
      4: 4th is then opacity
  */
  background(0); 
  
  frameRate(5);
}

//this runs 60 times per second 
void draw() { 
  fill(255,30,200);
  noStroke();
  
  //left eye
  ellipse(rainDrop, 200, 30, 30);
  
  //right eye
  ellipse(rainDrop+380, 200, 30, 30);
  
  //rect parameters: x,y,w,h
  //the tongue?
  rect(width/2, height/2, 200, 100);
  
  //mouth
  stroke(255);
  line(100,height/2,700,height/2);
  
  //print("this is the framerate " + frameRate);

}
