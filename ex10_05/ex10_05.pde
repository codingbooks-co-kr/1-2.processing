// 작은 원으로 사인파를 만들고 주기는 마우스의 좌우 움직임으로 조절

float[] y; 

void setup() {
  size(300, 300);
  y = new float[width];
}

void draw() {
  background(0);
  for (int x = 0; x < width; x++) { 
    float theta = map(x, 0, mouseX+1, 0, TWO_PI);
    y[x] = height/2 + 100.0 * sin(theta);
    stroke(255);
    ellipse(x, y[x], 5, 5);
  }
}
