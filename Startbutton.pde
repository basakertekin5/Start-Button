float x;
float y;

float x1 = 0;
float y1 = 0;
float w1 = 0;
float h1 = 0;

float xb;
float yb;

float pct = 0.1;

boolean scene1 = true;
boolean scene2 = false;

void setup() {
  size(400, 400);
  w1 = 240;
  h1 = 60;
  x1 = width*0.5 - w1 * 0.5;
  y1 = height*0.5 - h1 *0.5;
}


void draw() {
  if (scene1 == true) {
    rect( x1, y1, w1, h1);
  }
  
  if (scene2 == true) {
  background(255);
  xb = mouseX;
  yb = mouseY;

  // expo moving algorithm
  x = x + (xb - x) * pct;
  y = y + (yb - y) * pct;

  // expo moving ellipse
  fill(#3498DB);
  noStroke();
  ellipse(x, y, 40, 40);
  }
}

void mousePressed() {
  if (mouseX > x1 && mouseX < x1 + w1 && mouseY > y1 && mouseY < y1 + h1) {
    scene1 = false;
    scene2 = true;
  } 
}