float size = 20;
void setup(){
  size(1080,540);
  background(0);
  stroke(255);
  noFill();
}
void draw(){
  background(0);
  
  for(int i =  0; i < width / size; i++){
    for(int j =  0; j < height / size; j++){
      for(int k =  0; k < 3; k++){       
        rect( i*size, j * size, random(size - 2), random(size - 2));
      }
    }
  } 
}
    
void keyPressed() {
  if ( key == ' ' ) {
    save( System.nanoTime() + ".png" );
  }
}