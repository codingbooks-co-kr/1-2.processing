// 버튼을 누를 때마다 사운드가 재생 및 일시 정지

import controlP5.*;
import ddf.minim.*;

ControlP5 controlP5;
Minim minim;
AudioPlayer audio;

void setup() {
  size(500, 500);
  minim = new Minim(this);
  audio = minim.loadFile("hometown.mp3");

  controlP5 = new ControlP5(this);
  controlP5.addButton("Audio")    // 버튼명이 "Audio"인 새로운 버튼의 추가
    .setPosition(30, 50)
    .setSize(100, 50)   
    .setFont(createFont("arial", 20));
}

void draw() { 
  background(200);
  textSize(30);
  textAlign(CENTER);
  text(audio.position() + " / " + audio.length(), width/2, height/2);
  float pos = map(audio.position(), 0, audio.length(), 0, 300);
  fill(255);
  rect(100, 270, 300, 20);
  fill(255, 0, 0);
  rect(100, 270, pos, 20);
}

void Audio() {      // "Audio" 버튼의 이벤트 발생 시 자동 호출되는 함수
  if (audio.isPlaying()) {
    audio.pause();
  } else {
    audio.loop();
  }
}
