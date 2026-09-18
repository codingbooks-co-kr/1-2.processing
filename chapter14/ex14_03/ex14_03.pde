// 본문 코드: 원 좌우 반사 (x축 좌표 표시)

Circle c1, c2;

void setup() {
  size(300, 300);
  c1 = new Circle(0, 100);
  c2 = new Circle(50, 200);
}

void draw() {
  background(0);
  c1.display();
  c1.move();
  c2.display();
  c2.move();
}

// 클래스 코드 (메소드에서 메소드 호출)

class Circle {
  float c, x, y, d, velocity;

  Circle(float x, float y) {
    this.c = 255;
    this.x = x;
    this.y = y;
    this.d = 30;
    this.velocity = 1;
  }

  void display() {
    fill(c, 255, 0);
    ellipse(x, y, d, d);
    information();
  }

  void information() {
    textAlign(CENTER);
    textSize(20);
    text("x=" + int(x), x, y+50);
  }

  void move() {
    x += velocity;
    if (x < 0 || x > width) {
      velocity *= -1;
    }
  }
}
