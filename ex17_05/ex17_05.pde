// Rectangle 클래스를 이용하여 마우스가 사각형 내부에 들어가면 색상 변경

import java.awt.Rectangle;

Rectangle r;

void setup() {
  size(500, 500);
  r = new Rectangle(150, 150, 200, 200);
}

void draw() {
  background(0);
  if (r.contains(mouseX, mouseY)) {
    fill(255, 0, 0);
  } else {
    fill(255, 255, 0);
  }
  rect(r.x, r.y, r.width, r.height);
}
