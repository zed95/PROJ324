import processing.serial.*;

Serial myPort;  // Create object from Serial class

//These are used to store the x, y and z values sent.
float xVal = 0;
float yVal = 0;
float zVal = 0;

otPhidget Phidget1;
PImage bg;

//---------Timer-Variables----------//
int PrevTime = 0;
int CurrTime = 0;
int dt = 0;
//---------Timer-Variables----------//

float xAngle = 0;
float yAngle = 0;
float zAngle = 0;
String Values;
float[] Gyros;



int num = 50;
float[] arrayOfFloats = new float[num];
float[] arrayOfFloats1 = new float[num];


float xx, y, z;
int flag = 0;
int counter = 0;



//--------------------------------------Read-Data-From-Serial-Port--------------------------------------------
void readSerialData()
{
                                                //Declare and initalise value that will store the data from the serial port.
    if(myPort.available() > 0) {                //If something is available then continue
      Values = myPort.readStringUntil('\n');    //Save the string number into variable x
      
      println(Values);                          //Print the strings in serial monitor
      
      if(Values == null) {                      //Make the current value equal to the previous value when null is received.
         Values = "0,0,0"; 
         Gyros[0] = xAngle;
         Gyros[1] = yAngle;
         Gyros[2] = zAngle;
      }
      else {
       /*
          -Split the string into parts when a comma is encountered
          -Convert each number string into float
          -store each number converted into an array.
      */
       Gyros = float(split(Values, ','));  
        
      }
  
    }
}
//--------------------------------------Read-Data-From-Serial-Port--------------------------------------------






//------------------------------------Display-The-Angle-Data-Received------------------------------------------
void DisplayAngle(float val, int xpos, int ypos, String axis )
{
  //float n = (2*PI/360)*val*100;
  
   pushMatrix();
     translate(xpos, ypos, 0);                //Translate the text to the specified position in the window
     textSize(14);                            //Set text size
     fill(255,0,0);                           //Set colour (RGB)
     text(axis + "-axis = " + val , 0, 0);    //Text to be displayed
   popMatrix();
}
//------------------------------------Display-The-Angle-Data-Received------------------------------------------




void setup() {
  initFile();
  myPort = new Serial(this, "COM6", 115200);                        //Connect to the port which Nucleo is connected to
  //  for(int x = 0; x <= 50; x++) {
  //    xx = x;
  //    y = x + 5;
  //    z = x + 4;
  //   write2File(xx, y, z); 
  //}
  //   saveFile(); 
}

//Place all that in a function
void draw() {
  if(flag == 1) {
      if(Values == null) {                      //Make the current value equal to the previous value when null is received.
       Values = "0,0,0"; 
       Gyros[0] = Gyros[0];
       Gyros[1] = Gyros[1];
       Gyros[2] = Gyros[2];
   }
   else {
       /*
          -Split the string into parts when a comma is encountered
          -Convert each number string into float
          -store each number converted into an array.
      */
       Gyros = float(split(Values, ','));   
   }
    
    
    
     flag = 0;
     write2File(Gyros[0], Gyros[1], Gyros[2]); 
     counter++;
     
     if(counter == 500) {
         saveFile();
         exit();
     }
  }
}


//void setup()
//{
//  size(700,500,P3D); 
//  // I know that the first port in the serial list on my mac
//  // is Serial.list()[0].
//  // On Windows machines, this generally opens COM1.
//  // Open whatever port is the one you're using.
//  //String portName = Serial.list()[0];                           //change the 0 to a 1 or 2 etc. to match your port
//  PrevTime = millis();
  
//  myPort = new Serial(this, "COM6", 115200);                        //Connect to the port which Nucleo is connected to
  
//  Phidget1 = new otPhidget();                                     //Create object to manipulate using the incoming data
//  bg = loadImage("Background1.jpg");                               //save the background image in bg
//}



//void draw()
//{
//    background(bg);                           //Display background
//    readSerialData();                         //Read the serial port 
//    delay(50);                                //give the poert
//    CurrTime = millis();
//    dt = CurrTime - PrevTime;
//    PrevTime = CurrTime;
    
  
    
//// nums[0] is now 8, nums[1] is now 67...
//   // println(xVal);
//     xAngle = Gyros[0];
//     yAngle = Gyros[1];
//     zAngle = Gyros[2];
     
    
//    DisplayAngle(xAngle, 300, 425, "x");        //Display angle x in the simulation
//    DisplayAngle(yAngle, 300, 455, "y");        //Display angle y in the simulation
//    DisplayAngle(zAngle, 300, 485, "z");        //Display angle z in the simulation
    
//    pushMatrix();                              //Create a new coordinate frame to maniuplate for Phidget2
//      translate(width/2, height/2, 0);         //Translate the created coordinate frame which is occupied by the Phidget2 to 200x, 250y
//      rotateX((2*PI/360)*xAngle);                //Rotate object to the specified angle in the x-axis created coordinate frame
//      rotateY((2*PI/360)*zAngle);                //Rotate object to the specified angle in the y-axis in the created coordinate frame
//      rotateZ((2*PI/360)*yAngle);                //Rotate object to the specified angle in the z-axis in the created coordinate frame
//      Phidget1.display();                      //Now that commands to manipulate the object have been specified, display the object in the created coordinate frame
//    popMatrix();                               //Return to the original coordinate frame
//}

void serialEvent(Serial p) { 
  
  Values = p.readStringUntil('\n');    //Save the string number into variable x
   flag = 1;
} 
