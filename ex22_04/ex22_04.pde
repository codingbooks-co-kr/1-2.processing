// 노브를 좌우로 움직이면 설정된 휠 값(0∼255)에 따라 배경 색상 변경

import controlP5.*;

ControlP5 cp5;
color c;

void setup() {
  size(500, 500);
  cp5 = new ControlP5(this);
  cp5.addKnob("knob")
    .setPosition(100, 100)
    .setRange(0, 255)
    .setRadius(150)
    .setValue(100);
}

void draw() {
  background(c);
}

void knob(float value) {
  c = color(value);
}
