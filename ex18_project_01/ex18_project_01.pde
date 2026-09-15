// 본문 코드: 마우스를 따라 움직이는 스프링으로 연결된 10개의 원

int num = 10;
Circle[] c = new Circle[num];

void setup() { 
  size(500, 500);
  for (int i = 0; i < num; i++) {
    c[i] = new Circle();
  }
}   

void draw() { 
  background(0);
  for (int i = 0; i < num-1; i++) {
    c[i].display(c[i+1].location.x, c[i+1].location.y);
    c[i].move(c[i+1].location.x, c[i+1].location.y);
  }
  c[num-1].display(mouseX, mouseY);
  c[num-1].move(mouseX, mouseY);
} 

// 클래스 코드

class Circle { 
  PVector location, velocity, accel, gravity, mouse, force;
  // 탄성력(k), 질량(m), 댐핑상수(damping)
  float d, k, m, damping;
  color col;

  Circle() { 
    location = new PVector(0, 0);
    velocity = new PVector(0, 0);
    accel = new PVector(0, 0);
    gravity = new PVector(0.0, 2.0);
    mouse = new PVector(0, 0);
    force = new PVector(0, 0);
    d = 10;
    k = 0.2;
    m = 3.0;
    damping = 0.7;
    col = color(random(255), random(255), random(255));
  } 

  void display(float x, float y) {
    stroke(255);
    line(location.x, location.y, x, y);
    fill(col);
    ellipse(location.x, location.y, d*m, d*m);
  }

  void move(float x, float y) {
    mouse = new PVector(x, y);
    force = PVector.sub(mouse, location);
    force.mult(k);
    accel = force.div(m);
    accel.add(gravity);
    velocity.add(accel);
    velocity.mult(damping);
    location.add(velocity);
  }
}
