// 마우스를 따라 움직이는 점 (굵기와 색상을 랜덤하게 만들기)

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  strokeWeight(random(50));
  stroke(random(255), random(255), random(255));
  point(mouseX, mouseY);
}
