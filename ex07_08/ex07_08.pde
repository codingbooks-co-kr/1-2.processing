// random() 함수를 사용하여 랜덤 파형 만들기

void setup() {
  size(500, 200);
}

void draw() {
  background(0);
  stroke(255);
  noFill();
  beginShape();
  for (float x = 0; x <= width; x++) {
    float y = random(height/2 - 50, height/2 + 50);
    vertex(x, y);
  }
  endShape();
}
