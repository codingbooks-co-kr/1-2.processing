// 마우스의 y축 현재 위치까지 선을 반복하여 그리기

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  for (int y = 0; y < mouseY; y += 10) {
    stroke(255);
    line(0, y, width, y);
  }
}
