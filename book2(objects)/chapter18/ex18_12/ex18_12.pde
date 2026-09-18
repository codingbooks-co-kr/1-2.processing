// 탄성 (PVector 클래스 사용)

PVector location = new PVector(250, 0);
PVector velocity = new PVector(0, 0);
PVector accel = new PVector(0, 0);
PVector mouse, force;
float k = 0.1, m = 1.0, damping = 0.9;

void setup() { 
  size(500, 500);
} 

void draw() {
  background(0);
  mouse = new PVector(0, mouseY);
  force = PVector.sub(mouse, location);
  force.mult(k);
  accel = force.div(m);
  velocity.add(accel);
  velocity.mult(damping);
  location.add(velocity);

  stroke(255);
  line(width/2, 0, width/2, location.y);
  ellipse(width/2, location.y, 30, 30);
}
