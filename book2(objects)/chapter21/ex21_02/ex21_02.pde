// 원 안에서 마우스를 누르면 사운드 재생

import ddf.minim.*;

Minim minim;  
AudioPlayer audio;
float r = 100;

void setup() {
  size(500, 500);
  minim = new Minim(this); 
  audio = minim.loadFile("hometown.mp3");
}

void draw() {
  background(0);
  fill(255, 255, 0);
  ellipse(width/2, height/2, r*2, r*2);
}

void mousePressed() {
  float d = dist(mouseX, mouseY, width/2, height/2);
  if (d < r) {
    audio.play(0);
  }
}
