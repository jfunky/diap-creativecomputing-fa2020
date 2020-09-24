float xpos[] = new float[100] ;
float ypos[] = new float[100] ;
boolean newRect[] = new boolean[100] ;
int index = 0 ; //use to intantiate new objects

void setup(){
  size(600,600);
  rectMode(CENTER);
  
  for (int i=0; i < 100; i++){
    newRect[i] = false ;
    //xpos[i] = random(600);
    //ypos[i] = random(600);
  }
}

void draw(){
  //background(0);
  
  for (int i=0; i < 100; i++){
    if (newRect[i] == true){
      rect(xpos[i], ypos[i], 40, 40);
    }
    ypos[i]--;
  }
  
}

void mouseClicked(){
  index++;
  xpos[index] = mouseX ;
  ypos[index] = mouseY ;
  newRect[index] = true ;
}
