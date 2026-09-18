// 본문 코드 (상속+다형성+오버라이딩을 배열로 확장 적용)
// 원, 사각형, 삼각형 좌우 반사 

Shape[] sh = new Shape[3];

void setup() {
  size(300, 300);
  sh[0] = new Circle(255, 0, 70, 30, 1);
  sh[1] = new Square(255, 0, 140, 30, 2);
  sh[2] = new Triangle(255, 0, 210, 30, 3);
}

void draw() {
  background(0);
  for (int i = 0; i < sh.length; i++) {
    sh[i].display();  // 오버라이딩
    sh[i].move();  // 상속
  }
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

  void display() {
    fill(c, c, 0);
    textSize(d);
    text("Shape", x, y);
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
}

class Triangle extends Shape {
  Triangle(float c, float x, float y, float d, float velocity) {
    super(c, x, y, d, velocity);
  }

  void display() {
    fill(0, 0, c);
    triangle(x, y, x-d, y+d, x+d, y+d);
  }
}
