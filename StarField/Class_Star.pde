//creating class for Star
class Star {

 //Local variables for the position of the star 
 float x;
 float y;
 float z;
 
 float pz; 

  //When creating the star objects it will be within the window. 
  Star() {
     x = random(-width, width);
     y = random(-height, height);
     z = random(width); 
     pz = z;
  }
  
  //Updates the speed of the stars when hovering your mouse over. 
  void update(){
    z = z - speed; 
    if ( z < 1){
      z = width; 
      x = random(-width, width);
      y = random(-height, height);
      pz = z;
    }
  }
  
  //Displaying the stars in the window random and based on their position. 
  void show(){
   fill(255); 
   noStroke(); 
   
   float sx = map(x / z, 0, 1, 0, width);
   float sy = map(y / z, 0, 1, 0, height);
   
   float r = map(z, 0, width, 16, 0); 
   ellipse(sx, sy, r, r);
   
   float px = map(x / pz, 0, 1, 0, width);
   float py = map(y / pz, 0, 1, 0, height);
   
   pz = z; 
   
   stroke(255); 
   line(px, py, sx, sy);    
  }  
}
