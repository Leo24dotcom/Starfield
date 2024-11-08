class Particle
{
    int myColor;
    double myX, myY,myAngle,mySpeed;
Particle(){
  myX = 200.0;
  myY = 200.0;
  myColor = (int)(Math.random()*40);
  myAngle =  Math.random()*2*Math.PI;
  mySpeed = (Math.random()*5);
}
void move(){
  myX = myX + Math.cos(mySpeed);
  myY = myY + Math.sin(mySpeed);
  if(myX < 0){
   myX = 200.0;
   myY = 200.0;
  }
}


void show(){
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  ellipse((int)myX,(int)myY,10,10);
}


}
class Bigbob extends Particle{
 Bigbob(){
  myX = 200.0;
  myY = Math.random()*350;
  myColor = (int)(Math.random()*255);
  myAngle =  Math.random()*2*Math.PI;
  mySpeed = (Math.random()*10);
  
 }
 void move(){
  myX = myX + Math.cos(mySpeed);
  myY = myY + Math.sin(mySpeed);
  if(myX < 0){
   myX = 200.0;
   myY = Math.random()*350;
  }
}
void show(){
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  ellipse((int)myX,(int)myY,20,20);
}
}

class Jim extends Particle{
 Jim(){
  myX = 100.0;
  myY = Math.random()*350;
  myColor = (int)(Math.random()*255);
  myAngle =  Math.random()*2*Math.PI;
  mySpeed = (Math.random()*10);
  
 }
 void move(){
  myX = myX + Math.cos(mySpeed);
  myY = myY - Math.sin(mySpeed);
  if(myX < 0){
   myX = 200.0;
   myY = Math.random()*350;
  }
}
void show(){
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  ellipse((int)myX,(int)myY,40,40);
}
}

class Particle2
{
    int myColor;
    double myX, myY,myAngle,mySpeed;
Particle2(){
  myX = 200.0;
  myY = 200.0;
  myColor = (int)(Math.random()*40);
  myAngle =  Math.random()*2*Math.PI;
  mySpeed = (Math.random()*5);
}
void move(){
  myX = myX - Math.cos(mySpeed);
  myY = myY - Math.sin(mySpeed);
  if(myX > 400){
   myX = 200.0;
   myY = 200.0;
  }
}


void show(){
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  ellipse((int)myX,(int)myY ,10,10);
}


}
class Bigbob2 extends Particle2{
 Bigbob2(){
  myX = 200.0;
  myY = Math.random()*350;
  myColor = (int)(Math.random()*255);
  myAngle =  Math.random()*2*Math.PI;
  mySpeed = (Math.random()*10);
  
 }
 void move(){
  myX = myX - Math.cos(mySpeed);
  myY = myY - Math.sin(mySpeed);
  if(myX > 400){
   myX = 200.0;
   myY = Math.random()*350;
  }
}
void show(){
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  ellipse((int)myX,(int)myY,20,20);
}
}

class Jim2 extends Particle2{
 Jim2(){
  myX = 300.0;
  myY = Math.random()*350;
  myColor = (int)(Math.random()*255);
  myAngle =  Math.random()*2*Math.PI;
  mySpeed = (Math.random()*10);
  
 }
 void move(){
  myX = myX - Math.cos(mySpeed);
  myY = myY - Math.sin(mySpeed);
  if(myX > 400){
   myX = 200.0;
   myY = Math.random()*350;
  }
}
void show(){
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  ellipse((int)myX,(int)myY,40,40);
}
}

Particle [] jimb;
Particle2 [] meb; 


void setup(){
  size(400,400);
  jimb = new Particle[400];
  for(int i = 0; i < 73; i++){
   jimb[i] = new Bigbob(); 
  }
  for(int i = 73; i < 75; i++){
   jimb[i] = new Jim(); 
  }
  for(int i = 75; i < jimb.length; i++){
   jimb[i] = new Particle(); 
  }
 
  
  meb = new Particle2[400];
  for(int i = 0; i < 73; i++){
   meb[i] = new Bigbob2(); 
  }
  for(int i = 73; i < 75; i++){
   meb[i] = new Jim2(); 
  }
  for(int i = 75; i < meb.length; i++){
   meb[i] = new Particle2(); 
  }
}

void draw(){
  background(0,0,0);
  for(int i = 0; i < jimb.length; i++){
    jimb[i].show();
    jimb[i].move();

}
for(int i = 0; i < meb.length; i++){
    meb[i].show();
    meb[i].move();
}
}


