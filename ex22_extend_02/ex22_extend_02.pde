import controlP5.*;

ControlP5 cp5;
float c = 0;

void setup() {
  size(500, 500);
  cp5 = new ControlP5(this);
  cp5.addDropdownList("dropDownList")
    .setPosition(30, 50)
    .setSize(150, 150)
    .setBarHeight(30)
    .setItemHeight(30)
    .addItem("black", 0)
    .addItem("light red", 1)
    .addItem("red", 2)
    .setFont(createFont("Arial", 20));
}

void draw() {
  background(c, 0, 0);
}

void controlEvent(ControlEvent theEvent) {
  String name = theEvent.getName();
  if (name.equals("dropDownList")) {
    float value = theEvent.getController().getValue();
    c = map(value, 0, 2, 0, 255);
  }
}
