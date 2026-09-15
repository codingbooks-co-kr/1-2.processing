// 본문 코드: 원 좌우 반사 (메소드 추가)

Circle c;

void setup() {
  size(300, 300);
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
  float c, x, y, d, velocity;

  Circle() {
    c = 255;
    x = width/2;
    y = height/2;
    d = 30;
    velocity = 1;
  }

  void display() {
    fill(c, 255, 0);
    ellipse(x, y, d, d);
  }

  void move() {
    x += velocity;
    if (x < 0 || x > width) {
      velocity *= -1;
    }
  }

  void check(float xx, float yy) {
    float dd = dist(x, y, xx, yy);
    if (dd < d/2) {
      textAlign(CENTER);
      textSize(20);
      text("Circle", x, y+50);
    }
  }
}
