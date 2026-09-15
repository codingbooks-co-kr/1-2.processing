// 원을 일정 속도로 이동2

int x, y;
int velocity_x = 1, velocity_y = 1;

void setup() {
  size(400, 400);
  background(0);
  x = width/2;
  y = height/2;
}

void draw() {
  ellipse(x, y, 30, 30);
  x += velocity_x;
  y += velocity_y;
  println(frameCount + " : " + frameRate);
}
