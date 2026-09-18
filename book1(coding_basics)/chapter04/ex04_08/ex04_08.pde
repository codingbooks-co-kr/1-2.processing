// 회전 운동

float theta = 0.0, r = 150.0;

void setup() {
  size(300, 300);
  background(0);
}

void draw() {
  float x = width/2 + r * cos(theta);
  float y = height/2 + r * sin(theta);
  ellipse(x, y, 30, 30);
  theta += 0.05;
}
