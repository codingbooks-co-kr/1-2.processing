// 랜덤하게 생성되는 원으로 특정한 위치의 원 영역 만들기

void setup() {
  size(300, 300);
  background(0);
}

void draw() {
  float x = random(width);
  float y = random(height);
  float d = dist(width/2, height/2, x, y);
  if (d < width/2) {
    fill(255, 255, 0);
    ellipse(x, y, 10, 10);
  }
}
