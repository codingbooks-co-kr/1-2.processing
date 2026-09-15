// 좌우 반사하는 원

int x = 0, velocity = 1;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  bounce();
  display();
  move();
}

void bounce() {
  if ( (x < 0) || (x > width) )
    velocity *= - 1;
}

void display() {
  ellipse(x, height/2, 30, 30);
  println(x);
}

void move() {
  x += velocity;
}
