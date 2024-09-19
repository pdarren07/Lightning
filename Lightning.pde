int startX;
int startY;
int endX;
int endY;
int thickness;
int hue;
int r = 255;
int g = 255;
int b = 255;
int lightning = 0;
boolean reset = false;

void setup()
{
  size(800,800);
  background(29,25,57);
  strokeWeight(1);
}
void draw()
{
  stroke(r,g,b);
  strokeWeight(thickness);
  thickness = (int)(Math.random()*4)+3;
  hue = (int)random(1,4);
  if(hue == 1)
  {
    r = 248;
    g = 225;
    b = 171;
  } 
  else if(hue == 2)
  {
    r = 152;
    g = 136;
    b = 159;
  }
  else if (hue == 3)
  {
    r = 248;
    g = 225;
    b = 171;
  }
  else
  {
    r = 255;
    g = 255;
    b = 255;
  }
  while(endY<800)
  {
    System.out.print(thickness);
    System.out.println(hue);
    endX=startX + (int)(Math.random()*30)-13;
    endY=startY + (int)(Math.random()*9)+1;
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
  if(keyPressed){
    background(29,25,57);
  }
}
void mousePressed(){ 
  startX = (int)(Math.random()*500)*1;
  startY = 0;
  endX = 400;
  endY = 0;
}
