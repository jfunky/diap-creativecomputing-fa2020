float x = 0;
float y = 0;

void setup(){
  size(600,600);
  background(240);
  
  //horizontal line
  stroke(255, 0, 0); //red
  line(0, 100, width, 100);
  
  //vertical line
  stroke(0, 100, 255); //blue
  line(100, 0, 100, height);
  
}

void draw (){
}
