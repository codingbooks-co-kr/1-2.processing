// 본문 코드: 원 다섯 개 좌우 반사 (객체 배열)

Circle[] c = new Circle[5];

void setup() {
  size(300, 300);
  for (int i = 0; i < c.length; i++) { 
    c[i] = new Circle(255, 0, i*70, 30, i/2.0);
  }
}

void draw() {
  background(0);
  for (int i = 0; i < c.length; i++) { 
    c[i].display();
    c[i].move();
  }
}

// 클래스 코드

class Circle {
  float c, x, y, d, velocity;

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
