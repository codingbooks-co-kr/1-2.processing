// 원의 가속 이동 (PVector 클래스 사용)

PVector location = new PVector(0, 0);
PVector velocity = new PVector(0, 0);
PVector accel = new PVector(0.2, 0.2);

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  ellipse(location.x, location.y, 30, 30);
  velocity.add(accel);
  location.add(velocity);
}
