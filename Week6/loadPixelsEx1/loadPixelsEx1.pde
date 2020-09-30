
void setup() {
  size(200, 200);
  //pixelDensity(2);
}

void draw() {
  loadPixels();
  for (int x = 0; x < pixelWidth; x++) {
    for (int y = 0; y < pixelHeight; y++) {
      int loc = x + y * pixelWidth;
      pixels[loc] = color(random(255),random(255),random(255));
    }
  }
  updatePixels();
}
