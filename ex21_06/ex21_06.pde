// 마우스를 누르면 누른 지점부터 사운드가 재생

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
  stroke(255);
  for (int i = 0; i < audio.bufferSize()-1; i++) {
    line(i, 50+audio.left.get(i)*50, i+1, 50+audio.left.get(i+1)*50);
    line(i, 150+audio.right.get(i)*50, i+1, 150+audio.right.get(i+1)*50);
  }

  float pos = map(audio.position(), 0, audio.length(), 0, width);

  stroke(0, 255, 0);
  line(pos, 0, pos, height);
}

void mousePressed() {
  float posTime = map(mouseX, 0, width, 0, audio.length());
  audio.cue(int(posTime));
}
