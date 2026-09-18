int num = 10;
float[] x = new float[num];
float[] y = new float[num];
float[] velocity_x = new float[num];
float[] velocity_y = new float[num];
float[] d = new float[num];
color[] c = new color[num];

void setup() {
  size(500, 500);
  for (int i = 0; i < num; i++) {
    x[i] = width / 2;
    y[i] = height / 2;
    velocity_x[i] = random(-5, 5);
    velocity_y[i] = random(-5, 5);
    d[i] = 50;
    c[i] = color(255);
  }
}

void draw() {
  // 페이딩 효과
  noStroke();  
  fill(0, 10);  
  rect(0, 0, width, height);

  for (int i = 0; i < num; i++) {
    fill(c[i]);
    ellipse(x[i], y[i], d[i], d[i]);
    x[i] += velocity_x[i];
    y[i] += velocity_y[i];
    if (x[i] < 0 || x[i] > width) {
      velocity_x[i] *= -1;
    }
    if (y[i] < 0 || y[i] > height) {
      velocity_y[i] *= -1;
    }
    if (mousePressed) {
      d[i] = random(30, 70);
      c[i] = color(random(255), random(255), random(255));
    }
  }
}
