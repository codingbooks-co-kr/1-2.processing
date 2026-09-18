// 세 개의 특정 이름만 출력하고 이외는 None 출력

import javax.swing.JOptionPane;

String name = "None";

void setup() {
  size(400, 200);
  textSize(50);
  textAlign(CENTER);
}

void draw() {
  background(0);
  switch(name) {
  case "kim":
    text(name, 100, height/2);
    break;
  case "lee":
    text(name, 200, height/2);
    break;
  case "park":
    text(name, 300, height/2);
    break;
  default:
    text("None", width/2, height/2);
    break;
  }
}

void mousePressed() {
  name = JOptionPane.showInputDialog("Enter your name");
  if (name == null) {
    name = "None";
  }
}
