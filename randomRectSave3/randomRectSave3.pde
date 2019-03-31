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
  
  
  for(int i = 0; i < 100 ; i ++){
      for(int j = 0; j < 8 ; j ++){
        //fill(max(0,(random(800)-780)*100));
        rect((noise(j,i)*4 * frameCount + noise(j,i)*9999)% width, j  * height / 8 +8 , 1, height/8-16);
    }
  }
  
  //if(frameCount < 600){
  //  saveFrame("hoge####.png");
  //}
}
