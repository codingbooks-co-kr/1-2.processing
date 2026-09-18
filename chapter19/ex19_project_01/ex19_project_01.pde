// 입력된 이름은 랜덤한 색상과 속도로 상하좌우 반사. 다섯 개를 넘으면 0번 요소 삭제

import javax.swing.JOptionPane;

ArrayList<Name> list;

void setup() {
  size(500, 500);
  list = new ArrayList<Name>();
}

void draw() {
  background(0);
  for (int i = 0; i < list.size(); i++) {
    Name n = list.get(i);
    n.display();
    n.move();
    n.bounce();
  }
  if (list.size() > 5) {
    list.remove(0);
  }
}

void mousePressed() {
  Name n = new Name(mouseX, mouseY);
  n.str = JOptionPane.showInputDialog("Enter your name");
  if (n.str == null) {
    n.str = "None";
  }
  list.add(n);
}

// 클래스 코드

class Name {
  PVector location, velocity;
  color col;
  String str;
  float d;

  Name(float x, float y) {
    location = new PVector(x, y);
    velocity = new PVector(random(-5, 5), random(-5, 5));
    col = color(random(255), random(255), random(255));
    d = 50;
  }

  void display() {
    fill(col);
    textSize(d);
    textAlign(CENTER);
    text(str, location.x, location.y);
  }

  void move() {
    location.add(velocity);
  }

  void bounce() {
    // 경계에 부딪힐 때 반사 적용
    if (location.x < 0) {
      location.x = 0;
      velocity.x *= -1;
    }
    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    }
    if (location.y < 0) {
      location.y = 0;
      velocity.y *= -1;
    }
    if (location.y > height) {
      location.y = height;
      velocity.y *= -1;
    }
  }
}
