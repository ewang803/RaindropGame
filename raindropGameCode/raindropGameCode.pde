//Declare  
ArrayList<Raindrop> particles = new ArrayList<Raindrop>();
Raindrop f;
Bucket d;
PVector mouse;
int gameCode;

void setup() {
  size(1000, 700);   
  mouse = new PVector (mouseX, height-150);
  particles.add(new Raindrop(mouseX, mouseY));
  int gameCode = 0;
  d = new Bucket();
}

void draw() {     
  if (gameCode == 0) {
    background(15, 48, 105);
    textAlign(CENTER, TOP);
    String title = "DUCK GONE WILD! the hunger edition";
    textSize(75);
    text(title, 100, 20, 800, 300);
    String des = "This duck has gone wild! In order to calm your duck friend, help it eat 100 fish. If more than 50 fish escape its beak, then your duck friend will die!";
    textSize(30);
    text(des, 250, 310, 500, 700);
  }

  if (gameCode == 1) {
    background(15, 48, 105);
    if (frameCount%15 == 0) {
      particles.add(new Raindrop(mouseX, mouseY));
    }
    d.display();
    for (int i = particles.size()-1; i >= 0; i--) {  
      Raindrop p = particles.get(i);    
      p.display();                      
      p.fall();                         
      if (p.isDead(mouseX, height-50)) {                 
        particles.remove(i);
      }
    }
  }
}