// 스테레오 채널의 사운드 크기 변화를 원의 크기 변화로 변경

import ddf.minim.*;

Minim minim;
AudioPlayer audio;

void setup() {
  size(500, 500);
  minim = new Minim(this);
  audio = minim.loadFile("hometown.mp3");
  audio.play();
}

void draw() {
  // 페이딩 효과 구현
  noStroke();  
  fill(0, 10);  
  rect(0, 0, width, height);
  
  float audioL = 50 + width * audio.left.level();
  float audioR = 50 + width * audio.right.level();

  fill(255, 255, 0);
  ellipse(150, height/2, audioL, audioL);
  ellipse(350, height/2, audioR, audioR);
}
