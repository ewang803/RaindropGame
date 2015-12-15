//Declare
PVector mouse;  
Raindrop r;    

void setup() {
  size(1000, 700);
  mouse = new PVector();                
  r = new Raindrop(random(width), 0, int(random(40,100)));  
}

void draw() {
  mouse.set(mouseX, mouseY);             
  background(0);
  r.fall();         
  r.display();      
  if (r.isInContactWith(mouse)) {      
    r.reset();                        
  }
  if (r.loc.y >= height + r.diam/2) {    
    r.reset();                           
  }
}