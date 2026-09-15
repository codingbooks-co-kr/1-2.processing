// Rectangle 클래스를 이용하여 마우스가 사각형 내부에 들어가면 색상 변경

import java.awt.Rectangle;

Rectangle r1, r2;

void setup() {
  size(500, 500);
  r1 = new Rectangle(150, 150, 200, 200);
  r2 = new Rectangle(0, 0, 50, 50);
}

void draw() {
  background(0);
  r2.x = mouseX;
  r2.y = mouseY;
  if (r1.intersects(r2)) {
    fill(255, 0, 0);
  } else {
    fill(255, 255, 0);
  }
  rect(r1.x, r1.y, r1.width, r1.height);
  rect(r2.x, r2.y, r2.width, r2.height);
}
