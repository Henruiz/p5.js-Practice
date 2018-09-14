Star[] stars = new Star[600];
float speed;

//Setting the size of our window and the stars in it. 
void setup() {
  size (800, 800);
  
  //Creating all the stars from the array 
  for (int i = 0; i < stars.length; i++){
   stars[i] = new Star(); 
  }
}

//Making the stars appearing to move when hovering your mouse. 
void draw(){
  speed = map(mouseX, 0, width, 0, 55);
  background(0);
  translate(width/2, height/2);
  
  for (int i = 0; i < stars.length; i++){
   stars[i].update();
   stars[i].show();
  }
}
