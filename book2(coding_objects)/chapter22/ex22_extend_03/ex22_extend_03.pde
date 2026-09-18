import controlP5.*;

ControlP5 cp5;
CheckBox checkbox;
float c;

void setup() {
  size(500, 500);
  cp5 = new ControlP5(this);
  checkbox = cp5.addCheckBox("checkBox")
    .setPosition(30, 50)
    .setSize(50, 50)
    .addItem("black", 1)
    .addItem("light red", 2)
    .addItem("red", 3);
}

void draw() {
  background(c, 0, 0);
}

void controlEvent(ControlEvent theEvent) {
  float value = 0;
  String name = theEvent.getName();
  if (name.equals("checkBox")) {
    println(checkbox.getArrayValue());
    for (int i = 0; i < checkbox.getArrayValue().length; i++) {
      int num = (int)checkbox.getArrayValue()[i];
      if (num == 1) {
        value += checkbox.getItem(i).internalValue();
      }
    }
    c = map(value, 0, 6, 0, 255);
    println(value, c);
  }
}
