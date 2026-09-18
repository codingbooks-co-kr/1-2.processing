// 본문 코드: 원과 사각형 좌우 반사
// 상속 미적용

Circle c;
Square s;

void setup() {
  size(300, 300);
  c = new Circle();
  s = new Square();
}

void draw() {
  background(0);
  c.display();
  c.move();
  s.display();
  s.move();
}

// 클래스 코드

class Circle {
  float c, x, y, d, velocity;

  Circle() {
    c = 255;
    x = width/2;
    y = 100;
    d = 30;
    velocity = 2;
  }

  void display() {
    fill(c, 0, 0);
    ellipse(x, y, d, d);
  }

  void move() {
    x += velocity;
    if (x < 0 || x > width) {
      velocity *= -1;
    }
  }
}

class Square {
  float c, x, y, d, velocity;

  Square() {
    c = 255;
    x = width/2;
    y = 200;
    d = 30;
    velocity = -2;
  }

  void display() {
    fill(0, c, 0);
    rect(x, y, d, d);
  }

  void move() {
    x += velocity;
    if (x < 0 || x > width) {
      velocity *= -1;
    }
  }
}
