class Eagle extends Actor {
  
  public Eagle(int xPos, int yPos) {
    super(xPos, yPos);//calls the actor class
    size = .25;
  }
  
  public Eagle() {
    size =  .25;
  }
  
  void drawEagle() {
    
    float s = size;
    
    //the main body
    stroke(0,0,0);
    fill(165, 129, 28);
    ellipse(x + 350 * s, y + 320 * s, 500 *s, 500 * s);
    
    //left eyebrow
    stroke(0,0,0);
    fill(250, 250, 250);
    rect(x + 110 * s, y + 150 * s, 190 *s, 20 * s);
    
    //right eyebrow
    stroke(0,0,0);
    fill(250, 250, 250);
    rect(x + 410 * s, y + 150 * s, 190 * s, 20 * s);
    
    //left big eye
    stroke(0,0,0);
    fill(250, 250, 250);
    ellipse(x + 250 * s, y + 250 * s, 90 * s, 100 * s);
    
    //left black eye
    stroke(0,0,0);
    fill(0,0,0);
    ellipse(x + 250 * s, y + 250 * s, 50 * s, 50 * s);
    
    //left white dot
    stroke(250, 250, 250);
    fill(250, 250, 250);
    ellipse(x + 260 * s, y + 240 * s, 10 * s, 10 * s);
    
    //right big eye
    stroke(0,0,0);
    fill(250, 250, 250);
    ellipse(x + 450 * s, y + 250 * s, 90 * s, 100 * s);
    
    //right black eye
    stroke(0,0,0);
    fill(0,0,0);
    ellipse(x + 450 * s, y + 250 * s, 50 * s, 50 * s);
    
    //right white dot
    stroke(250, 250, 250);
    fill(250, 250, 250);
    ellipse(x + 460 * s, y + 240 * s, 10 * s, 10 * s);
    
    //yellow triangle( nose)
    stroke(0,0,0);
    fill(247,202,77);
    triangle(x + 300 * s, y + 320 * s, x + 400 * s, y + 320 * s, x + 350 * s, y + 460 * s);
    
    //left wing
    stroke(0,0,0);
    fill(165, 129, 28);
    triangle(x + 60 * s, y + 310 * s, x + 180 * s, y + 310 * s, x + 180 * s, y + 500 * s);
    
    //right wing
    stroke(0,0,0);
    fill(165, 129, 28);
    triangle(x + 540 * s, y + 310 * s, x + 650 * s, y + 310 * s, x + 540 * s, y + 500 * s);
    
    
    
    
    
    
    
    
  }
  
  
  
  
  
  
  
  
}
