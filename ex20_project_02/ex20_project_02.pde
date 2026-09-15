// 본문 코드: 자연 이미지를 배경으로 마우스를 누르면 나비가 하나씩 생성되어 랜덤 이동2

PImage bg_img;
ArrayList<Butterfly> butterflies;

void setup() {
  size(640, 360);
  bg_img = loadImage("nature3.jpg");
  butterflies = new ArrayList<Butterfly>();
}

void draw() {
  background(bg_img);
  for (int i = 0; i < butterflies.size(); i++) {
    Butterfly b = butterflies.get(i);
    b.display();
    b.move();
  }
  if (butterflies.size() > 5) {
    butterflies.remove(0);
  }
  println(butterflies.size());
}

void mousePressed() {
  butterflies.add(new Butterfly());
}

// Butterfly 클래스 코드

class Butterfly {
  PImage img;
  PVector location, t;
  float d;

  Butterfly() {
    img = loadImage("butterfly.png");
    location = new PVector(0.0, 0.0);
    t = new PVector(0.0, 0.5);
    d = 50;
  }

  void display() {
    imageMode(CENTER);
    image(img, location.x, location.y, d, d);
  }

  void move() {
    location.x = noise(t.x) * width;
    location.y = noise(t.y) * height;
    t.x += 0.01;
    t.y += 0.01;
  }
}
