float a = 0;
float h = 0;
float x = 0;
float y = 0;
float k = 0;
float A = 0;
float B = 0;
float Ax = 0;
float Bx = 0;
float Ay = 0;
float By = 0;
float C = 0;
float vertexY = 0;

void setup()
{
  a = 0.00339;
  h = 300;
  x = 50;
  y = 550;

  size(600, 600);
}

void draw()
{

  background(0);
  noStroke();
  k = y-a*pow((x-h), 2); 

  x = x+3;

  y = a*pow((x-h), 2) + k;


  ellipse(x, y, 25, 25);

  if ( y > 550||mousePressed)
  {
    x=50;
    y=550;
  }

  vertexY = (C)*.00001;
  println("vertexY is:" +vertexY);
  a = vertexY;
  A = Ax - Bx;
  B = Ay - By;
  C = sqrt(A*A + B*B);
  h = C;
}

void mousePressed()
{
  if (mousePressed);
  {
    Ay = mouseY;
    Ax = mouseX;
    //println("mouseY is: " + mouseY);
  }
}
void mouseReleased()
{
  By = mouseY;
  Bx = mouseX;
  println("C is: " + C);
}
