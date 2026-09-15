// 본문 코드: 자연 이미지를 배경으로 마우스를 누르면 나비가 하나씩 생성되어 랜덤 이동1

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
    b.bounce();
  }
  if (butterflies.size() > 5) {
    butterflies.remove(0);
  }
  println(butterflies.size());
}

void mousePressed() {
  butterflies.add(new Butterfly(mouseX, mouseY));
}

// Butterfly 클래스 코드

class Butterfly {
  PImage img;
  PVector location, velocity;
  float d;

  Butterfly(float x, float y) {
    img = loadImage("butterfly.png");
    location = new PVector(x, y);
    velocity = new PVector(random(-2, 2), random(-2, 2));
    d = 50;
  }

  void display() {
    image(img, location.x, location.y, d, d);
  }

  void move() {
    location.add(velocity);
  }

  void bounce() {
    // 경계에 부딪힐 때 반사 적용
    if (location.x < 0) {
      location.x = 0;
      velocity.x *= -1;
    }
    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    }
    if (location.y < 0) {
      location.y = 0;
      velocity.y *= -1;
    }
    if (location.y > height) {
      location.y = height;
      velocity.y *= -1;
    }
  }
}
