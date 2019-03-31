void setup(){
  size(1280,720);

  stroke(255);
  strokeWeight(1);
  noStroke();
  //noFill();
  //rectMode(CENTER);
  //strokeCap(SQUARE);
}

void draw(){
  background(0);
//  float w = random(500);
//float h = random(500);
//float x = random(width) - w/2;
//float y = random(width) - h/2;
  //rect(x,y,w,h);
  
  int step = 3;
  for(int i = 0; i < step ; i ++){
      for(int j = 0; j < 20 ; j ++){
        
 
      
      
        float h = (noise(j,i*1.123)*4 * frameCount/0.4    + noise(j,i+ 12456)*2999)    % (height+200)-100;


       if(random(1)< 0.8){
        fill(255);
        noStroke();
        rect(i *width/step+4,h, width/step-8, 2);
      }else if(random(1)< 0.5){
        
      }else if(random(1)< 0.02){
        fill(255);
        rect(i *width/step+4,h, width/step-8, 180);
      }else{
        noFill();
        stroke(255);
        rect(i *width/step+4,h, width/step-8, 2);
      }
        
    }
  }
  
  
  //if(frameCount < 600){
  //  saveFrame("hoge####.png");
  //}
}
