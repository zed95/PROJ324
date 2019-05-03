//Create shape objects in which the design will be stored
PShape upperArm;    
PShape foreArm;
PShape Hand;

//variables for testing purposes
float rotX, rotY;

//Calss which stores the x, y and z rotations
class Rotation {
 float x;
 float y;
 float z;  
 
 Rotation() {
     x = 0;
     y = 0;
     z = 0;
 }
}

//class objects for each part of the arm
Rotation upperArmRot = new Rotation();
Rotation foreArmRot = new Rotation();
Rotation handRot = new Rotation();

//Rotation using mouse for testing purposes.
void mouseDragged(){
    rotY -= (mouseX - pmouseX) * 0.01;
    rotX -= (mouseY - pmouseY) * 0.01;
}


//Load the design into the shape objects and scale.
void initArm() {
  upperArm = loadShape("Simulation_Components\\Upper Arm.obj");
  upperArm.scale(10.0);
  
  foreArm = loadShape("Simulation_Components\\Forearm.obj");
  foreArm.scale(10.0);
  
  Hand = loadShape("Simulation_Components\\Hand.obj");
}


void DisplayAngle(float x, float y, float z, int xpos, int ypos, String armPart, int red, int green, int blue)
{
  //float n = (2*PI/360)*val*100;
  
   pushMatrix();
     translate(xpos, ypos, 0);                //Translate the text to the specified position in the window
     textSize(24);                            //Set text size
     fill(red,green,blue);                           //Set colour (RGB)
     text(armPart + " x: " + x , 0, 0);    //Text to be displayed
   popMatrix();
   
   pushMatrix();
     translate(xpos, ypos + 30, 0);                //Translate the text to the specified position in the window
     textSize(24);                            //Set text size
     fill(red,green,blue);                           //Set colour (RGB)
     text(armPart + " y: " + y , 0, 0);    //Text to be displayed
   popMatrix();
   
   pushMatrix();
     translate(xpos, ypos + 60, 0);                //Translate the text to the specified position in the window
     textSize(24);                            //Set text size
     fill(red,green,blue);                           //Set colour (RGB)
     text(armPart + " z: " + z , 0, 0);    //Text to be displayed
   popMatrix();
}


void rotateArm() {
    //Calculate how much each part has to rotate in the simulation based on obtained data
    getRotAngles();
    
    //Colour Background
    background(204);
    
    pushMatrix();
    //rotate everything by the upper arm rotation
    translate(width/2,height/3);    //Translate everything to middle of screen
    rotateX((-upperArmRot.y + 90)*PI/180);
    rotateY(upperArmRot.x*PI/180);
    //rotateZ(upperArmRot.z*PI/180);
    shape(upperArm, 0, 0);          //Display
    
    //rotate forearm and hand by the rotation of forearm
    translate(0,height/4);          //Translate forearm and hand lower then the upper arm
    rotateX((foreArmRot.y + upperArmRot.y)*PI/180);
    rotateY((-foreArmRot.x-upperArmRot.x)*PI/180);
    //rotateZ(foreArmRot.z*PI/180);
    shape(foreArm, 0, 0);          //Display

    //rotate hand by the rotation of the hand
    translate(0,height/5);          //Translate hand lower then the upper arm and forearm
    rotateX(handRot.y*PI/180);
    rotateY(handRot.x*PI/180);
    rotateZ(handRot.z*PI/180);
    shape(Hand, 0, 0);            //Display
  popMatrix(); 
  
  
DisplayAngle(upperArmRot.y, upperArmRot.x, upperArmRot.z, 10, 30, "Upper Arm", 255, 0, 0);
DisplayAngle(foreArmRot.y, foreArmRot.x, foreArmRot.z, 10, 150, "Forearm", 0, 130, 0);
DisplayAngle(handRot.y, handRot.x, handRot.z, 10, 270, "Hand", 0, 0, 170);
  
}


void getRotAngles() {
  //Uppper arm rotations are just saved since no other part preceeds it.
  upperArmRot.x = IMU1.x;
  upperArmRot.y = IMU1.y;
  upperArmRot.z = IMU1.y;
  
  //subtract the upper arm offset so that the rotation done by the forearm rotates the simulation forearm.
  foreArmRot.x = IMU2.x - upperArmRot.x;
  foreArmRot.y = IMU2.y - upperArmRot.y;
  foreArmRot.z = IMU2.z - upperArmRot.z;
  
  //subtract the upper arm and forearm offsets so that only rotation done by the actual hand rotates the simulation hand.
  handRot.x = IMU3.x - (upperArmRot.x + foreArmRot.x);
  handRot.y = IMU3.y - (upperArmRot.y + foreArmRot.y);
  handRot.z = IMU3.z - (upperArmRot.z + foreArmRot.z);
  
}
