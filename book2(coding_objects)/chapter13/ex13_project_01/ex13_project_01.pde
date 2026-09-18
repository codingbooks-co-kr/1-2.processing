// 본문 코드: 마우스가 원 객체 안에 들어가면 링이 생성되어 점점 커짐

Circle c;

void setup() {
  size(500, 500);
  c = new Circle();
}

void draw() {
  background(0);
  c.display();
  c.move();
  c.check(mouseX, mouseY);
}

// 클래스 코드

class Circle {
  boolean on;
  color c;
  float x, y, d, dd;

  Circle() {
    on = false;
    c = color(255, 255, 0);
    x = width/2;
    y = height/2;
    d = 100;
    dd = 1;
  }

  void display() {
    fill(c);
    ellipse(x, y, d, d);
    if (on) {
      noFill();
      stroke(255, 255, 0);
      strokeWeight(3);
      ellipse(x, y, dd, dd);
    }
  }

  void move() {
    if (on) {
      dd++;
      if (dd > width) {
        dd = 1;
      }
    }
  }

  void check(float xx, float yy) {
    float distance = dist(x, y, xx, yy);
    if (distance < d/2) {
      on = true;
      c = color(255, 0, 0);
    } else {
      on = false;
      c = color(255, 255, 0);
      dd = 1;
    }
  }
}
