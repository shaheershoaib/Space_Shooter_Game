class Enemy{
 PImage alien;
 float xPos;
float yPos;
float incrY = 3;
  float prevXPos;
  public Enemy(){
   alien = loadImage("Alien.png");
   xPos = random(0,width-50);
 yPos = -50;
}
 
   public void display(){
   image(alien, xPos, yPos, 50,50);
     
  }
  
  public void move(){
    yPos+=incrY;
    
  }
  
  
 public void hit(){
   reset(false);
     incrY += 1;
 }
 
 
 public void reset(boolean resetIncrY){
    yPos = -50;
     prevXPos = xPos;
    do{
     xPos = random(0,width-50);
    } while(prevXPos == xPos);
     
     if(resetIncrY)
     incrY = 3;
 }
 
 
 
 
}
