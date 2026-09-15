// 마우스를 누른 좌표를 기점으로 마우스가 움직이는 위치까지 방사형의 선 생성

float x, y;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  if (mousePressed) {
    stroke(random(255), random(255), random(255));
    line(x, y, mouseX, mouseY);
  }
}

void mousePressed() {
  x = mouseX;
  y = mouseY;
}
