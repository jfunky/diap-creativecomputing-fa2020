float x[] = new float[4];
float y[] = new float[4];

void setup(){
  size(800,720);
  
  x[0] = 100;
  x[1] = 90;
  x[2] = 400;
  x[3] = 390;
  
  y[0] = 100;
  y[1] = 280;
  y[2] = 100;
  y[3] = 280;
  
}

void draw(){

  background(230,230,250);
  noFill();
  stroke(75,0,130);
  //line(100,100,90,280);
  //line(400,100,390,280);
  //bezier(100,100,90,280,400,100,390,280);
  
  line(x[0],y[0],x[1],y[1]);
  line(x[2],y[2],x[3],y[3]);
  bezier(x[0],y[0],x[1],y[1],x[2],y[2],x[3],y[3]);
 
  for (int i=0; i<4; i++){
    ellipse(x[i],y[i],5,5);
  }
 
}

void mouseDragged(){
  
  for (int i=0; i<4; i++){
    if (dist(mouseX,mouseY,x[i],y[i]) < 7){
      x[i] = mouseX ;
      y[i] = mouseY ;
    }
  }
}

void mousePressed(){
  println("x: " + mouseX) ;
  println("y: " + mouseY) ;
}
