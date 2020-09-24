color c0 ;
int brushes ;

//datatype, name followed by brackets, and then the assignment
color c[] = new color[4]; //declare empty array 4 spots

boolean b[] = {true, false, false}; //declaring & initializing an array with 3 values/elements
int integers[] = {1, 2, 3} ; //3 elements

//index variable
int n = 0 ;

void setup(){
  size(400,400);
  
  //print(integers[1]);
    
  //initializing the c array with colors
  //c0 = color(255, 0, 200);
  
  c[0] = color(255, 0, 200);
  c[1] = color(255, 100, 0);
  c[2] = color(0, 200, 255);
  c[3] = color(0, 255, 150);  
}

void draw(){
  
  //use int on the assignment to turn 
  //int r = int(random((c.length)));

  background(c[n]);
  //println(n);
}

void mouseClicked(){
  if (n < 3){
    n += 1 ;
    //add logic to reset to the first index
  }
  else {
    n = 0;
  }
  
  //alternatively:
  //n = (n+1) % c.length ; //when n+1 is equal to 4, the remainder is zero
  //println(n);
  
}
