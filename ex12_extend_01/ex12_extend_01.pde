// [질문12.2]의 mousePressed() 대신 시스템 변수인 mousePressed를 사용

float x, y, d = 50.0;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  noStroke();
  fill(255, 255, 0);
  ellipse(x, y, d, d);
  if (mousePressed) {
    x = mouseX;
    y = mouseY;
  }
}
