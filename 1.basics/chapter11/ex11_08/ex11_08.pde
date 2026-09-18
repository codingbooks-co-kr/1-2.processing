// 원의 외곽선 굵기와 크기를 점점 크게 만들기

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  for (int i = 0; i <= 300; i += 50) {
    display(i);
  }
}

void display(int d) {
  strokeWeight(d/30);
  stroke(255, 255, 0);
  noFill();
  ellipse(width/2, height/2, d, d);
}
