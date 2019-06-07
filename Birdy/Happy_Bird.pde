Bird bird;
Obstacle[] obstacles = new Obstacle[2];
Score score;
PImage backgroundImage;
boolean gameStarted = false;
boolean gameOver = false;

void setup() {
  size(288,384);

  bird = new Bird(width/2, 0);
  obstacles[0] = new Obstacle(width, random(100, height-100));
  obstacles[1] = new Obstacle(width*1.5+25, random(100, height-100));
  score = new Score();
  backgroundImage = loadImage("background.jpg");
  
}

void draw() {
  background(backgroundImage);
  
//game over info
  if (gameOver) {
    drawGameOver();
  } else if (!gameStarted) {
    drawStartScreen();
  } else {
    bird.draw();
    for(Obstacle o : obstacles) { o.draw(); }
    score.draw();
    detectCollision();
  }
}


void mousePressed() {
  action();
}

void keyPressed() {
  action();
}
//resets game if game is over
void action() {
  if (gameOver) {
    gameOver = false;
    bird.reset();
    for(Obstacle o : obstacles) { o.reset(); }
    score.reset();
  } else if (!gameStarted) {
    gameStarted = true;
  } else {
    bird.jump();
  }
}

//draws gameover on your screen
void drawGameOver() {
  rectMode(CENTER);
  textSize(32);
  textAlign(CENTER, CENTER);
  fill(0);
  text("Game over!",
       width/2, height/2,
       width, 100);
}
//draws the start screen 
void drawStartScreen() {
  rectMode(CENTER);
  textSize(32);
  textAlign(CENTER, CENTER);
  fill(0);
  text("Click to start",
       width/2, height/2,
       width, 100);
}


void detectCollision() {
  if (bird.y > height || bird.y < 0) {
    gameOver = true;
  }
//if you pass an obstacle you get a point
  for(Obstacle obstacle : obstacles) {
    if (bird.x - bird.size/2.0 > obstacle.topX + obstacle.w) {
      score.increase();
    }

    if (obstacle.topX + obstacle.w < 0) {
      obstacle.reposition();
      score.allowScoreIncrease();
    }

    if (obstacle.detectCollision(bird)) {
      gameOver = true;
    }
  }
}
