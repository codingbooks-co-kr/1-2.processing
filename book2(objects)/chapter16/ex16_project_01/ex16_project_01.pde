// 본문 코드: 도형별로 도형 안에 마우스가 위치하면 도형의 이름과 면적이 표시

Shape[] sh = new Shape[12];

void setup() {
  size(500, 500);
  for (int i = 0; i < sh.length; i++) {
    float r = random(1);
    if (r < 0.5) { 
      sh[i] = new Circle(color(255, 0, 0), random(width), random(height), random(20, 50), "Circle");
    } else {
      sh[i] = new Square(color(0, 255, 0), random(width), random(height), random(20, 50), "Square");
    }
  }
}

void draw() {
  background(0);
  for (int i = 0; i < sh.length; i++) {
    sh[i].display();
    sh[i].move();

    // 해당 객체별 메소드 호출
    if (sh[i] instanceof Circle) {
      Circle temp = (Circle)sh[i];
      temp.check(mouseX, mouseY);
      temp.area();
    } else if (sh[i] instanceof Square) {
      Square temp = (Square)sh[i];
      temp.check(mouseX, mouseY);
      temp.area();
    }
  }
}

class Shape {
  boolean on;
  color c;
  float x, y, d, dd;
  String str;

  Shape(color c, float x, float y, float d, String str) {
    this.c = c;
    this.x = x;
    this.y = y;
    this.d = d;
    this.str = str;
    on = false;
    dd = 1;
  }

  void display() {
    fill(c);
    textSize(50);
    text("Shape", x, y);
  }

  void move() {
    if (on) {
      dd++;
    }
  }
}

class Circle extends Shape {
  Circle(color c, float x, float y, float d, String str) {
    super(c, x, y, d, str);
  }

  void display() {
    noFill();
    stroke(c);
    ellipse(x, y, d, d);
    if (on) {
      ellipse(x, y, dd, dd);
    }
  }

  void check(float xx, float yy) {
    float distance = dist(x, y, xx, yy);
    if (distance < d/2) {
      on = true;
    } else {
      on = false;
      dd = 1;
    }
  }

  void area() {
    if (on) {
      fill(c);
      textSize(20);
      String s = str + " " + int(PI * d/2.0 * d/2.0);
      text(s, x+20, y);
    }
  }
}

class Square extends Shape {
  Square(color c, float x, float y, float d, String str) {
    super(c, x, y, d, str);
  }

  void display() {
    noFill();
    stroke(c);
    rectMode(CENTER);
    rect(x, y, d, d);
    if (on) {
      rect(x, y, dd, dd);
    }
  }

  void check(float xx, float yy) {
    if ((x-d/2 < xx) && (x+d/2 > xx) && (y-d/2 < yy) && (y+d/2 > yy)) {
      on = true;
    } else {
      on = false;
      dd = 1;
    }
  }

  void area() {
    if (on) {
      fill(c);
      textSize(20);
      String s = str + " " + int(d * d);
      text(s, x+20, y);
    }
  }
}
