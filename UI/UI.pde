import controlP5.*;

ControlP5 cp5;

int state;

static final int Home_Screen = 0;
static final int Confident_Yes = 1;
static final int Doubtful_Yes = 2;
static final int Confident_No = 3;
static final int Doubtful_No = 4;

int textx;
int texty;

int TextSize = 30;

void setup() {
  size(1200, 800);

  textx = width/2;
  texty = height/2;

  cp5 = new ControlP5(this);

  cp5
    .addButton("Home")
    .setValue(0)
    .setPosition(50, 50)
    .setSize(100, 50);
}

void draw() {

  switch(state) {

  case Home_Screen:
    displayHome_Screen();
    break;

  case Confident_Yes:
    displayConfident_Yes();
    break;

  case Doubtful_Yes:
    displayDoubtful_Yes();
    break;

  case Confident_No:
    displayConfident_No();
    break;

  case Doubtful_No:
    displayDoubtful_No();
    break;
  }
}

void keyPressed() {
  if (key == '0') {
    state = Home_Screen;
  }
  if (key == '1') {
    state = Confident_Yes;
  }
  if (key == '2') {
    state = Doubtful_Yes;
  }
  if (key == '3') {
    state = Confident_No;
  }
  if (key == '4') {
    state = Doubtful_No;
  }
}

void displayHome_Screen() {
  background(153);
  textSize(TextSize);
  text("Home Screen", textx, texty);
  textAlign(CENTER, CENTER);
}


void displayConfident_Yes() {
  background(0, 255, 0);
  textSize(TextSize);
  text("Confident Yes", textx, texty);
  textAlign(CENTER, CENTER);
}


void displayDoubtful_Yes() {
  background(0, 255, 0);
  textSize(TextSize);
  text("Doubtful Yes", textx, texty);
  textAlign(CENTER, CENTER);
}


void displayConfident_No() {
  background(255, 0, 0);
  textSize(TextSize);
  text("Confident No", textx, texty);
  textAlign(CENTER, CENTER);
}


void displayDoubtful_No() {
  background(255, 0, 0);
  textSize(TextSize);
  text("Doubtful No", textx, texty);
  textAlign(CENTER, CENTER);
}

void controlEvent(ControlEvent theEvent) {
  if (theEvent.getController().getName()=="Home") {
    state = Home_Screen;
  }
}
