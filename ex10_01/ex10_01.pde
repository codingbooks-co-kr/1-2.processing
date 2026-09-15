// 마우스의 좌우 위치에 따라 이동 속도가 가감되는 10개의 원 

int num = 10;
float[] x = new float[num];
float[] y = new float[num];

void setup() {
  size(500, 300);
  for (int i = 0; i < num; i++) {
    x[i] = random(-500, 0);
    y[i] = random(height);
  }
}

void draw() {
  background(0);
  float velocity = map(mouseX, 0, width, 0.5, 5);
  for (int i = 0; i < num; i++) {
    ellipse(x[i], y[i], 30, 30);
    x[i] += velocity;
  }
}
