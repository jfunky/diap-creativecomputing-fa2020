// Starting angle
float theta = 0.0;

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  // Increment theta
  theta += 0.01;
  noStroke();
  fill(0);
  float x = theta;
  // A simple way to draw the wave with an ellipse at each location
  for (int i = 0; i < 100; i++) {
    // Calculate y value based off of sine function using map()
    //map to a color?
    float y = map(sin(x), -1, 1, 0, height);
    // Draw an ellipse
    ellipse(i * 10, y, 16, 16);
    // Move along x-axis
    x += 0.1;
  }
}
