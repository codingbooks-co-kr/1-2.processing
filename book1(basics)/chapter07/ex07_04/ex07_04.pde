// 랜덤한 위치에 원 문양 그리기

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  float x = random(width);
  float y = random(height);
  for (int i = 100; i > 0; i -= 20) {
    fill(random(255), random(255), random(255));
    ellipse(x, y, i, i);
  }
}
