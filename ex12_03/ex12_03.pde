// 마우스를 누르는 좌표에 생성되는 원들을 선으로 연결

float x1, y1, x2, y2;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  stroke(255, 255, 0);
  fill(255, 255, 0);
  ellipse(x1, y1, 30, 30);
  line(x1, y1, x2, y2);
  x2 = x1;
  y2 = y1;
}

void mousePressed() {
  x1 = mouseX;
  y1 = mouseY;
}
