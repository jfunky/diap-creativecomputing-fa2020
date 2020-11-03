// polar coordinate reference: https://www.desmos.com/

let theta = 0 ; //angle 0 in radians

function setup(){
  createCanvas(400,400);
  background(255);
  colorMode(HSB,360,100,100,100);
}

function draw(){
  //noStroke();  
  
  
  // x = radius * cosine(angle)
  // y = radius * sine(angle)
  let x = 100 * cos(theta);
  let y = 100 * sin(theta);
  let h = map(mouseX,0,width,0,360); 
  
  fill(h,90,90,20);
  ellipse(x+width/2,y+height/2,20,20);
  
  
  theta+=0.05;
}