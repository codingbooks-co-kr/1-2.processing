// 마우스를 누르면 랜덤 위치에서 생성된 원들이 마우스를 따라오기

int num = 100;
float[] x = new float[num];
float[] y = new float[num];
float[] velocity_x = new float[num];
float[] velocity_y = new float[num];
float[] easing = new float[num];
color[] c = new color[num];

void setup() {
  size(500, 500);
  reset();
}

void draw() {
  // 페이딩 효과
  noStroke();
  fill(0, 10);
  rect(0, 0, width, height);

  for (int i = 0; i < num; i++) {
    fill(c[i]);
    ellipse(x[i], y[i], 10, 10);
    velocity_x[i] = (mouseX - x[i]) * easing[i];
    velocity_y[i] = (mouseY - y[i]) * easing[i];
    x[i] += velocity_x[i];
    y[i] += velocity_y[i];
  }
}

void reset() {
  for (int i = 0; i < num; i++) {
    x[i] = random(width);
    y[i] = random(height);
    velocity_x[i] = 0;
    velocity_y[i] = 0;
    easing[i] = random(0.001, 0.01);
    c[i] = color(random(255), random(255), random(255));
  }
}

void mousePressed() {
  reset();
}
