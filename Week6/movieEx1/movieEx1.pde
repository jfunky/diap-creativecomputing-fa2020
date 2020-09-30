import processing.video.*;
Movie mov;

void setup() {
  size(600, 360);
  mov = new Movie(this, "Happy_Halloween_2015.mp4");
  mov.loop();
}

void draw() {
  //tint(255, 20);
  image(mov, 0, 0);
}

// Called every time a new frame is available to read
void movieEvent(Movie m) {
  m.read();
}
