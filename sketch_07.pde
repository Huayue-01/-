PGraphics pg;
PFont font;
float maxDistance;

void setup()
{  font=createFont("BROADW.TTF",200);
  size(700,900,P2D);
  noStroke();
  fill(0);
  maxDistance=dist(0,0,width,height);
  smooth();
  pg=createGraphics(width,height,P2D);
}


void draw()
{
  
 background(255);


textFont(font);
text("NAGI",10,400);
 fill(255);
  translate(20,20);
    for(int i=0;i<width;i+=40)
    {
      for(int j=0;j<height;j+=40)
      {
      float mouseDist=dist(mouseX,mouseY,i,j);
      float diameter=(mouseDist/maxDistance)*80;
      ellipse(i,j,diameter,diameter);
       fill(0);
      }
      }
 
    }
