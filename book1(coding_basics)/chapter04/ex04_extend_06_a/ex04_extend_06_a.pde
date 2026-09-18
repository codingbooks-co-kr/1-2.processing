// dist() 함수를 사용한 두 점의 거리 계산

void setup() { 
  size(300, 300); 
} 
 
void draw() { 
  background(0); 
  float d = dist(width/2, height/2, mouseX, mouseY);
  ellipse(width/2, height/2, d*2, d*2);
}
