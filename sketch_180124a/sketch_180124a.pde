float x = 0;
float y = 0;
float s = 20;
float iro = 255;
void setup(){
  size(400,400);
  background(50);
  noStroke();
}

void draw(){
  fill(iro);
  rect(x, y, s, s);
  x = x + s;
  
  if(x > width){
    x = 0;
    y = random(height);
    iro = random(255);
  } 
}

void keyPressed() {
  if ( key == ' ' ) {
    save( System.nanoTime() + ".png" );
  }
}