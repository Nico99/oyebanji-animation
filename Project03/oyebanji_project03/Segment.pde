//Segment Class
//Will extend Actor
class Segment extends Actor {
 
  float len;//length of the line
  float weight = 5; //thickness of the line
  
  //constuctors
  public Segment(float x, float y) {
   //call the super functions
   super(x, y); //calls the actor's constructor
   len = size;//default
  }
  
  public Segment(float x, float y, float d, float s) {
    super(x, y);
    direction  = d;
    len = s;
    
  }//d = directions and s = size
  
  public Segment() {
  }
  
  //draw line function
  public void drawLine() {
   //calculate the end points
   float x2 = x+ len * cos(radians(direction));
   float y2 = y + len * sin(radians(direction));
   stroke(penRed, penGreen, penBlue);
   strokeWeight(weight);
   line(x,y,x2,y2);
   
  }
  
  public float getEndX() {
    float x2 = x + len * cos(radians(direction));
     return x2; 
  }
  
  public float getEndY() {
    float y2 = y + len * sin(radians(direction));
     return y2; 
  }
  
  
}
