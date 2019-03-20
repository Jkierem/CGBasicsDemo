PVector translate = new PVector(10,10);
PVector origin = new PVector(0,0);
PVector dot = new PVector(1,3);

void setup(){
  size(480,512);
  background(255);
}

void drawXAxis(){
  strokeWeight(2);
  PVector xTip = PVector.add( origin , new PVector(300,0) );
  PVector upperWing = PVector.add( xTip , new PVector(-5,-5) );
  PVector lowerWing = PVector.add( upperWing , new PVector(0,10) );
  drawLine( origin , xTip );
  drawLine( xTip , upperWing );
  drawLine( xTip , lowerWing );
}

void drawAxis(){
  pushMatrix();
  drawXAxis();
  rotate(radians(-270)); //not 90 to prevent line from not being straight
  drawXAxis();
  popMatrix();
}

void draw(){
  pushMatrix();
  translate(translate.x , translate.y);
  drawAxis();
  scale(2);
  
  popMatrix();
}
