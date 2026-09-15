// 마우스의 좌우 버튼을 누르거나 떼면 원의 색상 변경

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  if (mousePressed && (mouseButton == LEFT)) {
    fill(255, 0, 0);
  } else if (mousePressed && (mouseButton == RIGHT)) {
    fill(0, 255, 0);
  } else {
    fill(0, 0, 255);
  }
  ellipse(width/2, height/2, 200, 200);
}
