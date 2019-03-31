void setup(){
  size(1280,720);

  stroke(255);
  strokeWeight(1);
  noStroke();
  noFill();
  rectMode(CENTER);
}

void draw(){
  background(0);
//  float w = random(500);
//float h = random(500);
//float x = random(width) - w/2;
//float y = random(width) - h/2;
  //rect(x,y,w,h);
  
  
  for(int i = 0; i < 40 ; i ++){
      for(int j = 0; j < 15 ; j ++){
        
        if(random(1)< 0.02){
        fill(255);
        noStroke();
      }else if(random(1)< 0.02){
        stroke(255);
      }else{
        noStroke();
        noFill();
      }
        float w = noise(j,i,frameCount/60.)*30;
        float h = noise(j,i + 999,frameCount/60.)*30;
        
        float x = (noise(j,i)*4  + noise(j,i)*9999)% (width+200)-100;
        float y = (noise(j+1,i)*4 * -frameCount + noise(j+1,i)*9999)% (height+200)-100;
        rect(x,y,w,h);
        
        //line(0,y,width,y);
    }
  }
  
  
  //if(frameCount < 600){
  //  saveFrame("hoge####.png");
  //}
}
