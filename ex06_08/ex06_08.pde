// 키보드상의 숫자를 눌러 원의 색상 변경

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  if (keyPressed && (key == '1')) {
    fill(255, 0, 0);
  } else if (keyPressed && (key == '2')) {
    fill(0, 255, 0);
  } else {
    fill(0, 0, 255);
  }
  ellipse(width/2, height/2, 200, 200);
}
