// 선이 상하좌우 방향으로 마우스를 따라오며 서서히 감속하도록 구현

float x = 0.0, y = 0.0, easing = 0.05;
color c;

void setup() {
  size(500, 500);
  c = color(random(255), random(255), random(255));
}

void draw() {
  // 페이딩 효과 구현
  noStroke();  
  fill(0, 10);  
  rect(0, 0, width, height);
  
  float px = x;
  float py = y;
  x += (mouseX - x) * easing;
  y += (mouseY - y) * easing;
  stroke(255);
  strokeWeight(5);
  line(px, py, x, y);
}
