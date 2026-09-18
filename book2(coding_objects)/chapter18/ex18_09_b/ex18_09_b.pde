// 불규칙 운동 (PVector 클래스 사용)

PVector location = new PVector(250, 250);
PVector velocity = new PVector(0, 0);

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  velocity.x = random(-10, 10);
  velocity.y = random(-10, 10);
  location.add(velocity);
  ellipse(location.x, location.y, 30, 30);
  location.x = constrain(location.x, 0, width);
  location.y = constrain(location.y, 0, height);
}
