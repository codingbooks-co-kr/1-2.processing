// 좌우 반사하는 원

int x = 0, velocity = 1;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  ellipse(x, height/2, 30, 30);
  x += velocity;
  if (x < 0 || x > width) {
    velocity *= -1;
  }
}
