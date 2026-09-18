// 본문 코드 (다형성 적용)
// 원과 사각형 객체 배열 좌우 반사 

Shape[] sh = new Shape[12];

void setup() {
  size(500, 500);
  for (int i = 0; i < sh.length; i++) {
    if (i < sh.length/2) {
      sh[i] = new Circle(255, random(width), random(height), random(20, 50), random(-5, 5));
    } else {
      sh[i] = new Square(255, random(width), random(height), random(20, 50), random(-5, 5));
    }
  }
}

void draw() {
  background(0);
  for (int i = 0; i < sh.length; i++) {
    sh[i].display();
    sh[i].move();
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
