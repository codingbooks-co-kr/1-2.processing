// radians() 함수를 사용한 원의 상하 진동

float degree = 0.0;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  float y = height/2 + height/2 * sin(radians(degree));
  stroke(255);
  line(width/2, 0, width/2, y);
  ellipse(width/2, y, 30, 30);
  degree += 6;
}
