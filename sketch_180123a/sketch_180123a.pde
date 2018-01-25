void setup(){
  size(1080, 1080);
  smooth();
  background(0);
  stroke(255); 
  strokeWeight(2);
}


void draw(){
    background(0);
 for(int i = 0 ; i < 9; i++){
   float y = 0;
    while(y < height){
      float add = random(50);
      y += add;
      float size = random(1);
      fill(0);
      ellipse(i * width/8, y,  size * size *width/4, size * size*width/4/4);
    }
  }
  
}





void keyPressed() {
  if ( key == ' ' ) {
    save( System.nanoTime() + ".png" );
  }
}
  