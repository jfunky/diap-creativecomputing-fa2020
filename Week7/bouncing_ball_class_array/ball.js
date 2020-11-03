class Ball {
  constructor(_x, _y, _d) {
    this.x = _x;
    this.y = _y;
    this.xDir = 1;
    this.yDir = 1;
    this.xSpeed = 5;
    this.ySpeed = 2;
    this.d = _d;
  }

  display() {
    fill(45, 100, 100);
    ellipse(this.x, this.y, this.d, this.d);
    noFill();
  }

  move() {
    this.x += 1 * this.xDir;
    this.y += 1 * this.yDir;
  }

  bounce() {
    if (this.x < 0 || this.x > width) {
      this.xDir = this.xDir * -1;
    }
    if (this.y < 0 /*|| this.y > height*/ ) {
      this.yDir = this.yDir * -1;
    }
  }
  
}