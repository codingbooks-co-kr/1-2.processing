// 오른쪽에서 왼쪽으로 마우스의 y축 움직임 궤적 그리기

int[] y;

void setup() {
  size(300, 300);
  y = new int[width];
}

void draw() {
  background(0);
  for (int i = 0; i < width-1; i++) {
    y[i] = y[i+1];
  }
  y[width-1] = mouseY;

  stroke(255);
  strokeWeight(5);
  for (int i = 0; i < width-1; i++) {
    line(i, y[i], i+1, y[i+1]);
  }
}
