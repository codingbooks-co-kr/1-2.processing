// 논리 오류

int x = 0, velocity = 1;

void setup() {
  size(300, 300);
}

void draw() {
  int velocity = 1;
  background(0);
  ellipse(x, height/2, 30, 30);
  x += velocity;
  if(x > width) {
    velocity *= -1;
  }
}
