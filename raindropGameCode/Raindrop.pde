class Raindrop {
  PVector loc, vel;
  int diam;

  Raindrop(float x, float y, int tDiam) {
    diam = tDiam;
    loc = new PVector(random(width), 0);
    vel = new PVector(0, random(10));
  }

  void display() {
    noStroke();
    fill(loc.x-random(100), loc.y - random(100), random(255), 60);
    ellipse(loc.x, loc.y, diam, diam);
  }

  void fall() {
    loc.add(vel);
    vel.mult(1.5);
    vel.limit(30);
  }

  boolean isInContactWith(PVector mouse) {
    if (loc.dist(mouse) <= diam/2) {
      return true;
    } else return false;
  }

  void reset() {
    loc = new PVector(random(width), 0);
    ellipse(loc.x, loc.y, diam, diam);
    vel = new PVector(0, random(10));
  }
}