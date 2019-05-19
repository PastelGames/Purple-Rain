class Drop {
  float z = random(1, 15);
  float x = random(width); 
  float y = 0;
  float angle = 0;
  float yspeed = map(z, 1, 15, 10, 25);
  float dropHeight = map(z, 1, 15, 20, 45);
  float dropSize = map(z, 1, 15, 2, 6);
  
  void fall() {
    y = y + yspeed;
    if (y > height) {
      y = 0;
    }
    x = x + angle;
    if (x > width) x = 0;
    else if (x < 0) x = width;
  }
  
  void show() {
     stroke(138, 43, 226);
     line(x,y,x + angle, y + dropHeight);
     strokeWeight(dropSize);
  }
  
  void blow(float newAngle) {
    angle = newAngle;
  }
}
