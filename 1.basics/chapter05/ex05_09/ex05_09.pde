// 가속도와 마찰율을 이용하여 낙하하고 반사 및 감쇄하는 원

float x = 150.0, y = 0.0;
float velocity = 0.0;
float accel = 0.3;
float friction = 0.95;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  fill(255);
  ellipse(x, y, 30, 30);
  velocity += accel;
  y += velocity;
  if (y > height) {
    y = height;
    velocity *= -1;
    velocity *= friction;
  }
}
