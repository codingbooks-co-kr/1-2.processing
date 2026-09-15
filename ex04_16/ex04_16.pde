// noise() 함수를 사용하여 선을 랜덤하게 이어서 그리기

float x, y, tx = 0.0, ty = 0.5;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  float px = x;
  float py = y;
  x = noise(tx) * width;
  y = noise(ty) * height;
  stroke(255);
  line(px, py, x, y);
  tx += 0.01;
  ty += 0.01;
}
