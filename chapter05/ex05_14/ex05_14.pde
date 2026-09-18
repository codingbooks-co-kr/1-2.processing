// 랜덤하게 움직이지만 위쪽으로 움직일 확률이 높은 원

float x = 150.0, y = 150.0, r;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  ellipse(x, y, 30, 30);
  r = random(1);
  if (r < 0.2) {           // 20%의 확률
    x++;
  } else if (r < 0.4) {    // 20%의 확률
    x--;
  } else if (r < 0.6) {    // 20%의 확률
    y++;
  } else {                 // 40%의 확률
    y--;
  }
}
