// 원을 일정 속도로 이동1

int x = 200, y = 200;
int velocity_x = 1, velocity_y = 1;

void setup() {
  size(400, 400);
  background(0);
}

void draw() {
  ellipse(x, y, 30, 30);
  x += velocity_x;
  y += velocity_y;
  println(frameCount + " : " + frameRate);
}
