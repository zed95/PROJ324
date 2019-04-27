PShape upperArm;
PShape foreArm;
PShape Hand;

float rotX, rotY;

void mouseDragged(){
    rotY -= (mouseX - pmouseX) * 0.01;
    rotX -= (mouseY - pmouseY) * 0.01;
}


void initArm() {
  upperArm = loadShape("Upper Arm.obj");
  upperArm.scale(10.0);
  
  foreArm = loadShape("Forearm.obj");
  foreArm.scale(10.0);
  
  Hand = loadShape("Hand.obj");
}

void upperArmRot(float X, float Y, float Z) {
    pushMatrix();
    translate(width/2,height/4);
    rotateX(X);
    rotateY(-Y);
    shape(upperArm, 0, 0);

    translate(0,height/4);
    shape(foreArm, 0, 0);
    
    translate(0,height/5);
    shape(Hand, 0, 0);
  popMatrix(); 
  
}
