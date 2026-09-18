// 좌우 반사하는 팩맨(Pac-Man: 고전 게임의 주인공)

float x = 0.0, degree = 0.0, velocity = 1.0; 

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  if (velocity > 0) {
    arc(x, height/2, 150, 150, radians(degree), radians(360-degree));
  } 
  if (velocity < 0) {
    arc(x, height/2, 150, 150, radians(180+degree), radians(3*180-degree));
  }
  x += velocity;
  degree++;
  if (x < 0 || x > width) {
    velocity *= -1;
  }
  if (degree >= 40) {
    degree = 0;
  }
}
