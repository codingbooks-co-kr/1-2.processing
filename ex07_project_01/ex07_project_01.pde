// noise() 함수를 사용하여 파도 형태의 랜덤 파형 만들기

float tt = 0.0;

void setup() {
  size(500, 200);
}

void draw() {
  background(0);
  float t = tt;
  fill(0, 0, 255);
  beginShape();
  vertex(0, height);
  for (float x = 0; x <= width; x += 10) {
    float y = 50 + 100 * noise(t);
    vertex(x, y);
    t += 0.01;
  }
  vertex(width, height);
  endShape();
  tt += 0.01;
}
