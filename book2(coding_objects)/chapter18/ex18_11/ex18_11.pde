// 탄성 (PVector 클래스 미사용)

float x = 250, y = 0;
float velocity  = 0;
float accel = 0;
float f;
float k = 0.1;
float m = 1.0;
float damping = 0.9;

void setup() { 
  size(500, 500);
} 

void draw() { 
  background(0); 
  f = k * (mouseY - y);
  accel = f / m;
  velocity  = damping * (velocity + accel);
  y += velocity;

  stroke(255);
  line(width/2, 0, width/2, y);
  ellipse(x, y, 30, 30);
}
