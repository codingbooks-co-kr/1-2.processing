// 본문 코드: 원 다섯 개 상하좌우 반사 (객체 배열)

Circle[] c = new Circle[5];

void setup() {
  size(300, 300);
  for (int i = 0; i < c.length; i++) { 
    c[i] = new Circle(random(255), random(width), random(height), random(10, 50), random(-3, 3), random(-3, 3));
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
  float c, x, y, d, velocity_x, velocity_y;

  Circle(float c, float x, float y, float d, float velocity_x, float velocity_y) {
    this.c = c;
    this.x = x;
    this.y = y;
    this.d = d;
    this.velocity_x = velocity_x;
    this.velocity_y = velocity_y;
  }

  void display() {
    fill(c, 255, 0);
    ellipse(x, y, d, d);
  }

  void move() {
    x += velocity_x;
    y += velocity_y;
    if (x < 0 || x > width) {
      velocity_x *= -1;
    }
    if (y < 0 || y > height) {
      velocity_y *= -1;
    }
  }
}
