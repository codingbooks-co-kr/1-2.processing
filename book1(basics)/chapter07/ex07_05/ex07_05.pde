// 랜덤한 색상, 위치 및 크기를 가진 사각형 100개 그리기

void setup() {
  size(500, 500);
  frameRate(2);
}

void draw() {
  background(0);
  for (int i = 0; i < 100; i++) {
    fill(random(255), random(255), random(255), random(255));
    float x = random(width);
    float y = random(height);
    float w = random(width);
    float h = random(height);
    rect(x, y, w, h);
  }
}
