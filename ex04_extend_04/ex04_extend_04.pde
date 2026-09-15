float degree = 0.0;

void setup() {
  size(360, 300);
  background(0);
}

void draw() {
  float y = 100.0 * sin(radians(degree));
  ellipse(degree, height/2+y, 30, 30);
  degree++;
  if (degree > width) { 
    degree = 0;
  }
}
