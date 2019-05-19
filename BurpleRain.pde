int maxDrops = 500;
ArrayList<Drop> drops = new ArrayList<Drop>();
float windDirection;
float dropSpawnFrequency = 50;
float timePassedSinceLastCheck;
float timeCheck = millis();

void setup() {
  size(1920, 1080);
}

void draw() {
  background(230, 230, 250);
  timePassedSinceLastCheck = millis() - timeCheck;
  if (drops.size() <= maxDrops && timePassedSinceLastCheck > dropSpawnFrequency) {
    drops.add(new Drop());
    timeCheck = millis();
  }
  for (Drop drop: drops) {
    drop.show();
    drop.fall();
    drop.blow(windDirection);
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      windDirection = constrain(windDirection + 1, -15, 15);
    } else if (keyCode == LEFT) {
      windDirection = constrain(windDirection - 1, -15, 15);
    }
  }
}
