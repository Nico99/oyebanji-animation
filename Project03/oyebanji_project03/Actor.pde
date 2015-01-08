//Actor Class
//Nicholas Oyebanji

class Actor {
  //fields
  float x;
  float y;
  int fillRed = 0; // colors for fill
  int fillGreen = 0;
  int fillBlue = 0; 
  int penRed = 0;
  int penGreen = 0;
  int penBlue = 0;
  float size = 50;
  int wid = 50;
  int hei = 50;
  float dx = 0;//int
  float dy = 0;

 
  float velocity = 0;//object has a speed
  float direction = 0;//object has a direction
  
  //constructor1
  public Actor(float xPos, float yPos) {
    x = xPos;
    y = yPos;
  }//create yourself at these position
  
  //constructor blank
  public Actor() {
  }
  
  public void setColor(int r, int g, int b) {
     fillRed = r;
    fillGreen = g;
   fillBlue = b; 
  }
  
  void setPenColor(int r, int g, int b) {
    penRed = r;
    penGreen = g;
    penBlue = b;
   
  }
  
  void move() {
    //computeVector();//which direction the object goes and how fast
    x += dx;
    y +=dy;
  } 
  
  void moveVector() {
    computeVector();//which direction the object goes and how fast
    x += dx;
    y +=dy;
    
  }
  void moveDown(int dy) {
    if(y < height-40) {
    y+=dy; 
    }
    
  }
  void moveUp(int dy) {
    
    y-=dy;
  } 
 
 void goTo(float x, float y) {
   this.x = x;
   this.y = y;
 } 
 
 void bounceEdge() {
  if(x > width || x < 0) {
    dx = dx * -1;
    //direction += 2 * (90-direction);
  } 
  if(y > height || y < 0) {
    dy = dy * -1;
   //direction += 2 * (0-direction); 
  }
   
 }
  
 void setDY(int yVel) {
   this.dy = yVel;
 }
 
 void setDX(int xVel) {
   this.dx = xVel; 
 }
 
 void drawRect() {
   rect(x, y, wid, hei);
 }
 
 void drawEllipse() {
 
   ellipse(x, y, wid, hei);
 }
 
 void drawTriangle() {
   triangle(x, y, x + wid, y, x+wid, y-hei);//sorry if confusing, but each (x,y) stands for each point 
 }
 
 public void computeVector() {
   dx = velocity * cos(radians(direction));
   dy = velocity * sin(radians(direction));
   
 }//end vector
 
 public void turn(float t) {
   direction +=t;//changes direction of object by t 
 }
 
 

  
  
}//end actor
