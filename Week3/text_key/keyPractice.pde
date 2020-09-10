
float x = 50 ;
//boolean isTrue = true ;

void setup () {
  size(800,600);
  background(0);
  textSize(24);
}

void draw (){
  
  //if (keyPressed) {
  //  text(key,x,50);
  //  x += textWidth(key);
  //  println(x);
  //}
}

void keyPressed(){
    text(key,x,50);
    x += textWidth(key);
    println(x);
}
