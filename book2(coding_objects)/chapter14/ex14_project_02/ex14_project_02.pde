// 본문 코드: 원 다섯 개 상하좌우 반사, 마우스 누른 위치로 원 이동 (객체 배열)

int count = 0;
Circle[] c = new Circle[5];

void setup() {
  size(500, 500);
  for (int i = 0; i < c.length; i++) { 
    color col = color(random(255), random(255), random(255));
    c[i] = new Circle(col, random(width), random(height), random(20, 70), random(-3, 3), random(-3, 3));
  }
}

void draw() {
  background(0);
  for (int i = 0; i < c.length; i++) { 
    c[i].display();
    c[i].move();
  }
}

void mousePressed() {
  c[count].start();
  count++;
  if (count >= c.length) {
    count = 0;
  }
}

// 클래스 코드

class Circle {
  color col;
  float x, y, d, velocity_x, velocity_y;

  Circle(color col, float x, float y, float d, float velocity_x, float velocity_y) {
    this.col = col;
    this.x = x;
    this.y = y;
    this.d = d;
    this.velocity_x = velocity_x;
    this.velocity_y = velocity_y;
  }

  void display() {
    fill(col);
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

  void start() {
    x = mouseX;
    y = mouseY;
  }
}
