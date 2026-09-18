// ❶ 다섯 개의 원 좌우 반사 (클래스를 사용하지 않은 배열의 예)

int num = 5;
color[] col = new color[num];      // 원의 색상
float[] x = new float[num];        // x축 위치 좌표
float[] y = new float[num];        // y축 위치 좌표
float[] d = new float[num];        // 원의 크기
float[] velocity = new float[num];    // 속도

void setup() {
  size(500, 500);
  for (int i = 0; i < num; i++) { 
    col[i] = color(random(255), random(255), random(255));
    x[i] = random(width);
    y[i] = random(height);
    d[i] = random(20, 60);
    velocity[i] = random(-3, 3);
  }
}

void draw() {
  background(0);
  for (int i = 0; i < num; i++) {
    fill(col[i]);
    ellipse(x[i], y[i], d[i], d[i]);
    x[i] += velocity[i];
    if (x[i] < 0 || x[i] > width) {
      velocity[i] *= -1;
    }
  }
}
