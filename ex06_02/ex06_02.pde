// 마우스가 사각형 안에 들어오면 사각형의 색상 변경

int x = 100, y = 50, w = 100, h = 200;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(255, 0, 0);
  } else {
    fill(255, 255, 255);
  }
  rect(x, y, w, h);
}
