// 원이 감속하며 마우스를 따라오기, 마우스를 누르면 원의 색상이 랜덤하게 변경

float x, y, d = 30.0, easing = 0.05;

void setup() {
  size(500, 500); 
  background(0);
}

void draw() {
  x += (mouseX - x) * easing;
  y += (mouseY - y) * easing;
  if (mousePressed) {
    fill(random(255), random(255), random(255));
  }
  noStroke();
  ellipse(x, y, d, d);
}
