// 텍스트 입력창에 각도를 입력하고 해당하는 각도의 원호 그리기

import controlP5.*;

ControlP5 cp5;
int degree = 90;

void setup() {
  size(500, 500);
  cp5 = new ControlP5(this);
  cp5.addTextfield("input")
    .setPosition(20, 50)
    .setSize(200, 50)
    .setFont(createFont("arial", 20));
}

void draw() {
  background(0);
  arc(width/2, height/2, 200, 200, 0, radians(degree));
}

void input(String text) {
  degree = int(text);
}
