PImage sunflower; //declare

void setup() {
  size(640, 425);
  sunflower = loadImage("data/640px-Sunflower.jpg"); //load
  
  //print width of PImage
  println(sunflower.width);
  println(sunflower.height);

  //use a PImage method
  sunflower.filter(POSTERIZE, 4);
}

void draw() {
  image(sunflower, 0, 0); //display
}
