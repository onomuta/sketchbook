float scale = 20;
void setup(){
  size(1080,1080);
  strokeWeight(10);
  colorMode(HSB);
  stroke(255);
}
void draw(){
  background(0); 
  for(int i = 0; i < width / scale; i++){
    for(int j = 0; j < height/scale; j++){
       stroke(random(255) ,100,255);
      float x = i * scale;
      float y = j * scale;
      if(random(1) > 0.5){
        line(x, y, x+scale, y +scale);
      }else{
       line(x + scale, y, x, y +scale);
      }
    }
  }
}


void keyPressed() {
  if ( key == ' ' ) {
    save( System.nanoTime() + ".png" );
  }
}