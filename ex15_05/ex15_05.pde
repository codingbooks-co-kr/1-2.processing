// 본문 코드: 원 좌우 반사, 사각형 상하 반사

Circle c;
Square s;

void setup() {
  size(300, 300);
  c = new Circle(255, width/2, 100, 30, -2);
  s = new Square(255, width/2, 200, 30, 2);
}

void draw() {
  // 페이딩 효과 구현
  noStroke();  
  fill(0, 10);  
  rect(0, 0, width, height);

  c.display();
  c.move();
  s.display();
  s.move();
}

// 클래스 코드

class Shape {
  float c, x, y, d, velocity;

  Shape(float c, float x, float y, float d, float velocity) {
    this.c = c;
    this.x = x;
    this.y = y;
    this.d = d;
    this.velocity = velocity;
  }

  void move() {
    x += velocity;
    if (x < 0 || x > width) {
      velocity *= -1;
    }
  }
}

class Circle extends Shape {
  Circle(float c, float x, float y, float d, float velocity) {
    super(c, x, y, d, velocity);
  }

  void display() {
    fill(c, 0, 0);
    ellipse(x, y, d, d);
  }
}

class Square extends Shape {
  Square(float c, float x, float y, float d, float velocity) {
    super(c, x, y, d, velocity);
  }

  void display() {
    fill(0, c, 0);
    rect(x, y, d, d);
  }

  void move() {
    y += velocity;
    if (y < 0 || y > height) {
      velocity *= -1;
    }
  }
}
