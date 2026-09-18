// 반짝이는 별 만들기

void setup() {
  size(500, 500);
}

void draw() {
  // 페이딩 효과
  noStroke();  
  fill(0, 10);  
  rect(0, 0, width, height);

  fill(255);
  star(random(width), random(height), 5.0, 3.0, 6.0);
}

void star(float x, float y, float point, float inR, float outR) {
  float angle = TWO_PI / point;
  beginShape();
  for (float i = 0.0; i < TWO_PI; i += angle) {
    float sx = x + inR * cos(i);
    float sy = y + inR * sin(i);
    vertex(sx, sy);
    sx = x + outR * cos(i + angle/2);
    sy = y + outR * sin(i + angle/2);
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
