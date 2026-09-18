// 원의 가속 이동

float x = 0, y = 0;
float velocity_x = 0, velocity_y = 0;
float accel_x = 0.2, accel_y = 0.2;

void setup() {
  size(400, 400);
  background(0);
}

void draw() {
  ellipse(x, y, 30, 30);
  velocity_x += accel_x;
  velocity_y += accel_y;  
  x += velocity_x;
  y += velocity_y;
}
