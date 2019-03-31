void setup(){
  size(1280,720);
}

void draw(){
  background(0);
  float w = random(500);
float h = random(500);
float x = random(width) - w/2;
float y = random(width) - h/2;
  rect(x,y,w,h);
  
  
  if(frameCount < 300){
    saveFrame();
  }
}
