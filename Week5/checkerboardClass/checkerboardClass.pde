//nested loops

//variables for columns & rows
coolRect coolRects[][] = new coolRect[10][10];

//int myInts[] = new int[20] ;

void setup(){
  size(360,360);
  //frameRate(1);
  for(int x=0; x<10; x++){
      for(int y=0; y<10; y++){
        coolRects[x][y] = new coolRect(x*30+30, y*30+30);
      }
    }  
}

void draw (){
  for(int x=0; x < 10; x++){
    for(int y=0; y < 10; y++){
      if (coolRects[x][y].check(mouseX, mouseY)){
        fill(0);
      }
      else {
        fill(255);
      }
      coolRects[x][y].display() ;
    }
  }  
}

class coolRect {
  int x ;
  int y ;
  
  coolRect(int _x, int _y){ //size?//color?
    x = _x ;
    y = _y ;
  }
  
  void display(){
    rect(x, y, 30, 30);
  }
  
  boolean check(float _x, float _y){
    if (_y>y && _y<y+30 && _x>x && _x<x+30){
      return true ;
    }
    else {
      return false ;
    }
  }
  
}
