// sqrt() 함수를 사용한 원의 크기 변경

void setup() { 
  size(300, 300); 
} 

void draw() { 
  background(0); 
  float x = width/2 - mouseX;
  float y = height/2 - mouseY;
  float d = sqrt(x*x + y*y);
  ellipse(width/2, height/2, d*2, d*2);
}
