// 본문 코드: 1초마다 크기가 랜덤하게 바뀌는 다섯 개의 원 (병렬)

Circle[] c = new Circle[5];
Timer timer;

void setup() {
  size(300, 300);
  for (int i = 0; i < c.length; i++) { 
    c[i] = new Circle(random(255), random(width), random(height), random(10, 50), random(-3, 3), random(-3, 3));
  }
  timer = new Timer(1000);
}

void draw() {
  background(0);
  for (int i = 0; i < c.length; i++) { 
    c[i].display();
    c[i].move();
  }
  if (timer.check()) {
    timer.start();
    for (int i = 0; i < c.length; i++) {
      c[i].change();
    }
  }
}

// Circle 클래스 코드

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

  void change() {
    d = random(10, 50);
  }
}

// Timer 클래스 코드

class Timer {
  int time, previous_time; 

  Timer(int time) {
    this.time = time;
  }

  void start() {
    previous_time = millis();
  }

  boolean check() { 
    int interval = millis() - previous_time;
    if (interval > time) {
      return true;
    } else {
      return false;
    }
  }
}
