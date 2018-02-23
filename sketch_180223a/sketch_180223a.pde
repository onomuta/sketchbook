float size = 20;
int num = 20;

float[] rect_y = new float[num];
float[] rect_ys = new float[num];
float[] rect_h = new float[num];
float[] rect_r = new float[num];
int[] rect_c = new int[num];



void setup(){
  //size(1280,720);
  size(1080,1080);
  frameRate(60); 
  background(0);
  noStroke();
  noFill();
  for(int i = 0; i < num; i++){
    rect_y[i] = random(height +200);
    rect_ys[i] = random(15) + 2;
    rect_h[i] = random(size);
    rect_r[i] = random(0.2) -0.1;
    rect_c[i] = floor(random(2.5));
  }
}
void draw(){
  //background(0);
  
 
  for(int skip =  0; skip < 1; skip++){
    for(int i =  0; i < num; i++){
      rect_y[i] = rect_y[i] - rect_ys[i];
      if(rect_y[i] < 0 - rect_h[i] - 200){
        reCreate(i);
      }
  
     switch(rect_c[i]) {
        case 0:
          fill(0,30,40);
          break;
        case 1: 
          fill(255,0, 0);
          break;
        default:
          //fill(0);
          fill(255);
          break;
      }
      
      pushMatrix();      
        translate(0, rect_y[i]);
        rotate(rect_r[i]);
        rect(0 - 50, 0, width + 100, rect_h[i]);
      popMatrix();
    }
  }
}
    
void reCreate(int i){
  rect_y[i] = height + 200;
  rect_h[i] = random(size);
  rect_r[i] = random(0.2) -0.1;
  rect_ys[i] = random(15) + 2;
  rect_c[i] = floor(random(2.5));
}     
 
void keyPressed() {
  if ( key == ' ' ) {
    save( System.nanoTime() + ".png" );
  }
}