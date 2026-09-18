// 랜덤 생성되는 원으로 큰 원 문양 만들기, 마우스 위치에 따라 생성되는 원의 개수 조정

void setup() {
  size(300, 300);
}

void draw() {  
  background(0);
  float num = map(mouseX, 0, width, 200, 2000);
  for (int i = 0; i < num; i++) {
    float x = random(width);
    float y = random(height);
    float d = dist(width/2, height/2, x, y);
    if (d < width/2) {
      fill(255, 255, 0);
    } else {
      fill(255, 0, 0);
    }
    ellipse(x, y, 10, 10);
  }
}
