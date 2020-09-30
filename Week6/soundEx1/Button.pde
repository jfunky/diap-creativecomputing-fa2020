class Button {
  // Location and size
  float x;
  float y;
  float r;
  // Create the button
  Button(float x_, float y_, float r_) {
    x = x_;
    y = y_;
    r = r_;
  }
  // Is the mouse over the button?
  boolean contains(float mx, float my) {
    if (dist(mx, my, x, y) < r) {
      return true;
    } else {
      return false;
    }
  }
  // Show the button
  void display(float mx, float my) {
    if (contains(mx, my)) {
      fill(220,100,100);
    } else {
      fill(220,100,60);
    }
    stroke(0);
    strokeWeight(4);
    ellipse(x, y, r, r);
  }
}
