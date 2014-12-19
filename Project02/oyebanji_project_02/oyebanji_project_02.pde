//Nicholas Oyebanji
//Actor Classs: Project 01
//Main clss

//Objects
Car ferrari = new Car();
Actor test = new Actor(300, 200);
Spaceship babe = new Spaceship();
Actor square = new Actor();
Actor circle = new Actor();
Actor triangle = new Actor();

void setup() {
  size(600, 400);
 background(240,240); 
 //ferrari's attributes
 ferrari.dx = 5;
 ferrari.x = 50;
 ferrari.y = 360;
 
 //square attritubes
 square.x = 90;
 square.y= 40;
 square.wid = 70;
 square.hei = 70;
 square.fillRed = 0;
 square.fillBlue = 0;
 square.fillGreen = 250;
 square.dx = 9;
 square.dy = 3;

 
 //babe's attributes
 babe.x = 50;
 babe.y = 10;
 babe.fillRed = 90;
 babe.fillBlue = 180;
 babe.fillGreen = 30;
 babe.size = .45;
 babe.wid = 3;
 babe.hei = 3;
 babe.dx= 5;
 babe.dy = 0;
 babe.velocity = 7;
 babe.direction = 45;
 
 //circle's attributes
 circle.x = 70;
 circle.y = 300;
 circle.wid = 10;
 circle.hei = 15;
 circle.dx = 5;
 circle.dy = 10;
 circle.fillRed = 0;
 circle.fillGreen = 0;
 circle.fillBlue = 140;
 
 //vector's attributes
 test.fillRed = 155;
 test.fillBlue = 45;
 test.fillGreen = 45;
 test.velocity = 6;
 test.direction = 45;
 
 //triangle's attributes
 triangle.x = 90;
 triangle.y = 60;
 triangle.dx = 15;
 triangle.dy = 30;
 triangle.fillRed = 50;
 triangle.fillBlue = 90;
 triangle.fillGreen = 155;
 
 
}//end setup

//draw function
void draw() {
   background(240, 240, 240); 
   
   ferrari.drawCar();
   ferrari.control();
   
   test.setColor();
   test.moveVector();
   test.drawEllipse();
   test.turn(5);
   
   
   babe.drawSpaceship();
   babe.fly();
   
   
    square.setColor();
    square.drawRect();
    square.move();
    square.bounceEdge();
    
    circle.setColor();
    circle.drawEllipse();
    circle.move();
    circle.bounceEdge();
    
    triangle.setColor();
    triangle.drawTriangle();
    triangle.move();
    triangle.bounceEdge();
}


