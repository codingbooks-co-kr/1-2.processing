// 원의 등속 이동 (PVector 클래스 사용)

PVector location = new PVector(0, 0);
PVector velocity = new PVector(1, 1);

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  ellipse(location.x, location.y, 30, 30);
  location.add(velocity);
}
