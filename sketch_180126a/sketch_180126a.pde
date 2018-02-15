float x, y, w, h;
float x2, y2;

int frame = 0;
void setup(){
  size(1080, 1080);
  //smooth();
  background(0);
  //noStroke(); 
  colorMode(HSB);
  //strokeWeight(2);
  x = 0;
  y = 0;
  w = width;
  h = height;
  x2 = width;
  y2 = height;
}

float v = 100;
void draw(){
     
  

  if(w>0 && h>0){
    
    //if(w>h){
      w = w - random(10 + v) + random(v);
    //}else{
      h = h - random(10 + v) + random(v);
    //}
    
    if(frame %2 == 0){
      fill(random(255), 180 ,255);
     }else{
       fill(0);
     }
    x = (width - w )/ 2;
    y = (height - h )/ 2;
    rect(x , y, w, h);
    
    x2 = (width - h )/ 2;
    y2 = (height - w )/ 2;
    rect(x2 , y2, h, w);
  }
  frame ++;
  
}








void keyPressed() {
  if ( key == ' ' ) {
    save( System.nanoTime() + ".png" );
  }
}
  