class Spaceship extends Actor {
  public Spaceship() {
    size = .45;
  }
  
  void drawSpaceship() {
    float s = size;
    
    //wing
    rect(x + 200 * s, y + 200 * s, wid + 100 * s, hei + 50 * s);

  //propeller
  triangle(x + 250 * s, y + 200 * s, x + 300 * s, y+150 * s, x+300 * s, y+200 * s);
  
  //cockpit
  triangle(x+200 * s, y+200 * s, x+200 * s, y+250 * s, x+150 * s, y+250 * s);
  
  //side wing
  triangle(x+220* s, y+250 * s, x+255 * s, y+300* s, x+250 * s, y+250* s);
  }
  
  void fly() {
    x-=dx;
    if(x <-100) {
      x = 600;
  }
  }
    
  
 
}
