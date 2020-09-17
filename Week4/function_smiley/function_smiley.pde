void setup() {
  size(400, 400);
}
void draw() {
  background(255);
  
  if (mousePressed){
    face(mouseX, mouseY);
  }
  
  face(100,100);
  
}

void face (float faceX, float faceY) { 
  //face
  fill(255, 0, 255, 25);
  ellipse(faceX, faceY, 200, 200);
  
  //eyes
  fill(0);
  ellipse(faceX-40, faceY-40, 10, 20);
  ellipse(faceX+40, faceY-40, 10, 20);
  
  //smile
  noFill();
  //V.P. suggests an arc**
  //bezier(250,220, 250,280, 150,280, 150,220);
  
}
