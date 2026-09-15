// 상하좌우 반사하는 원 (PVector 클래스 사용)

PVector location = new PVector(250, 250);
PVector velocity = new PVector(2, 3);

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  ellipse(location.x, location.y, 30, 30);
  location.add(velocity);
  if (location.x < 0 || location.x > width) {
    velocity.x *= -1;
  }
  if (location.y < 0 || location.y > height) {
    velocity.y *= -1;
  }
}
