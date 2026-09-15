// 불규칙 운동하는 원의 색상과 크기를 마우스를 눌러 변경

int c = 255;
float d = 20.0, tx = 0.0, ty = 1.0;

void setup() {
  size(300, 300);
}

void draw() { 
  // 페이딩 효과
  noStroke();  
  fill(0, 10);  
  rect(0, 0, width, height);

  float x = noise(tx) * width;
  float y = noise(ty) * height;
  fill(c, 255, 255);
  ellipse(x, y, d, d);
  tx += 0.01;
  ty += 0.01;
}

void mousePressed() {
  c = int(random(0, 255));
  d = random(10, 100);
}
