// 슬라이더 조작으로 이미지 객체 회전

import controlP5.*;

ControlP5 cp5;
PImage img;
float theta = 0;

void setup() {
  size(700, 500);
  img = loadImage("flower.jpg");
  cp5 = new ControlP5(this);
  cp5.addSlider("slider")
    .setPosition(10, 20)
    .setSize(200, 30)
    .setRange(0, TWO_PI)
    .setValue(PI)
    .setFont(createFont("Arial", 20));
  background(0);
}

void draw() {
  float x = width/2 + 100 * cos(theta);
  float y = height/2 + 100 * sin(theta);
  imageMode(CENTER);
  image(img, x, y);
}

void slider(float value) { 
  theta = value;
}
