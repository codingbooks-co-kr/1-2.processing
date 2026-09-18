// 세 개의 사각형 중 하나를 마우스로 선택하면 원의 크기가 변경

import java.awt.Rectangle;

Rectangle[] r = new Rectangle[3];
float size = 100;

void setup() { 
  size(500, 500);
  for (int i = 0; i < r.length; i++) { 
    r[i] = new Rectangle(110*(i+1), 100, 50, 50);
  }
} 

void draw() { 
  background(0);
  fill(0, 0, 255);
  ellipse(width/2, height/2, size, size);
  for (int i = 0; i < r.length; i++) {
    if (r[i].contains(mouseX, mouseY)) {
      fill(255, 0, 0);
      size = 200*(i+1);
    } else {
      fill(255, 255, 0);
    }
    rect(r[i].x, r[i].y, r[i].width, r[i].height);
  }
}
