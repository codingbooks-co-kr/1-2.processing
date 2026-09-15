// 끊임없이 이동하는 1000개의 점들

int num = 1000;
float[] x = new float[num];
float[] y = new float[num];
color[] c = new color[num];

void setup() {
  size(500, 500);
  for (int i = 0; i < num; i++) {
    x[i] = random(width);
    y[i] = random(height);
    c[i] = color(random(255), random(255), random(255));
  }
}

void draw() {
  // 페이딩 효과
  noStroke();  
  fill(0, 10);  
  rect(0, 0, width, height);

  for (int i = 0; i < num; i++) {
    stroke(c[i]);
    strokeWeight(5);
    point(x[i], y[i]);
    x[i] += random(1.0);
    y[i] += random(1.0);
    if (x[i] < 0) {
      x[i] = width;
    }
    if (x[i] > width) {
      x[i] = 0;
    }
    if (y[i] < 0) {
      y[i] = height;
    }
    if (y[i] > height) {
      y[i] = 0;
    }
  }
}
