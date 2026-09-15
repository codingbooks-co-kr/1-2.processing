// 원이 좌우 방향으로 마우스를 따라오며 서서히 감속 

float x = 0.0, easing = 0.05;

void setup() {
  size(500, 300);
  background(0);
}

void draw() {
  x += (mouseX - x) * easing;
  ellipse(x, height/2, 30, 30);
}
