// 본문 코드: 원 두 개가 좌우 반사하면서 상호 부딪힐 때 크기가 랜덤하게 변경

Circle c1, c2;

void setup() {
  size(300, 300);
  c1 = new Circle(255, 0, width/2, 30, 1);
  c2 = new Circle(255, width, width/2, 30, 1);
}

void draw() {
  background(0);
  c1.display();
  c1.move();
  c1.hit(c2);
  c2.display();
  c2.move();
  c2.hit(c1);
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

  void hit(Circle c) {
    float distance = dist(x, y, c.x, c.y);
    if (distance < d/2+c.d/2) {
      d = random(30, 60);
    }
  }
}
