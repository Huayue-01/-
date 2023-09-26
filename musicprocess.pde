import ddf.minim.*;
Minim     minim;
AudioPlayer music;  //用了minim库

float voice;  //插入音乐
void setup()
{
  size(1000,1000);
  smooth();
  minim=new Minim(this);
  music=minim.loadFile("music.mp3",1024);
  music.loop();
}

void draw()
{
voice=music.mix.level();
background(255);
noFill();
translate(width/2,height/2);     //把原点放到画布中心

for (int i=0; i<1000; i++)
{
  float d=map(0,i,voice*5,1500,0);
  ellipse(0,0,d,d);    //根据音量，用for函数画圈，以原点为中心
 
  float c=map(1,d/2,100,200,20);
  stroke(255,200-c,300-c);     //颜色，粗细变化
  
  float w=map(1,d/2,100,10,2);
  strokeWeight(w);
}
//for函数结束
//下面代码没有渐变，替换了
/*if (voice>0.2)
*{
*strokeWeight(5);
*stroke(255,20,147);
*}
*if(voice<0.2)
*{
*  stroke(255,192,203);
*strokeWeight(3);
*}
*/

}
//draw函数结束

//尝试做一个点击交互,失败了
/*
mousePressed()
{
stroke(random,random,random);
}
*/


  
