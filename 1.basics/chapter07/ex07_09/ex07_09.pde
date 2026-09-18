// noise() 함수를 사용하여 랜덤 파형 만들기1

float t = 0.0;

void setup() {
  size(500, 200);
}

void draw() {
  background(0);
  stroke(255);
  noFill();
  beginShape();
  for (float x = 0; x <= width; x++) {
    float y = 50 + 100 * noise(t);
    vertex(x, y);
    t += 0.01;
  }
  endShape();
}
