// 랜덤하게 생성되는 원으로 특정한 위치의 사각형 영역 만들기

float x1 = 100.0, y1 = 100.0, w = 100.0, h = 100.0;

void setup() {
  size(300, 300);
  background(0);
}

void draw() {
  float x = random(width);
  float y = random(height);
  if (x > x1 && x < x1+w && y > y1 && y < y1+h) {
    fill(255, 255, 0);
    ellipse(x, y, 10, 10);
  }
}
