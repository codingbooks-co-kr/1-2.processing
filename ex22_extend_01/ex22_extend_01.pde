import controlP5.*;

ControlP5 controlP5;
float c = 0;

void setup() {
  size(500, 500);
  controlP5 = new ControlP5(this);
  controlP5.addRadioButton("radioButton")
    .setPosition(30, 50)
    .setSize(50, 50)
    .addItem("black", 0)
    .addItem("light red", 1)
    .addItem("red", 2);
}

void draw() {
  background(c, 0, 0);
}

void controlEvent(ControlEvent theEvent) {
  String name = theEvent.getName();
  if (name.equals("radioButton")) {
    float value = theEvent.getGroup().getValue();
    c = map(value, 0, 2, 0, 255);
  }
}
