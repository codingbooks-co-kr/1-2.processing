// for문과 cos() 및 sin() 함수를 사용하여 랜덤한 위치에 점 100개를 찍어 도넛 모양 만들기

void setup() {
  size(300, 300);
  background(0);
}

void draw() {
  for (int i = 0; i < 100; i++) {
    float theta = random(0, radians(360));
    float r = random(width/4, width/2);
    float x = width/2 + r * cos(theta);
    float y = height/2 + r * sin(theta);
    stroke(255, 255, 0);
    point(x, y);
  }
}
