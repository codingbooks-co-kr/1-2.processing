// 원 안에서 왼쪽 마우스: 사운드 재생, 오른쪽 마우스:처음부터 재생, 원 밖: 일시 정지

import ddf.minim.*;

Minim minim;  
AudioPlayer audio;
float r = 100;
color c = color(0, 0, 255);

void setup() {
  size(500, 500);
  minim = new Minim(this); 
  audio = minim.loadFile("hometown.mp3");
}

void draw() {
  background(0);
  fill(c);
  ellipse(width/2, height/2, r*2, r*2);
}

void mousePressed() {
  float d = dist(mouseX, mouseY, width/2, height/2);
  if (d < r && mouseButton == LEFT) {
    c = color(255, 0, 0);
    audio.play();
  } else if (d < r && mouseButton == RIGHT) {
    c = color(0, 255, 0);
    audio.play(0);
  } else {
    c = color(0, 0, 255);
    audio.pause();
  }
}
