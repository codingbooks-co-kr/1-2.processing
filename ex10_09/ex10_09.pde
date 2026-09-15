// 2차원 색상 배열을 사용한 원의 색상 변화

int[][] c = new int[5][5];

void setup() {
  size(300, 300);
  for (int y = 0; y < 5; y++) {
    for (int x = 0; x < 5; x++) {
      c[y][x] = 16 * y * x;
    }
  }
}

void draw() {
  background(0);
  for (int y = 0; y < 5; y++) {
    for (int x = 0; x < 5; x++) {
      fill(c[y][x], 0, 255);
      ellipseMode(CORNER);
      ellipse(x * 60, y * 60, 60, 60);
    }
  }
}
