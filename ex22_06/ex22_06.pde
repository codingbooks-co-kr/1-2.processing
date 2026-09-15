// 슬라이더를 좌우로 움직이면 설정된 값의 범위(0∼255)에 따라 원의 색상 변경

import controlP5.*;

ControlP5 cp5;
color c;

void setup() {
  size(500, 500);
  cp5 = new ControlP5(this);
  cp5.addSlider("slider")
    .setPosition(10, 20)
    .setSize(200, 30)
    .setRange(0, 255)
    .setValue(100);
}

void draw() {
  background(200);
  fill(c);
  ellipse(width/2, height/2, 300, 300);
}

void slider(float value) {
  c = color(0, value, 0);
}
