// 마우스를 누르면 원 객체가 하나씩 생성, 생성된 객체가 다섯 개를 넘으면 0번 객체 소멸

import java.util.ArrayList;          // 삭제 가능

ArrayList<PVector> locations;

void setup() {
  size(500, 500);
  locations = new ArrayList<PVector>();
}

void draw() {
  background(0);

  fill(255);
  textSize(30);
  text("Circles: " + locations.size(), 50, 50);

  for (int i = 0; i < locations.size(); i++) {
    PVector l = locations.get(i);
    ellipse(l.x, l.y, 30, 30);
  }
  if (locations.size() > 5) {
    locations.remove(0);
  }
}

void mousePressed() {
  PVector l = new PVector(mouseX, mouseY);
  locations.add(l);
}
