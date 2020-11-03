let ball = [] ;

function setup() {
  createCanvas(400, 400);
  
  for (let i=0; i < 10; i++){
    ball[i] = new Ball(random(0,width), random(0,height), 15); 
  }

}

function draw() {
  background(195, 56, 42);
  
   for (let i=0; i < 10; i++){
    ball[i].display();
    ball[i].move();
    ball[i].bounce();  
     
    //check every ball 
    //if ball moves off the screen
    if (ball[i].x > width){
      nextBall = new Ball(random(0,width), random(0, height), 15);
      ball.splice(i, 1, nextBall);
    }
     
   } 

  
}