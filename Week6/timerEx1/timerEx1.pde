int index = 0;
int previousMillis = 0 ;
int rectGray = 100 ;

color c[] = new color[4]; //empty array with places for 4 colors

void setup(){
  size(800,600);
  rectMode(CENTER);
  
  colorMode(HSB,360,100,100);
  
  //assign hues with an array
  for (int i = 0; i < c.length; i++){
    c[i] = color(i*20,90,90);
  }
  
}

void draw(){
  
  background(c[index]); //we increment using modulo below
  fill(0, 0, rectGray); 
  rect(width/2, height/2, 220, 200);
 
  int currentMillis = millis();
  
  //change color every 2 seconds
  if ((currentMillis - previousMillis ) > 2000){ //resolve to true in order to execute
     // println(scalar);
     index = (index + 1) % c.length ;
     // print(index);
     print(currentMillis);
     previousMillis = currentMillis;
  }
  
  //rectGray gets darker every 100 frames
  if (frameCount % 100 == 0){
    rectGray -= 20 ;
  }
 
  
}
