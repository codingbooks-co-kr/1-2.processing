// 마우스의 움직임에 따라 원의 크기 변경

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  ellipse(width/2, height/2, mouseX, mouseY);
}
