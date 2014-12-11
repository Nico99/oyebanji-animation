//Nicholas Oyebanji
//oyebanji_Project_01

//Define Variables and Function Here

//draws a square
void drawSquare(int x, int y, int w, int h) {
   w = h; 
   fill(5,5,5);
   rect(x, y, w, h); 
}

//draws a triangle
void drawTriangle(int x1, int y1, int x2, int y2, int x3, int y3) {
    
   triangle(x1, y1, x2, y2, x3, y3);
}

//draws a circle
void drawCircle(int x, int y, int w, int h) {
   ellipse(x, y, w, h); 
}

//draws a line
void drawLine(int x1, int y1, int x2, int y2) {
  line(x1, y1, x2, y2); 
}

//draws an arc
void drawArc(int x, int y, int w, int h, int start, int stop)  {
    arc(x, y, w, h, start, stop);
}

//draws a quad
void drawQuad(int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4) {
  fill(5, 242, 252);
  quad(x1, y1, x2, y2, x3, y3, x4, y4);
}


void setup() {
  size( 800, 500);
 background(5, 40, 252); 
}

void draw() {
   drawSquare( 4,  5, 40, 40);
}

 
