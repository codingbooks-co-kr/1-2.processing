// 별 문양 그리기

void setup() {
  size(300, 300);
  background(0);
}

void draw() {
  fill(255);
  star(width/2, height/2);
}

void star(float x, float y) {
  float angle = TWO_PI / 5.0;
  beginShape();
  for (float i = 0.0; i < TWO_PI; i += angle) {
    float sx = x + 50.0 * cos(i);
    float sy = y + 50.0 * sin(i);
    vertex(sx, sy);    // 내부 원주상의 꼭지점
    sx = x + 100.0 * cos(i + angle/2);
    sy = y + 100.0 * sin(i + angle/2);
    vertex(sx, sy);    // 외부 원주상의 꼭지점
  }
  endShape(CLOSE);
}
