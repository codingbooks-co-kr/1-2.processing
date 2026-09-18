// 랜덤값이 password와 같아질 때까지 랜덤값 출력

size(500, 500);
int password = 0;
textSize(30);
textAlign(CENTER);
while (password != 5) {
  password = (int)random(-10, 10);
  fill(0);
  text(password, random(width), random(height));
}
fill(255, 0, 0);
text("Welcome!", width/2, height/2);
