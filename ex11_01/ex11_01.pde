// 0.5초(=500msec)마다 원 랜덤 생성

int interval = 0, current_time = 0, previous_time = 0;
float x, y;

void setup() {
  size(300, 300);
  background(0);
}

void draw() {
  current_time = millis();
  interval = current_time - previous_time;
  if (interval > 500) {
    previous_time = millis();
    fill(random(255), random(255), random(255));
    x = random(0, width);
    y = random(0, height);
  }
  noStroke();
  ellipse(x, y, 50, 50);
}
