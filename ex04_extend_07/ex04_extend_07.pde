float x = 0.0;

void setup() {
  size(500, 300);
  background(0);
}

void draw() {
  x = lerp(x, mouseX, 0.05);
  ellipse(x, height/2, 30, 30);
}
