// 진행바를 만들고 마우스를 누를 때마다 사운드가 재생 및 일시 정지

import ddf.minim.*;

Minim minim;
AudioPlayer audio;

void setup() {
  size(512, 200);
  minim = new Minim(this);
  audio = minim.loadFile("hometown.mp3");
  audio.loop();
}

void draw() {
  background(0);
  
  textSize(30);
  textAlign(CENTER);
  text(audio.position() + " / " + audio.length() + " msec", width/2, height/2);
  float pos = map(audio.position(), 0, audio.length(), 0, 300);
  fill(255);
  rect(100, 120, 300, 20);
  fill(255, 0, 0);
  rect(100, 120, pos, 20);
}

void mousePressed() {
  if (audio.isPlaying()) {
    audio.pause();
  } else {
    audio.loop();
  }
}
