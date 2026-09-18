// mp3 포맷의 오디오 재생

import ddf.minim.*;

Minim minim;
AudioPlayer audio;

void setup() {
  minim = new Minim(this);
  audio = minim.loadFile("hometown.mp3");
  audio.play();
}

void draw() {}
