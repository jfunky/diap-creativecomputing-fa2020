













void setup(){
  size(360,360);
}

void draw(){
  
  for(int i=30; i < 321; i+=30){
    for(int j=30; j < 321; j+=30){
      if(mouseX > i && mouseY > j && mouseX < i+30 && mouseY < j +30){
        fill(0);
      }
      else {
        fill(255);
      }
      rect(i,j,30,30);
    }
  }  
  
}
