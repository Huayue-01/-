float xoff = 0.0;
float xincrement = 0.01; 
void setup(){
size(600,900);

}

void draw(){
 float n = noise(xoff)*width;
   xoff += xincrement;
 background(n,mouseY); 
 translate(300,450);
 stroke(n,mouseY,220,20);
  for(int i=0;i<20;i++){
  strokeWeight(4*i);
  rotate(PI*2/mouseY);
  fill(mouseY,n,mouseY);
  ellipse(0,0,n,mouseY);
  
  
  }
}
