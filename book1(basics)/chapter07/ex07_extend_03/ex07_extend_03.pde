// 랜덤값이 password(=5)와 같아질 때까지 랜덤값 출력

size(500, 500);
textSize(30);
textAlign(CENTER);
while (true) {
  int password = int(random(-10, 10));
  if (password == 5) {
    break;
  }
  if (password < 0) {
    continue;
  }
  fill(0);
  text(password, random(width), random(height));
}
fill(255, 0, 0);
text("Welcome!", width/2, height/2);
