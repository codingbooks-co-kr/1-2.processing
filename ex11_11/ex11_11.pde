// 마우스의 위치가 사각형 내부인지 외부인지에 따라 배경색 변경

int x = 100, y = 50, w = 100, h = 200;

void setup() {
  size(300, 300);
}

void draw() {
  if (check()) {
    background(255, 0, 0);
  } else {
    background(0);
  }
  rect(x, y, w, h);
}

boolean check() {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    return true;
  } else {
    return false;
  }
}
