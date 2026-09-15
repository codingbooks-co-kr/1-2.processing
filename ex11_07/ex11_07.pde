// 랜덤한 위치, 색상, 크기로 원을 생성

void setup() {
  size(300, 300);
  background(0);
}

void draw() {
  float x = random(width);
  float y = random(height);
  float c = random(255);
  float d = random(10, 50);
  display(x, y, c, d);
}

void display(float xx, float yy, float cc, float dd) {
  fill(cc, 255, 255, 200);
  ellipse(xx, yy, dd, dd);
}
