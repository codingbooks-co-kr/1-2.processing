// PVector 사용하여 마우스로 원을 끌어 놓기(Drag & Drop)

PVector location, offset, mouse;
boolean over = false, choice = false;
float r = 30;

void setup() {
  size(500, 500);
  location = new PVector(width/2, height/2);
}

void draw() {
  // 페이딩 효과
  noStroke();  
  fill(0, 10);  
  rect(0, 0, width, height);

  float d = dist(mouseX, mouseY, location.x, location.y);
  if (d < r) {
    over = true;
  } else {
    over = false;
  }
  if (over) {
    fill(255, 0, 0);
  } else {
    fill(255, 255, 0);
  }
  ellipse(location.x, location.y, r*2, r*2);
}

void mousePressed() {
  if (over) {
    choice = true;
  }
  mouse = new PVector(mouseX, mouseY);
  offset = PVector.sub(mouse, location);
}

void mouseReleased() { 
  choice = false;
}

void mouseDragged() { 
  if (choice) {
    mouse = new PVector(mouseX, mouseY);
    location = PVector.sub(mouse, offset);
  }
}
