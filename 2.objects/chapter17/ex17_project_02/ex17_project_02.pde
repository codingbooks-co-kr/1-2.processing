// 좌우 반사하는 팩맨 만들기. Rectangle 클래스를 사용하여 개폐 각도 수정

import java.awt.Rectangle;

Rectangle[] r = new Rectangle[5];
int x = 0, degree = 0, maxDegree = 40, velocity = 1;

void setup() { 
  size(500, 500);
  for (int i = 0; i < r.length; i++) { 
    r[i] = new Rectangle(75*(i+1), 100, 50, 50);
  }
} 

void draw() { 
  background(0);
  for (int i = 0; i < r.length; i++) {
    if (r[i].contains(mouseX, mouseY)) {
      fill(255, 0, 0);
      maxDegree = 30 * i + 10;
    } else {
      fill(255, 255, 0);
    }
    rect(r[i].x, r[i].y, r[i].width, r[i].height);
  }

  fill(255);
  if (velocity > 0) {
    arc(x, height/2, 150, 150, radians(degree), radians(360-degree));
  } 
  if (velocity < 0) {
    arc(x, height/2, 150, 150, radians(180+degree), radians(3*180-degree));
  }

  x += velocity;
  degree++;
  if (x < 0 || x > width) {
    velocity *= -1;
  }
  if (degree >= maxDegree) {
    degree = 0;
  }
}
