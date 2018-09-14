float a = 0; 
Cube c; 

//An array of cubes called sponge
ArrayList<Cube> sponge; 

//Setting up the box in the window in 3d, and place it in them middle of the screen.
void setup(){
  size(400, 400, P3D);
  sponge = new ArrayList<Cube>(); 
  
  Cube c = new Cube(0, 0, 0, 200);
  sponge.add(c);
}

/*
* Method for when you press them mouse on the cube, it sub divides itself. 
*/ 
void mousePressed(){
  ArrayList<Cube> next = new ArrayList<Cube>();
  
  //For every Cube in the sponge, give me newBoxes.
  for (Cube c : sponge){
    ArrayList<Cube> newCubes = c.generate(); 
    next.addAll(newCubes); 
  }
  sponge = next;
}

//Drawing a cube like figure that is rotating slowing to show 3D perspective 
void draw(){
 background(0);
 stroke(255);
 noFill(); 
 lights();
 
 translate(width/2, height/2);
 rotateX(a*0.4);
 rotateY(a*0.4); 
 rotateZ(a*0.4);
 
  for (Cube c : sponge){
     c.show(); 
   }
 
 a += 0.01; 
}
