class Cube{
 //Location of the cube and size
 PVector pos; 
 float r; 
 
 //Making the box given the cordinates 
 Cube(float x, float y, float z, float _r){
  pos = new PVector(x, y, z);
  r = _r ;
 }

 /*
 * Generating new cubes given as an Array to the Cube.
 * Returning the Array of cubes 
 */
ArrayList<Cube> generate(){
   ArrayList<Cube> cubes = new ArrayList<Cube>();
   for (int x = -1; x < 2 ; x++){
     for (int y = -1; y < 2 ; y++){
       for (int z = -1; z < 2 ; z++){
         int sum = abs(x) + abs(y) + abs(z);
         float R = r/3;
         if (sum >1){
             Cube c = new Cube(pos.x+x*R, pos.y+y*R, pos.z+z*R, R); 
             cubes.add(c); 
           }
         }
       }
     }  
     return cubes; 
 }
  
  //Making the cube appear
  void show(){
   pushMatrix();
   translate(pos.x, pos.y, pos.z);
   fill(255); 
   noStroke(); 
   box(r);  
   popMatrix();
  }
}
