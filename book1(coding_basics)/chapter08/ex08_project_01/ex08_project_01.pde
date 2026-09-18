// 기어 모양을 만들고 마우스의 움직임으로 회전 가·감속

float velocity = 0.0, phase = 0.0, r = 150.0;

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  noStroke();
  fill(255, 255, 0);
  ellipse(width/2, height/2, 2*r, 2*r);

  float d = dist(width/2, height/2, mouseX, mouseY);
  if (d < r) {
    velocity = map(d, r, 0, 0, 5);
    phase += velocity;
  }
  for (int degree = 0; degree < 360; degree += 30) {
    float theta = radians(degree + phase);
    float x = width/2 + r * cos(theta);
    float y = height/2 + r * sin(theta);
    ellipse(x, y, 50, 50);
  }

  fill(255);
  textSize(30);
  textAlign(CENTER);
  text("velocity: " + nf(velocity, 1, 1), width/2, 50);
}
