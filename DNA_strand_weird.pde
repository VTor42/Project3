void setup() {
  size(1000, 800, P3D); 
  background(0, 0, 0);//filling background color
}

void draw() {
  background(200);
  lights();
  stroke(255,255,255);

  pushMatrix();
  fill(255, 255, 255);
  translate(150, 400, 0);//first top sphere
  sphere(10);
  popMatrix();
  
  stroke(255);
  line(150,400,150,500);

  pushMatrix();
  stroke(255);
  translate(350, 450, 100);//second middle sphere
  sphere(10);
  popMatrix();

  pushMatrix();
  stroke(0);
  translate(350, 450, -100);//second middle sphere (black)
  sphere(10);
  popMatrix();
  
  stroke(255);
  line(350,450,100,350,450,-100);

  pushMatrix();
  stroke(0);
  translate(550, 400, 0);//third top sphere
  sphere(10);
  popMatrix();

  pushMatrix();
  stroke(0);
  translate(750, 450, 100);//last middle sphere (black)
  sphere(10);
  popMatrix();

  pushMatrix();
  stroke(255);
  translate(750, 450, -100);//last middle sphere(white)
  sphere(10);
  popMatrix();
  
  line(750,450,100,750,450,-100);

  pushMatrix();
  stroke(255);
  translate(550, 500, 0);//third bottom sphere
  sphere(10);
  popMatrix();

  line(550,500,550,400);

  pushMatrix();
  stroke(0);
  translate(150, 500, 0);//first bottom sphere
  sphere(10);
  popMatrix();
  
  stroke(255);//white lines
  line(150,400,0,350,450,100);
  line(350,450,100,550,500,0);
  line(550,500,0,750,450,-100);
  stroke(0);//black lines
  line(150,500,0,350,450,-100);
  line(350,450,-100,550,400,0);
  line(550,400,0,750,450,100);
}