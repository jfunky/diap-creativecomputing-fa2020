//nested loops

void setup(){
  size(360,360);
  //frameRate(1);
}

void draw (){
  for(int x=30; x < 330; x+=30){
    for(int y=30; y < 321; y+=30){
      if (mouseY>y && mouseY<y+30 && mouseX>x && mouseX<x+30){
        fill(0);
      }
      else {
        fill(255);
      }
      rect(x, y, 30, 30);
    }
  }  
}
