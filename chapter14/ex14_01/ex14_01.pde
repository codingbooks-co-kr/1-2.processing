// 본문 코드: 원 좌우 반사 
// 객체 두 개 생성 (미완성)

Circle c1, c2;

void setup() {
  size(300, 300);
  c1 = new Circle();
  c2 = new Circle();
}

void draw() {
  background(0);
  c1.display();
  c1.move();
  c2.display();
  c2.move();
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
