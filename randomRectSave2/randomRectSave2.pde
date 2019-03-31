void setup(){
  size(1280,720);

  stroke(0);
  strokeWeight(8);
  noStroke();
}

void draw(){
  background(0);
  float w = random(500);
float h = random(500);
float x = random(width) - w/2;
float y = random(width) - h/2;
  //rect(x,y,w,h);
  
  
  for(int i = 0; i < 2 ; i ++){
      for(int j = 0; j < 8 ; j ++){
        //fill(max(0,(random(800)-780)*100));
        rect(random(width)-100, j  * height / 8 +8 , max(0,random(800)-600), height/8-16);
    }
  }
  
  //if(frameCount < 450){
  //  saveFrame("hoge####.png");
  //}
}
