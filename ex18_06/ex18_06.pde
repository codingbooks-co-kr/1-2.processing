// 마우스를 누르면 회전 운동의 반경 증가, 마우스에서 손을 떼면 반경 감소

PVector location = new PVector(0, 0);
float degree, theta, power;

void setup() {
  size(500, 500);
}

void draw() {
  // 페이딩 효과
  noStroke(); 
  fill(0, 10);
  rect(0, 0, width, height);

  if (mousePressed) {
    power++;
  } else {
    power--;
  }
  power = constrain(power, 0, width/2);
  degree += power * 0.1;
  theta = radians(degree);
  location.x = width / 2 + power * sin(theta);
  location.y = height / 2 + power * cos(theta);
  fill(255, 255, 0);
  ellipse(location.x, location.y, 30, 30);
}
