// 마우스 현재 위치의 원을 사각형으로 변경

void setup() {
  size(400, 200);
}

void draw() {
  background(0);
  for (int x = 0; x <= width; x += 50) {
    if (mouseX > x-25 && mouseX < x+25) {
      fill(255, 0, 0);
      rectMode(CENTER);
      rect(x, height/2, 50, 50);
    } else {
      fill(255); 
      ellipse(x, height/2, 50, 50);
    }
  }
}
