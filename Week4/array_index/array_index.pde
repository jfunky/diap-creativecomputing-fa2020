color c[] = new color[4]; //4 elements
boolean b[] = {true, false, false};

//index variable
int n = 0 ;

int integers[] = {1, 2, 3} ; //3 elements

void setup(){
  size(400,400);
  
  //print(integers[1]);
    
  //initializing the c array with colors
  c[0] = color(255, 0, 200);
  c[1] = color(255, 100, 0);
  c[2] = color(0, 200, 255);
  c[3] = color(0, 255, 150);
  
  //int r = random((integers.length));
  
}

void draw(){
 background(c[n]);
}

void mouseClicked(){
  n += 1 ;
  //add logic to reset to the first index
}
