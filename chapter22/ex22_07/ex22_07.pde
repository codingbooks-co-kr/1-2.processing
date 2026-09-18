// 두 개의 슬라이더를 각각 좌우로 움직이면 연동되는 배경색과 원의 색상이 변경

import controlP5.*;

ControlP5 cp5;
color c1, c2;

void setup() {
  size(500, 500);
  cp5 = new ControlP5(this);
  cp5.addSlider("slider1")
    .setPosition(50, 50)
    .setSize(300, 50)
    .setRange(0, 255)
    .setValue(100)
    .setFont(createFont("Arial", 20));

  cp5.addSlider("slider2")
    .setPosition(50, 150)
    .setSize(50, 300)
    .setRange(0, 255)
    .setValue(100)
    .setFont(createFont("Arial", 20));
}

void draw() { 
  background(c1);
  fill(c2);
  ellipse(300, 300, 200, 200);
}

void slider1(float value) {
  c1 = color(value, 0, 0);
}

void slider2(float value) {
  c2 = color(0, value, 0);
}
