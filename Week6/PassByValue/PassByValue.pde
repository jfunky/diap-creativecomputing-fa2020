//Link to 8.6: Pass by Value vs. Pass by Reference
//https://www.youtube.com/watch?v=hNR6fsksEu8&list=PLRqwX-V7Uu6bb7z2IJaTlzwzIg_5yvL4i&index=6&frags=wn&ab_channel=TheCodingTrain

//Note that technically Java is always "pass by value"

//primitive variables work like "pass by value"
float xval = 100 ;

//objects work like "pass by reference"
Particle q ;

void setup(){
  newVal(xval);
  //xval = newVal(xval);
  println("value of xval: " + xval);
  
  q = new Particle(150, 250);  
  newVal(q.x);
  println("value of q.x: " + q.x);
  
}

void newVal(float var){
  var = var * 2 ;
  //return var ;
  println("value of var: " + var);
}

class Particle {
  float x;
  float y;
  
  Particle (float _x, float _y){
    x = _x ;
    y = _y ;
  }
  
  void change(Particle oth){
    oth.x = 300 ;
  }
  
}
