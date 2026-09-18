// 입력 다이얼로그창에 각도를 입력하고 해당하는 각도의 원호 그리기

import javax.swing.JOptionPane;

int degree = 90;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  arc(width/2, height/2, 200, 200, 0, radians(degree));
}

void mousePressed() {
  String angle = JOptionPane.showInputDialog("Enter an angle");
  if (angle == null) {
    angle = "90";
  }
  degree = int(angle);
} 
