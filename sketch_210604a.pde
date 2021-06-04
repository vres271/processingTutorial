int arr[] = new int[32];
void setup() {
  frameRate(255);
  size(600,400, P2D);
  smooth(8);
  color col = 0xcc33ddee;
  background(col);
  fill(50);
  textSize(25);
  textFont(createFont("Arial",30,true));
  text("Hello World suka !!", 100, 100 );
  noStroke();
  fill(50);
  colorMode(HSB,255,255,255);
}

void mouseWheel(MouseEvent event) {
  size += event.getCount();
  size = constrain(size, 0, 100);

}

float size = 10;
int col1 = 0;
float x = 300, y = 200;
void draw() {
  //background(200);
  if(mousePressed) {
    col1++;
    if(col1>255) col1=0;
    switch (mouseButton) {
    case LEFT: fill(col1,255,255); break;
    case RIGHT: fill(200); break;    
    }
    x += (mouseX - x) * 0.01;
    y += (mouseY - y) * 0.01;    
    circle(x,y,size);
  }

  
}
