// 원의 마찰 이동 (PVector 클래스 사용)

PVector location = new PVector(0, 0);
PVector velocity = new PVector(10, 10);
float friction = 0.98; 

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  ellipse(location.x, location.y, 30, 30);
  velocity.mult(friction);
  location.add(velocity);
}
