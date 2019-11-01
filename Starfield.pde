Particle [] asteroids, venus, mars, sun;
void setup()
{
  frameRate(35);
  background(0);
  size (500,500);
  asteroids = new Particle[1000];
    for(int i = 0; i < asteroids.length;i++)
    {
      asteroids[i] = new Particle();
      
   
    }
    asteroids[0] = new  Earth();
       //asteroids[1] = new  Venus();
       // asteroids[2] = new  Mercury();
}
void draw()
{
  //your code here
background(0);
for(int i = 0; i < asteroids.length; i++)
  {
  asteroids[i].move();
  asteroids[i].show();
  }
}
class Particle
{
  double myX,myY,speed,angle;
  int myColor;
  Particle()
  {
  myX = 250;
  myY = 250;
  speed = Math.random()*7;
  angle = Math.random()*8;
  myColor = color(255);
  }
  void move()
  {
    myX = myX + (Math.cos(angle)*speed);
    myY = myY + (Math.sin(angle)*speed);
    
  }
  void show()
  {
    
    stroke(0);
    fill(myColor);
    ellipse((float)myX,(float)myY, 5, 5);
  }
}

class Earth extends Particle
{
  //your code here
  Earth()
  {
  myX = 250;
  myY = 250;
  speed = Math.random()*1;
  angle = Math.random()*8;
  }
  void move()
  {
   myX = myX + (Math.cos(angle)*speed);
   myY = myY + (Math.sin(angle)*speed);
   angle = angle + 0.005;
  }
  void show()
  {
  
    noStroke();
    fill(30,144,255);
    ellipse((float)myX,(float)myY,50,50);
    stroke(34,139,34);
    fill(34,139,34);
    beginShape();
    vertex((float)myX-14,(float)myY-20);
    vertex((float)myX-21,(float)myY-10);
    vertex((float)myX,(float)myY);
    vertex((float)myX-3,(float)myY-24);
    endShape();
    beginShape();
    vertex((float)myX-3,(float)myY);
    vertex((float)myX+4,(float)myY);
    vertex((float)myX+13,(float)myY+3);
    vertex((float)myX+11,(float)myY+5);
    vertex((float)myX-4,(float)myY+18);
    endShape();
    ellipse((float)myX+11,(float)myY-15,10,10);

  }
}

//class Venus extends Particle
//{
//  //your code here
//  Venus()
//  {
//  myX = 300+10;
//  myY = 300+10;
//  speed = Math.random()*1;
//  angle = Math.random()*8;
//  }
//  void move()
//  {
//   myX = myX + (Math.cos(angle)*speed);
//   myY = myY + (Math.sin(angle)*speed);
//   angle = angle + 0.005;
//  }
//  void show()
//  {
  
//    noStroke();
//    fill(178,34,34);
//    ellipse((float)myX+11,(float)myY-15,41,41);
//  }
//}

//class Mercury extends Particle
//{
//  //your code here
//  Mercury()
//  {
//  myX = 300+20;
//  myY = 300+20;
//  speed = Math.random()*1;
//  angle = Math.random()*8;
//  }
//  void move()
//  {
//   myX = myX + (Math.cos(angle)*speed);
//   myY = myY + (Math.sin(angle)*speed);
//   angle = angle + 0.005;
//  }
//  void show()
//  {

//    noStroke();
//    fill(255,160,122);
//    ellipse((float)myX+11,(float)myY-15,20,20);
//  }
//}

//class Mars extends Particle
//{
//  //your code here
//  Mars()
//  {
//  myX = 300+30;
//  myY = 300+30;
//  speed = Math.random()*1;
//  angle = Math.random()*8;
//  }
//  void move()
//  {
//   myX = myX + (Math.cos(angle)*speed);
//   myY = myY + (Math.sin(angle)*speed);
//   angle = angle + 0.005;
//  }
//  void show()
//  {

//    noStroke();
//    fill(255,160,122);
//    ellipse((float)myX+11,(float)myY-15,20,20);
//  }
//}
