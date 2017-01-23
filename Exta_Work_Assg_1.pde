//Switch to 3d space
//Switch Elipses to Spheres using a uniform z index
//Add ocilating z-index to create the 3d depth


int colour;//Setting 'color' variable
int siZe;//Setting 'size' variable
int Size;//Setting another 'size' variable
float t = 0.0; //floating t
float inc = TWO_PI/25.0; //Setting a float variable for my sin wave
float prev_x = 0, prev_y = 50, x, y; //floating more variables to draw sign wave
float prev_a = 0, prev_b = 50, a, b;
float prev_d = 0, prev_e = 0, d, e;

void setup() {
  size(800, 800);//setting canvas size
  background(0, 0, 0);//filling background color
  fill(0, 0, 0);//filling 
  stroke(255, 255, 255);//stroke color
  strokeWeight(1);//stroke width
  frameRate(6);//setting speed of the frame rate
}

void draw() {
  lights();
  t=t+1;
  siZe=mouseX/2;//setting variable to an equation
  Size=mouseY/2;//setting variable to an equation
  background(colour, 0, 0);//filling in using color variable color
  fill(0, colour, 0);//fill

  for (int i=0; i<800; i=i+4) { //Setting a for loop for my size
    x = i;
    y = 400 + sin(t) * 30; //Setting sin wave equation
    ellipse(prev_x,prev_y,5,5);
    prev_x = x;//Setting to make remember previous points
    prev_y = y;//Setting to make remember previous points
    t = t + inc;
    fill(0, 0, 300);
  }

  for (int i=0; i<800; i=i+4) {
    a = i;
    b = 400+sin(t+3)*30;
    ellipse(prev_a,prev_b,5,5);
    prev_a = a;
    prev_b = b;
    t = t + inc;
    fill(300, 0, 0);
  }

  for (int i=0; i<800; i=i+4) {
    x=i;
    a=i;
    y=400 + sin(t) * 30; 
    b=400+sin(t+3)*30;
    line(x, y, a, b);
    prev_x =x;
    prev_y = y;
    prev_a = a;
    prev_b = b;
    t = t + inc;
  }
}