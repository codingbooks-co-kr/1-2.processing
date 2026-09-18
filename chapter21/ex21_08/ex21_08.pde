// 원이 상하좌우 반사하면서 경계에 부딪힐 때마다 충격음 재생

import ddf.minim.*;

Minim minim;
AudioSample audio;

float x = 250.0, y = 250.0, velocity_x = 4.0, velocity_y = 3.0;

void setup() {
  size(500, 500);
  minim = new Minim(this);
  audio = minim.loadSample("crash.wav");
}

void draw() {
  // 페이딩 효과
  noStroke();  
  fill(0, 10);  
  rect(0, 0, width, height);

  fill(255);
  ellipse(x, y, 50, 50);

  x += velocity_x;
  y += velocity_y;  
  if (x < 0 || x > width) {
    velocity_x *= -1;
    audio.trigger();
  }
  if (y < 0 || y > height) { 
    velocity_y *= -1;
    audio.trigger();
  }
}
