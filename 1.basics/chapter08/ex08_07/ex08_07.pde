// 작은 원들로 실행 화면을 가득 채우기

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  for (int y = 0; y <= height; y +=30) {
    for (int x = 0; x <= width; x += 30) {
      fill(255, 255, 0);
      ellipse(x, y, 30, 30);
    }
  }
}
