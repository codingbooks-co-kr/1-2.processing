// 본문 코드: 원 세 개 좌우 반사 (생성자 오버로딩)

Circle c1, c2, c3;

void setup() {
  size(300, 300);
  c1 = new Circle();
  c2 = new Circle(0, 100);
  c3 = new Circle(255, 0, 200, 70, 3);
}

void draw() {
  background(0);
  c1.display();
  c1.move();
  c2.display();
  c2.move();
  c3.display();
  c3.move();
}

// 클래스 코드

class Circle {
  float c, x, y, d, velocity;

  Circle() {
    this(0, 0, 50, 30, 1);
  }

  Circle(float x, float y) {
    this(200, x, y, 50, 2);
  }

  Circle(float c, float x, float y, float d, float velocity) {
    this.c = c;
    this.x = x;
    this.y = y;
    this.d = d;
    this.velocity = velocity;
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
