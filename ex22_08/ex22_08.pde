// 텍스트 입력창에 특정 이름이 입력되는 경우에만 해당 이름 출력, 이외는 None 출력

import controlP5.*;

ControlP5 cp5;
String name = "None";

void setup() {
  size(500, 500);
  cp5 = new ControlP5(this);
  cp5.addTextfield("input")
    .setPosition(20, 50)
    .setSize(200, 50)
    .setFont(createFont("arial", 20));
  textSize(50);
  textAlign(CENTER);
}

void draw() {
  background(0);
  switch(name) {
  case "kim":
    text(name, 100, 300);
    break;
  case "lee":
    text(name, 200, 300);
    break;
  case "park":
    text(name, 300, 300);
    break;
  default:
    text("None",250, 300);
    break;
  }
}

void input(String text) {
  name = text;
}
