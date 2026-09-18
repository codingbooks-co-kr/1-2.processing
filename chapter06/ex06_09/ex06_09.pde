// 숫자키로 다양한 각도의 원호 그리기

float degree = 90.0;

void setup() {
  size(300, 300);
}

void draw() { 
  background(0);
  if (keyPressed) { 
    if ((key >= '0') && (key <= '9')) {
      degree = map(key, '0', '9', 0, 360);
    }
  }
  arc(width/2, height/2, 200, 200, 0, radians(degree));
}
