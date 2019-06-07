# F-Project
My Final Project
# Project Title and purpose

Happy Bird
   The purpose of this project was to create a fun and entertaining game for the users while using coding skills learned from over the entire year. Also the purpose of this project was to teach myself and learn more about certain fucntions and how they can help make your code better. Making Happy Bird was a fun and enteraining project to make and I learned how to use many new functions along the way. 

### Difficulties or opportunities you encountered along the way.

The toughest part of this project was coding the gravity of the bird. 

### Most interesting piece of your code and explanation for what it does.

```Java
void keyPressed() {
if (keyCode == LEFT) {
   tree= tree.getLeft();
   System.out.println(tree.getValue());
   String s=(String)tree.getValue();
   fill(155);
   textSize(50);
} else if (keyCode == RIGHT) {
   tree = tree.getRight();
   System.out.println(tree.getValue());
   String s=(String)tree.getValue();
   fill(155);
   textSize(50);
} else if (tree.getLeft()==null&&tree.getRight()==null) {
   System.out.println(tree.getValue());
   tree=t.returnTree();
}
}
```
This is the code that moves down the tree as decisions are made. It gets each value from both left and right and also casts the value to a String. If the progressions arrives at the leaf nodes, those values are printed.
## Built With

* [Processing](https://processing.org/) - The IDE used

## Authors

Cadin Rudoll

## Acknowledgments

Strong Thanks to processing.org for references and Mitchell Rudoll for helping with the coding


