// 버튼을 두 개 생성하고 각 버튼을 누를 때 배경색이 변경

import controlP5.*;

ControlP5 cp5;
color c = color(200);

void setup() {
  size(400, 400);
  cp5 = new ControlP5(this);
  cp5.addButton("buttonA")
    .setPosition(50, 50)
    .setSize(300, 100) 
    .setFont(createFont("Arial", 20));

  cp5.addButton("buttonB")
    .setPosition(50, 170)
    .setSize(300, 100) 
    .setFont(createFont("Arial", 20));
}

void draw() {
  background(c);
}

void buttonA() {
  c = color(255, 0, 0);
}

void buttonB() {
  c = color(0, 255, 0);
}
