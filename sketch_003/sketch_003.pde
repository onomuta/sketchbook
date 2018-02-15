//int field_width = screenWidth;
//int field_height = screenHeight;
float frame = 0;
int num = 500;

float[] s = new float[num]; //arc line speed
float[] weight = new float[num]; //arc line weight
float[] w = new float[num]; //arc scale
float[] l = new float[num]; //arc line length
float[] shift = new float[num]; //arc line shift
float[] lc = new float[num]; //arc line color
 
void setup(){
  //size(field_width, field_height);
  size(1080,1080);
  frameRate(60);
  noFill();
  smooth();
  colorMode(HSB);
  stroke(255);  
  // strokeCap(SQUARE);
  for(int i = 0 ; i < num ; i++) {
    w[i] = random(width) *1.3;
    weight[i] = random(20) + round(random(1)-0.3) *30 + 5;
    float hoge = random(1);
    s[i] = (random(0.1) - 0.05)+ (round(random(1))-0.5)/10;
    shift[i] = random(2*PI);
    l[i] = random(PI * 0.5) +0.1;
    if(i%2 == 0){
       lc[i] = random(40) + 210;
     }else{
       lc[i] = random(40) + 110;
     }  
  }
}

void draw(){
  background(0); 
  for(int i = num - 1 ; i > 0 ; i--) {
    
    stroke(255);
    strokeWeight(i*i*2/num + 2 +4);
    arc(width/2, height/2, w[i] , w[i],  shift[i] - 0.01 , l[i] + shift[i] + 0.01 );
    
    stroke(lc[i],150 , 255);
    strokeWeight(i*i*2/num + 2);
    shift[i] += s[i];
    arc(width/2, height/2, w[i] , w[i],  shift[i] , l[i] + shift[i] );
    
  }
  frame++;
}

void keyPressed() {
  if ( key == ' ' ) {
    save( System.nanoTime() + ".png" );
  }
}