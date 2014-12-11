//Nicholas Oyebanji
//Project01


//define a function
void drawCar(int x, int y, int s) {
  //red spoiler 
  fill(255,5,5);
  rect(x + 23, y, 50 * s, 20* s);
  
  //body frame
  fill(5, 255, 90);
  rect(x + 60 * s, y + 25 * s, 260 * s, 45 * s);
  
  //back wheel
  stroke(0,0,0);
  fill(15, 35, 255);
  ellipse(x + 50 * s, y + 50 * s, 60 * s, 60 * s);
  
  //bonnet
  fill(5, 199, 255);
  triangle(x + 320 * s, y + 25* s, x + 320 * s, y + 70 * s, x + 400 * s, y + 70 * s);
  
  //front wheel
  fill(0,0,0);
  ellipse(x + 310 * s, y + 55 * s, 55 *s, 55 * s);

  
  //Air vent
  fill(5, 199, 255);
  triangle(x + 60 * s, y + 25 * s, x + 190 * s, y + 26 * s, x + 190 * s, y -10 * s);
  
  //Dash board
  stroke(244);
  fill(5, 255, 90);
  triangle(x + 270 * s, y + 5 * s, x + 270 * s, y + 25 * s, x + 320 * s, y + 25 * s); 

 
  //headlights
  fill(250, 242,0);
  ellipse(x + 380 * s, y + 65 * s, 5 * s, 5 * s); 
  //bigger headlight
  arc(x + 370 * s, y + 50 * s, 15 * s, 20 * s, PI/2, 3 * PI/2); 
  
  //light rays
  stroke(250, 242,0);
  triangle(x + 380 * s, y + 65 * s, x + 400 * s, y + 57 * s, x + 400 * s, y + 65 *s);
  line(x + 380 * s, y + 65 * s, x + 430 * s, y + 45 * s);
  line( x + 380 * s, y + 65 * s, x + 430 * s, y + 65 * s);
  
  //another air vent
  fill(250, 0, 221);
  quad( x + 85 * s, y + 60 * s, x + 150 *s, y + 50 *s, x + 150 * s, y + 70 * s, x + 85 * s, y + 70 *s);
  
  //vinyll
  fill(255,0,0);
  textSize(25);
  text("Banj 99", x + 160 * s, y + 50 * s);
  
  //sun
  fill(250, 242, 0);
  ellipse(x + 500 * s, y - 190 *s, 60 * s, 60 * s);
  
  //welcome sign
  textSize(34);
  fill(90,211, 88);
  text("Welcome to my first Project", x - 8 * s, y - 175 * s);
  
  //steering wheel
  fill(0);
  ellipse(x + 260 * s, y + 15 * s, 10 * s, 20 * s);
  //this connects the wheel to the dashboard
  noStroke();
  rect( x + 260 * s, y + 15 * s, 10*s, 5 * s);
  
  
  
}


void setup() {
  size(600, 400);
  drawCar(100, 200, 1);
 
}

void draw() {

}
