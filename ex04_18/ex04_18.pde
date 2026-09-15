// 문자열이 마우스를 따라 움직이기

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  fill(255, 255, 0);
  textSize(30);
  text("Hello, Processing!", mouseX, mouseY);
}
