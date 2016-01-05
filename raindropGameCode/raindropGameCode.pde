//Declare  
ArrayList<Raindrop> particles = new ArrayList<Raindrop>();
Raindrop f;
Bucket d;
PVector mouse;
int gameCode, timer, dScore, fScore;

void setup() {
  size(1000, 700);   
  mouse = new PVector (mouseX, height-150);
  particles.add(new Raindrop(mouseX, mouseY));
  int gameCode = 0;
  int fScore = 0;
  int dScore = 0;
  d = new Bucket();
}

void draw() {     
  if (gameCode == 0) {
    background(15, 48, 105);
    textAlign(CENTER, TOP);
    String title = "DUCK GONE WILD! the hunger edition";
    textSize(75);
    text(title, 100, 80, 800, 300);
    String des = "This duck has gone wild! In order to calm your duck friend, help it eat 100 fish. If more than 50 fish escape its beak, then your duck friend will die!";
    textSize(30);
    text(des, 250, 370, 500, 700);
    int timer = millis();
    if (timer >= 000) {
      gameCode = 1;
    }
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
        dScore+=1;
      }
      if (p.loc.y >= height) {
        fScore+=1;
        particles.remove(i);
      }
    }
    fill(255);
    textAlign(LEFT, TOP);
    text(dScore, 0, 0);
    text(fScore, width-50, 0);

    if (dScore > 5) {
      gameCode = 2;
      dScore = 0;
      fScore = 0;
    }

    if (fScore > 10) {
      gameCode = 3;
      dScore = 0;
      fScore = 0;
    }
  }
  if (gameCode == 2) {
    background(15, 48, 105);
    textAlign(CENTER, TOP);
    String title = "YOU WIN!";
    textSize(75);
    text(title, 100, 80, 800, 300);
    String des = "You have calmed your duck friend. Even though you had to sacrifice some fish, the duck survived, and that's what matters <3 <3 :3 XD Click to SAVE MORE DUCKS!";
    textSize(30);
    text(des, 250, 300, 500, 700);
  }
  if (gameCode == 3) {
    background(15, 48, 105);
    textAlign(CENTER, TOP);
    String title = "YOU LOSE!";
    textSize(75);
    text(title, 100, 80, 800, 300);
    String des = "The fish have overtaken your duck friend. NEXT, THE WORLD! Look out for a FISH GONE WILD! the world domination edition COMING SOON (because you have failed your duck friend) >:-(   Click to try again!";
    textSize(30);
    text(des, 250, 300, 500, 700);
  }
}

void mousePressed () {
  if (gameCode == 2 || gameCode == 3) {
    gameCode = 1;
  }
}