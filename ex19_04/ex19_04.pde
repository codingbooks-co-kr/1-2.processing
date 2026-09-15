// 왼쪽 마우스를 누르면 원 생성, 원 내부에서 오른쪽 마우스를 누르면 원 객체 소멸

ArrayList<PVector> locations;
int d = 30;

void setup() {
  size(500, 500);
  locations = new ArrayList<PVector>();
}

void draw() {
  background(0);

  fill(255);
  textSize(30);
  text("locations: " + locations.size(), 50, 50);

  for (int i = 0; i < locations.size(); i++) {
    PVector l = locations.get(i);
    ellipse(l.x, l.y, d, d);
    text(i, l.x, l.y+50);
    if (mousePressed && mouseButton == RIGHT) {
      float distance = dist(l.x, l.y, mouseX, mouseY);
      if (distance < d/2) {
        locations.remove(i);
      }
    }
  }
}

void mousePressed() {
  if (mouseButton == LEFT) {
    PVector l = new PVector(mouseX, mouseY);
    locations.add(l);
  }
}
