# F-Project
My Final Project
# Project Title and purpose

Happy Bird:
   The purpose of this project was to create a fun and entertaining game for the users while using coding skills learned from over the entire year. Also the purpose of this project was to teach myself and learn more about certain fucntions and how they can help make your code better. Making Happy Bird was a fun and enteraining project to make and I learned how to use many new functions along the way. 

### Difficulties or opportunities you encountered along the way.

The toughest part of this project was coding the gravity of the bird. 

### Most interesting piece of your code and explanation for what it does.
```Java 
int gamestate = 0;


void draw() {
  if(gamestate == 1) {
    image(backgroundImage, 0,0,width,height);
  }else{
    background(startscreenImage);
  }
 
  void mousePressed() {
  action();
  if(gamestate == 0) {
  }
gamestate = 1;
  }
```

This is the code that changes from the Start Screen of the game to the Background image and you are actually able to play. Basically the if statement within the void draw basically says that if the gamestate = 1 then it shows the background image of the game but if it does not and the gamestate = 0 then it shows the start screen. Within the mousepressed function that is what actually changes the gamestate between the two.

## Built With

* [Processing](https://processing.org/) - The IDE used

## Authors

Cadin Rudoll

## Acknowledgments

Strong Thanks to processing.org for references and Mitchell Rudoll for helping with the coding


