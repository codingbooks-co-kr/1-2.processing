// 버튼을 누를 때마다 원의 색상이 랜덤하게 변경

import controlP5.*;

ControlP5 cp5;
color c = color(100);

void setup() {
  size(500, 500);
  cp5 = new ControlP5(this);
  cp5.addButton("button")
    .setPosition(30, 50)
    .setSize(100, 30);
}

void draw() {
  background(200);
  fill(c);
  ellipse(width/2, height/2, 300, 300);
}

void button() {
  c = color(random(255), random(255), random(255));
}
