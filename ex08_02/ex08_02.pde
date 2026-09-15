// 마우스의 현재 위치 좌표에서 사방으로 랜덤하게 퍼지는 선

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  for (int i = 0; i < 100; i++) {
    stroke(255);
    float x = random(width);
    float y = random(height);
    line(mouseX, mouseY, x, y);
  }
}
