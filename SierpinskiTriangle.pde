int myColor = 255;
public void setup()
{
  size(1000, 1000);
}
public void mousePressed()
{
  myColor = color((int)(Math.random()*256+100), (int)(Math.random()*256+100), (int)(Math.random()*256+100));
}
public void draw()
{
  background(0);
  noStroke();
  fill(myColor);
  sierpinski(0, 1000, 1000);
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
    triangle(x, y, x-len, y, x-(len/2), y-len);
  }
  else{
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
