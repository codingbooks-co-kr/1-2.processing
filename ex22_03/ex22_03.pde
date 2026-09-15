// 토글 버튼을 누를 때마다 원의 색상이 교대로 변경

import controlP5.*;

ControlP5 cp5;
color c = color(100);

void setup() {
  size(500, 500);
  cp5 = new ControlP5(this);
  cp5.addToggle("toggle")
    .setPosition(30, 50)
    .setSize(100, 30)
    .setFont(createFont("Arial", 20));
}

void draw() {
  background(200);
  fill(c);
  ellipse(width/2, height/2, 300, 300);
}

void toggle(boolean flag) {
  if (flag) {
    c = color(255, 0, 0);
  } else {
    c = color(0, 255, 0);
  }
}
