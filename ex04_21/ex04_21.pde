// 원의 중심에서 마우스까지의 거리에 따라 원의 크기 변경

void setup() { 
  size(300, 300); 
} 
 
void draw() { 
  background(0); 
  float d = dist(width/2, height/2, mouseX, mouseY);
  ellipse(width/2, height/2, d*2, d*2);
}
