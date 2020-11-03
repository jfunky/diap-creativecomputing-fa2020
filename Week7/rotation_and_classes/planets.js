class Planet {
  //what variables do we need to modify?
  // location??
  // speed of rotation??
  //what variables do we have to initialize when we create the class?
  constructor(_x, _y, _size, _v, _c) {
    //any of these could be defined by parameters
    //on the constructor:
    this.angle = 0 ;
    this.size = _size ;
    this.x = _x;
    this.y = _y;
    this.v = _v; //increases the angle (animates the rotation)
    this.c = _c; //the color
  }

  display() {
    push();
    ellipseMode(CENTER); //this is default
    fill(this.c);
    translate(width / 2, height / 2); //move to the center
    // angle += v;
    rotate(this.angle);
    ellipse(this.x, this.y, this.size, this.size);
    pop();

  }

  spin() {
    this.angle += this.v; 
  }

}