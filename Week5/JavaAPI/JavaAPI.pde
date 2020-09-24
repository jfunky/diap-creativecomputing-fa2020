//import java.lang.Object;
//https://docs.oracle.com/javase/7/docs/api/java/awt/Toolkit.html#getScreenSize()
import java.awt.Toolkit;
import java.awt.Dimension ;

//create dimension object
Dimension screenSize ;

void setup(){
  size(600,600);
  
  // java - get screen size using the Toolkit class
  screenSize = Toolkit.getDefaultToolkit().getScreenSize();

  //Once you have the screen size as a Java Dimension object
  //you can use the getHeight() method to get the screen height:
  println("getHeight() method: " + screenSize.getHeight());
  //or call a height variable:
  println("height variable: " + screenSize.height);
  
  //similarly for width:
  println("getWidth() method: " + screenSize.getWidth());
  //or call a width variable:
  println("width variable: " + screenSize.width);
}
