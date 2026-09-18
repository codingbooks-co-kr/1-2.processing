// 결과 화면의 상하로 스테레오 채널의 파형 그리기

import ddf.minim.*;

Minim minim;
AudioPlayer audio;
 
void setup() {
  size(1024, 200);
  minim = new Minim(this);
  audio = minim.loadFile("hometown.mp3");
  audio.play();
}
 
void draw() {
  background(0);
  stroke(255);
  for (int i = 0; i < audio.bufferSize()-1; i++) {
    line(i, 50+audio.left.get(i)*50, i+1, 50+audio.left.get(i+1)*50);
    line(i, 150+audio.right.get(i)*50, i+1, 150+audio.right.get(i+1)*50);
  }
}
