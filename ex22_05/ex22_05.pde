// 두 개의 노브를 각각 좌우로 움직이면 각 노브에 연동되는 사각형의 색상 변경 

import controlP5.*;

ControlP5 cp5;
color c1, c2;

void setup() {
  size(500, 500);
  cp5 = new ControlP5(this);
  cp5.addKnob("knob1")
    .setPosition(50, 100)
    .setRadius(50)
    .setRange(0, 255)
    .setValue(50)
    .setFont(createFont("Arial", 20));

  cp5.addKnob("knob2")
    .setPosition(50, 300)
    .setRadius(50)
    .setRange(0, 255)
    .setValue(200)
    .setFont(createFont("Arial", 20));
}

void draw() {
  background(200);
  fill(c1);
  rect(200, 100, 250, 100);
  fill(c2);
  rect(200, 300, 250, 100);
}

void knob1(float value) {
  c1 = color(value, 0, 0);
}

void knob2(float value) {
  c2 = color(0, value, 0);
}
