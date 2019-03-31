void setup(){
  size(1280,720);

  stroke(255);
  strokeWeight(1);
  noStroke();
  //noFill();
  //rectMode(CENTER);
  //strokeCap(SQUARE);
  background(0);
}

void draw(){
  background(0);
//fill(0,20);
  //rect(0,0,width,height);
  fill(255);
  float r = random(500);
  ellipse(random(width),random(height),r,r);
  
  
  
  if(frameCount < 600){
    saveFrame("fuga####.png");
  }
}
