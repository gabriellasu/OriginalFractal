public void setup(){
  size(500,500);
  background(0);
}
public void draw(){
  myFractal(250, 250, 500);
}
public void myFractal(int x, int y, int siz){
  fill(#A1B5DB);
  ellipse(x,y,siz,siz);
  if(siz > 15){ //siz <= 10 base case, no recursion
    stroke(255,0,0);
  myFractal(x+siz/4,y, siz/2);
   stroke(255,255,0);
  myFractal(x-siz/4, y, siz/2);
  stroke(0,127,255);
  myFractal(x, y+siz/3, siz/3);
  stroke(0,255,0);
  myFractal(x, y-siz/3, siz/3);
  }
}
