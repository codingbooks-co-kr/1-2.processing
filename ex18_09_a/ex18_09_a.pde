// 불규칙 운동 (PVector 클래스 미사용)

float x = 250, y = 250, velocity = 10;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  x += random(-velocity, velocity);
  y += random(-velocity, velocity);
  ellipse(x, y, 30, 30);
  x = constrain(x, 0, width);
  y = constrain(y, 0, height);
}
