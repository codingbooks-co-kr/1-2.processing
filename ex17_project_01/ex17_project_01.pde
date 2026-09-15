// 좌우 반사하는 팩맨 만들기
// showInputDialog() 메소드를 사용하여 개폐 각도 수정

import javax.swing.JOptionPane;

int x = 0, degree = 0, maxDegree = 40, velocity = 1; 

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  if (velocity > 0) {
    arc(x, height/2, 150, 150, radians(degree), radians(360-degree));
  } 
  if (velocity < 0) {
    arc(x, height/2, 150, 150, radians(180+degree), radians(3*180-degree));
  }

  x += velocity;
  degree++;
  if (x < 0 || x > width) {
    velocity *= -1;
  }
  if (degree >= maxDegree) {
    degree = 0;
  }
}

void mousePressed() {
  String angle = JOptionPane.showInputDialog("Enter an angle");
  if (angle == null) {
    angle = "40";
  }
  maxDegree = int(angle);    // 문자열에서 실수로 형변환하여 각도 저장
}
