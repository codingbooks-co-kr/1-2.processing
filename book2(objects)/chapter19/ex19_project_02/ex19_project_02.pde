// 본문 코드: 마우스를 누르면 도형들이 랜덤 생성, 낙하. 바닥으로 떨어지면 객체 소멸

ArrayList<Shape> shapes;

void setup() {
  size(500, 500);
  shapes = new ArrayList<Shape>();
}

void draw() {
  // 페이딩 효과
  noStroke();  
  fill(0, 10);  
  rect(0, 0, width, height);

  for (int i = 0; i < shapes.size(); i++) {
    Shape sh = shapes.get(i);
    sh.display();    // 오버라이딩
    sh.move();      // 상속
    if (sh.location.y > height) {
      shapes.remove(i);
    }
  }
  println(shapes.size());
}

void mousePressed() {
  float r = random(1);
  if (r < 1.0/3.0) { 
    shapes.add(new Circle(mouseX, mouseY));
  } else if (r < 2.0/3.0) {
    shapes.add(new Square(mouseX, mouseY));
  } else {
    shapes.add(new Triangle(mouseX, mouseY));
  }
}

// 클래스 코드

class Shape {
  PVector location, velocity, accel;
  color col;
  float d;

  Shape(float x, float y) {
    col = color(255);
    location = new PVector(x, y);
    velocity = new PVector(random(-5, 5), random(-10, -5));
    accel = new PVector(0, 0.3);
    d = 30;
  }

  void display() {
    fill(col);
    textSize(d);
    text("Shape", location.x, location.y);
  }

  void move() {
    velocity.add(accel);
    location.add(velocity);
  }
}

class Circle extends Shape {
  Circle(float x, float y) {
    super(x, y);
  }

  void display() {
    fill(255, 0, 0);
    ellipse(location.x, location.y, d, d);
  }
}

class Square extends Shape {
  Square(float x, float y) {
    super(x, y);
  }

  void display() {
    fill(0, 255, 0);
    rect(location.x, location.y, d, d);
  }
}

class Triangle extends Shape {
  Triangle(float x, float y) {
    super(x, y);
  }

  void display() {
    fill(0, 0, 255);
    triangle(location.x, location.y, location.x-d, location.y+d, location.x+d, location.y+d);
  }
}
