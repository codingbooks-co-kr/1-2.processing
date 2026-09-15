// 원 좌우 반사 (함수 사용)

float c, x, y, d, velocity;

void setup() {
  size(300, 300);
  c = 255;
  x = width/2;
  y = height/2;
  d = 30;
  velocity = 1;
}

void draw() {
  background(0);
  display();
  move();
}

void display() {
  fill(c, 255, 0);
  ellipse(x, y, d, d);
}

void move() {
  x += velocity;
  if (x < 0 || x > width) {
    velocity *= -1;
  }
}
