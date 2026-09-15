// random() 함수 및 constrain() 함수를 사용하여 원의 불규칙한 움직임을 구현

float x = 250.0, y = 250.0, velocity = 10.0;

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
