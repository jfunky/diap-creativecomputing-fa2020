let p1 ;
let p2 ;
let p3 ;

function setup(){
  createCanvas(600,400);
  rectMode(CENTER);
  colorMode(HSB,360,100,100);
	
  p1 = new Planet(0, 0, 100, 1, color(40,90,90));
  p2 = new Planet(150, 100, 60, 0.1, color(100,100,60));
  p3 = new Planet(150, 100, 50, 0.01, color(190,90,90));  
}

function draw(){
  
  background(300,50,40);
	
	// rotate(radians(degreeanglevalue));
	
	p1.spin();
    //you can access values from your class 
    //with this dot syntax:
	//print(p1.size);
	p1.display();
	
	p2.spin();
	// print(p2.angle);
	p2.display();
	
	p3.spin();
	p3.display();

}

//find the class in the planet.js file
// class Planet {
// }