

class otPhidget {      //Orientation Tracker Phidget
  PShape side1,side2, side3, side4, side5, side6, Phidgetx;
  PImage img = loadImage("BottomPhidget.jpg");
  PImage tph = loadImage("TopPhidget.jpg");
  PImage sph = loadImage("SidePhidget.jpg");

  
  
otPhidget() {   
  Phidgetx = createShape(GROUP);
  side1 = createShape();
  side1.beginShape();
  side1.texture(sph);
  side1.vertex(-65, 7.5, -75, 0, 0);
  side1.vertex(65, 7.5, -75, 1536, 0);
  side1.vertex(65, -7.5, -75, 1536, 92);
  side1.vertex(-65, -7.5, -75, 0, 92);
  
  side1.endShape(CLOSE);
  //--------------------------------------------------------
  side2 = createShape();
  side2.beginShape();
  //1536x92
  side2.texture(sph);
  side2.vertex(-65, 7.5, 75, 0, 0);
  side2.vertex(65, 7.5, 75, 1536, 0);
  side2.vertex(65, -7.5, 75, 1536, 92);
  side2.vertex(-65, -7.5, 75, 0, 92);
  
  side2.endShape(CLOSE);
 //----------------------------------------------------------
  side3 = createShape();
  side3.beginShape();
  side3.texture(sph);
  side3.vertex(-65, -7.5, 75, 0, 0);
  side3.vertex(-65, 7.5, 75, 1536, 0);
  side3.vertex(-65, 7.5, -75, 1536, 92);
  side3.vertex(-65, -7.5, -75, 0, 92);
  
  side3.endShape(CLOSE);
 //------------------------------------------------------------
  side4 = createShape();
  side4.beginShape();
  side4.texture(sph);
  side4.vertex(65, -7.5, 75, 0, 0);
  side4.vertex(65, 7.5, 75, 1536, 0);
  side4.vertex(65, 7.5, -75, 1536, 92);
  side4.vertex(65, -7.5, -75, 0, 92);
  
  side4.endShape(CLOSE);
 //------------------------------------------------------------------ 
  side5 = createShape();
  side5.beginShape();
  side5.texture(tph);
  //844x1000
  side5.vertex(-65, 7.5, 75, 0, 1000);
  side5.vertex(65, 7.5, 75, 844, 1000);
  side5.vertex(65, 7.5, -75, 844, 0);
  side5.vertex(-65, 7.5, -75, 0, 0);
  
  side5.endShape(CLOSE);
//-------------------------------------------------
  side6 = createShape();
  side6.beginShape();
  side6.texture(img);
 
  side6.vertex(-65, -7.5, 75, 704, 0);
  side6.vertex(65, -7.5, 75, 0, 0);
  side6.vertex(65, -7.5, -75, 0, 808);
  side6.vertex(-65, -7.5, -75, 704, 808);
 
  side6.endShape();
  
  // Make two shapes


/*
The centre of the object I create will be in the upper left corner of the window I create.
Therefore If I want to have rotation about the centre of the object I need to create the 
object such that the centre of the object is the top left corner of the screen.
*/

  // Add the 6 "child" shapes to the parent group
  Phidgetx.addChild(side1);
  Phidgetx.addChild(side2);
  Phidgetx.addChild(side3);
  Phidgetx.addChild(side4);
  Phidgetx.addChild(side5);
  Phidgetx.addChild(side6);
  shapeMode(CORNER);
  
  }
  
  
   void display()
 {
  shape(Phidgetx); 
 }
}
