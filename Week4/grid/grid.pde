float x = 0;
float y = 0;

void setup(){
  size(600,600);
  background(240);
  
  //while ( //exit condition ) { ** exit condition must become false
  //  //keep running until the condition specified above is set
  //}
 
  //horizontal line with a while loop
  while ( y < height ) {
    stroke(255, 0, 0); //red
    line(0, y, width, y);
    y+=50;
    println(y);
  } //if the while condition hasn't been met, you return to line 9*
  
  //vertical line with a while loop
  //while (x < width) {
  //  stroke(0, 100, 255); //blue
  //  line(x, 0, x, height);
  //  x+=50;
  //}
  
  //vertical line loop rewritten as a for loop
  
  //"i" does not exists outside of its for block
  //println(i);
  for (int i=0; i < width; i+=50){
    blueline(i);
  }
  
  frameRate(1);
  
}

void draw (){
  
  blueline(30);
  
  //println(lineX);
  
}

//lineX is locally scoped to this block
void blueline (int lineX){
  stroke(0, 100, 255); //blue
  line(lineX, 0, lineX, height);
}
