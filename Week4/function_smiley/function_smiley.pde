void setup() {
  size(400, 400);
}
void draw() {
  background(255);
  
  //face
  fill(255, 0, 255, 25);
  ellipse(width/2, height/2, 200, 200);
  
  //eyes
  fill(0);
  ellipse(160, 160, 10, 20);
  ellipse(240, 160, 10, 20);
  
  //smile
  noFill();
  bezier(250,220, 250,280, 150,280, 150,220);

}
