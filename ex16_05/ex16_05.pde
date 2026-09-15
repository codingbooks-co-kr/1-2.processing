// 본문 코드 (다형성 적용)
// 원과 사각형 객체 배열 좌우 반사

Shape[] sh = new Shape[12];

void setup() {
  size(500, 500);
  for (int i = 0; i < sh.length; i++) {
    float r = random(1);
    if (r < 0.5) { 
      sh[i] = new Circle(255, random(width), random(height), random(20, 50), random(-5, 5), "Circle");
    } else {
      sh[i] = new Square(255, random(width), random(height), random(20, 50), random(-5, 5), "Square");
    }
  }
}

void draw() {
  background(0);
  for (int i = 0; i < sh.length; i++) {
    sh[i].display();    // 오버라이딩
    sh[i].move();      // 상속
  }
}

// 클래스 코드

class Shape {
  float c, x, y, d, velocity;
  String str;

  Shape(float c, float x, float y, float d, float velocity, String str) {
    this.c = c;
    this.x = x;
    this.y = y;
    this.d = d;
    this.velocity = velocity;
    this.str = str;
  }

  void display() {
    fill(c, c, 0);
    textSize(20);
    text(str, x+20, y);
  }

  void move() {
    x += velocity;
    if (x < 0 || x > width) {
      velocity *= -1;
    }
  }
}

class Circle extends Shape {
  Circle(float c, float x, float y, float d, float velocity, String str) {
    super(c, x, y, d, velocity, str);
  }

  void display() {
    super.display();
    fill(c, 0, 0);
    ellipse(x, y, d, d);
  }
}

class Square extends Shape {
  Square(float c, float x, float y, float d, float velocity, String str) {
    super(c, x, y, d, velocity, str);
  }

  void display() {
    super.display();
    fill(0, c, 0);
    rect(x, y, d, d);
  }
}
