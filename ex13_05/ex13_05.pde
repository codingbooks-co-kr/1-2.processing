// 본문 코드: 원 좌우 반사 (메소드 오버로딩)

Circle c;
color cc;
int count = 0;

void setup() {
  size(300, 300);
  c = new Circle();
}

void draw() {
  background(0);
  c.display();
  c.move();
  if (count == 0) {
    c.display();
  } else if (count == 1) {
    cc = color(0, 255, 0);
    c.display(cc);
  } else {
    cc = color(0, 0, 255);
    c.display(cc, 60);
  }
}

void mousePressed() {
  count++;
  if (count > 2) {
    count = 0;
  }
}

// 클래스 코드

class Circle {
  color c;
  float x, y, d, velocity;

  Circle() {
    c = color(255, 0, 0);
    x = width/2;
    y = height/2;
    d = 30;
    velocity = 1;
  }

  void display() {
    fill(c);
    ellipse(x, y, d, d);
  }

  void display(color cc) {
    fill(cc);
    ellipse(x, y, d, d);
  }

  void display(color cc, float dd) {
    fill(cc);
    ellipse(x, y, dd, dd);
  }

  void move() {
    x += velocity;
    if (x < 0 || x > width) {
      velocity *= -1;
    }
  }
}
