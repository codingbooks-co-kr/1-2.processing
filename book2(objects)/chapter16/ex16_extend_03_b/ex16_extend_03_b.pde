// 본문 코드: 원 좌우 반사

Circle c;

void setup() {
  size(300, 300);
  c = new Circle();
  c.c = 0;
  c.x = 0;
  c.y = 250;
  c.d = 50;
  c.velocity = 2;
}

void draw() {
  background(0);
  c.display();
  c.move();
  if (mousePressed) {
    c.x = mouseX;
    c.y = mouseY;
  }
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
}
