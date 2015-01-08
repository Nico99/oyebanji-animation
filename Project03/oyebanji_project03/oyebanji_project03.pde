//Project 03
//Nicholas Oyebanji



Skeleton mySkeleton = new Skeleton(400, 300);



void setup() {
  size(800, 600);
 background(240, 240, 240); 
  


 
}

void draw() {
   background(240, 240, 240); 
   
  mySkeleton.drawSkeleton();
  mySkeleton.act();
   
}
