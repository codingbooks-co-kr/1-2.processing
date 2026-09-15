// 2차원 색상 배열을 사용한 원의 색상 변화

int[][] c = {
  {0,   0,   0,   0,  0}, 
  {0, 150, 150, 150, 0}, 
  {0, 150, 255, 150, 0}, 
  {0, 150, 150, 150, 0}, 
  {0,   0,   0,   0,  0}
};

void setup() {
  size(300, 300);
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
