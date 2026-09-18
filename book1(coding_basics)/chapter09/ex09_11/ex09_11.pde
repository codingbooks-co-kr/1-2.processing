// 랜덤하지만 방향성을 가진 1000개의 점

int num = 1000;
float[] x = new float[num];
float[] y = new float[num];

void setup() {
  size(300, 300);
  for (int i = 0; i < num; i++) {
    x[i] = random(width);
    y[i] = random(height);
  }
}

void draw() {
  // 페이딩 효과
  noStroke();  
  fill(0, 10);  
  rect(0, 0, width, height);

  stroke(255);
  for (int i = 0; i < num; i++) {
    point(x[i], y[i]);
    // 랜덤 움직임의 방향성
    x[i] += random(1.0);
    y[i] += random(1.0);
  }
}
