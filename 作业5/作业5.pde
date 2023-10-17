PImage img;
void setup()
{
 
 size(800,800);
  background(255);
  img=loadImage("5.jpg");
  img.resize(width,height);
}

void draw()
{
  float ratio=float(height)/float(width);
  float tilesX=map(mouseX,0,width,60,100);
  float tilesY=ratio*tilesX;
  float tileXSize=width/tilesX;
  float tileYSize=height/tilesY;
  for (int y=0;y<img.height;y+=tileYSize)
  {
    for (int x=0;x<img.width;x+=tileXSize)
  {
    color c=img.get(x,y);
    float b=map(brightness(c),0,255,1,0);
    pushMatrix();
    translate(x,y);
    if(b<0.2);
    {
     fill(0);       
    rect(0,0,b*tileXSize,b*tileYSize);
    noStroke();
    }
    if(b>=0.2);
    {
      fill(1,50,0);
      ellipse(0,0,b*tileXSize,b*tileXSize);
   
    }
    popMatrix();
  }
  }
}
