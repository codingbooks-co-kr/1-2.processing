// 마우스를 누르는 좌표에 원 생성

float x, y, d = 50.0;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  noStroke();
  fill(255, 255, 0);
  ellipse(x, y, d, d);
}

void mousePressed() {
  x = mouseX;
  y = mouseY;
}
