// 랜덤한 위치에 점 100개를 찍어 원 모양 그리기

void setup() {
  size(300, 300);
  background(0);
}

void draw() {  
  for (int i = 0; i < 100; i++) {
    float x = random(width);
    float y = random(height);
    float r = dist(width/2, height/2, x, y);
    if (r < width/2) {
      stroke(255, 255, 0);
      point(x, y);
    }
  }
}
