// A polar coordinate
float r = 50;
float theta = 0;

void setup() {
  size(400, 400);
  background(255);
}

void draw() {
  //background(255);
  
  float x = r * cos(theta);
  float y = r * sin(theta);

  fill(0);
  ellipse(x + width/2, y + height/2, 4, 4); 
  // Increment the angle
  theta += 0.01;
  
}
