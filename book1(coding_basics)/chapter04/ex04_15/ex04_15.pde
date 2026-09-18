// noise() 함수를 사용하여 원을 상하좌우로 랜덤하게 움직이기

float x, y, tx = 0.0, ty = 0.5;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  x = noise(tx) * width;
  y = noise(ty) * height;
  ellipse(x, y, 30, 30);
  tx += 0.01;
  ty += 0.01;
}
