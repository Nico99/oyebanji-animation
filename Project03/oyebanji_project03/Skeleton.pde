class Skeleton extends Actor {
  
  //fields
  //Segment body;
  
  //body for the entire skeleton
  Segment body;
  
  //left side
  Segment leftUpLeg;
  Segment leftLowLeg;
  Segment leftShoulder;
  Segment leftUpArm;
  Segment leftLowArm;
  
  //right side
  Segment rightUpLeg;
  Segment rightLowLeg;
  Segment rightShoulder;
  Segment rightUpArm;
  Segment rightLowArm;
  
  //constructor for any skeleton
  public Skeleton(float xPos, float yPos) {
     super(xPos, yPos);//makes the actor x,y //the skeleton's x,y
    
    //initialize segments : left side
    body = new Segment(xPos, yPos, -90,150) ;
    body.weight = 10;
    body.setPenColor(4, 90, 80);
    
    leftUpLeg = new Segment(xPos, yPos, 135, 50);
    leftUpLeg.weight = 10;
    leftUpLeg.setPenColor(60,55,125);
   
    leftLowLeg =  new Segment(xPos, yPos, 90, 50);
    leftLowLeg.weight = 10;
    leftLowLeg.setPenColor(0,0,0);
    
    leftShoulder = new Segment(xPos, yPos, 180, 50);
    leftShoulder.weight = 10;
    leftShoulder.setPenColor(40,0,150);
    
    leftUpArm = new Segment(xPos, yPos, 135, 55);
    leftUpArm.weight = 10;
    leftUpArm.setPenColor(0,0,0);
    
    leftLowArm = new Segment(xPos, yPos, 90, 65);
    leftLowArm.weight = 10;
    leftLowArm.setPenColor(255,0,0);
    
    rightUpLeg = new Segment(xPos, yPos, 45, 50);
    rightUpLeg.weight = 10;
    rightUpLeg.setPenColor(0,0,0);
   
    rightLowLeg =  new Segment(xPos, yPos, 90, 50);
    rightLowLeg.weight = 10;
    rightLowLeg.setPenColor(0,0,0);
    
    rightShoulder = new Segment(xPos, yPos, 0, 50);
    rightShoulder.weight = 10;
    rightShoulder.setPenColor(155,0,60);
    
    rightUpArm = new Segment(xPos, yPos, 45, 55);
    rightUpArm.weight = 10;
    rightUpArm.setPenColor(0,0,0);
    
    rightLowArm = new Segment(xPos, yPos, 90, 65);
    rightLowArm.weight = 10;
    rightLowArm.setPenColor(255,0,0);
    
    
  }
  
  void drawSkeleton() {
    body.drawLine();
    
    //left upper leg
    leftUpLeg.goTo(body.x, body.y);
    leftUpLeg.drawLine();
    
    
    //left lower keg
    leftLowLeg.goTo(leftUpLeg.getEndX(), leftUpLeg.getEndY());
    leftLowLeg.drawLine();
    
    
    //left shoulder
    leftShoulder.goTo( body.getEndX(),  body.getEndY());
    leftShoulder.drawLine();
    
    //right shoulder
    rightShoulder.goTo(body.getEndX(), body.getEndY());
    rightShoulder.drawLine();
    
    //right upper arm
    rightUpArm.goTo(rightShoulder.getEndX(), rightShoulder.getEndY());
    rightUpArm.drawLine();
    
    //right lower arm
    rightLowArm.goTo(rightUpArm.getEndX(), rightUpArm.getEndY());
    rightLowArm.drawLine();
    
    //left upper arm
    leftUpArm.goTo(leftShoulder.getEndX(), leftShoulder.getEndY());
    leftUpArm.drawLine();
    
    //left lower arm
    leftLowArm.goTo(leftUpArm.getEndX(), leftUpArm.getEndY());
    leftLowArm.drawLine();
    
    //left upper leg
    rightUpLeg.goTo(body.x, body.y);
    rightUpLeg.drawLine();
    
    //left lower leg
    rightLowLeg.goTo(rightUpLeg.getEndX(), rightUpLeg.getEndY());
    rightLowLeg.drawLine();
    
  }
  
  void act() {
   if(keyPressed) {
    if(key == 'q') {
       leftShoulder.turn(1);
    }
    if(key == 'a') {
     leftShoulder.turn(-1); 
    }
    if(key == 'p') {
      rightShoulder.turn(-1);
    }
    if(key == 'l') {
      rightShoulder.turn(1); 
    }
    if(key == 'w') {
       leftUpArm.turn(1);
    }
    if(key == 's') {
      leftUpArm.turn(-1); 
    }
    if(key == 'o') {
      rightUpArm.turn(-1); 
    }
    if(key == 'k') {
      rightUpArm.turn(1); 
    }
    if(key == 'z') {
      leftLowArm.turn(1);
    }
    if(key == 'x') {
      leftLowArm.turn(-1);
    }
    if(key == 'n') {
      rightLowArm.turn(1); 
    }
    if(key == 'm') {
      rightLowArm.turn(-1); 
    }
    
    if(key == 'v') {
      body.turn(-1); 
    }
    if(key == 'b') {
      body.turn(1); 
    }
    if(key == 'e') {
      leftUpLeg.turn(1); 
    }
    if(key == 'd') {
      leftUpLeg.turn(-1); 
    }
    if(key == 'i') {
      rightUpLeg.turn(-1); 
    }
    if(key == 'j') {
      rightUpLeg.turn(1); 
    }
    if(key == 'u') {
      rightLowLeg.turn(1); 
    }
    if(key == 'h') {
      rightLowLeg.turn(-1);
    }
    if(key == 'r') {
      leftLowLeg.turn(-1); 
    }
    if(key == 'f') {
      leftLowLeg.turn(1); 
    }
    
   } 
    
    
  }
  
}
