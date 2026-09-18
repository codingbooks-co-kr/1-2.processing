// 상하좌우 반사하는 100개의 원 객체들의 크기가 사운드의 크기에 따라 변화

import ddf.minim.*;

Minim minim;
AudioPlayer audio;

int num = 100;
Circle[] c = new Circle[num];

void setup() {
  size(500, 500);
  for (int i = 0; i < num; i++) {
    c[i] = new Circle();
  }
  minim = new Minim(this);
  audio = minim.loadFile("hometown.mp3");
  audio.loop();
}

void draw() {
  // 페이딩 효과 구현
  noStroke();  
  fill(0, 10);  
  rect(0, 0, width, height);

  float audioL = audio.left.level() * 100;
  for (int i = 0; i < num; i++) {
    c[i].move();
    c[i].display(audioL);
    c[i].bounce();
  }
}

class Circle {
  PVector location, velocity;
  color col;

  Circle() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(random(-1, 1), random(-1, 1));
    col = color(random(255), random(255), random(255));
  }

  void move() {
    location.add(velocity);
  }

  void display(float d) {
    fill(col);
    ellipse(location.x, location.y, d, d);
  }

  void bounce() {
    // 경계에 부딪힐 때 반사 적용
    if (location.x < 0) {
      location.x = 0;
      velocity.x *= -1;
    }
    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    }
    if (location.y < 0) {
      location.y = 0;
      velocity.y *= -1;
    }
    if (location.y > height) {
      location.y = height;
      velocity.y *= -1;
    }
  }
}
