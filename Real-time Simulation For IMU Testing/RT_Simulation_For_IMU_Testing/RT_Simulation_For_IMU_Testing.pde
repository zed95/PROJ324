import processing.serial.*;

Serial myPort;  // Create object from Serial class

//These are used to store the x, y and z values sent.
float xVal = 0;
float yVal = 0;
float zVal = 0;
float val = 0; 

otPhidget Phidget1;
PImage bg;




//--------------------------------------Read-Data-From-Serial-Port--------------------------------------------
float readSerialData()
{
                                                 //Declare and initalise value that will store the data from the serial port.
  String x;
  
    //while(myPort.available() == 0) {}         //Wait until something is available
    if(myPort.available() > 0) {                //If something is available then continue
      x = myPort.readStringUntil('\n');         //Save the string number into variable x 
      println(x);                               //Print the strings in serial monitor
      if(x == null) {                           //Make the current value equal to the previous value when null is received.
       return val; 
      }
      //x = x.trim();                           //Remove the whitespace characters
      val = Float.parseFloat(x);                // read data from the serial port and convert it to a float and then store the result in val 
    }
  return val;
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




void setup()
{
  size(700,500,P3D); 
  // I know that the first port in the serial list on my mac
  // is Serial.list()[0].
  // On Windows machines, this generally opens COM1.
  // Open whatever port is the one you're using.
  //String portName = Serial.list()[0];                           //change the 0 to a 1 or 2 etc. to match your port
  
  myPort = new Serial(this, "COM5", 9600);                        //Connect to the port which Nucleo is connected to
  
  Phidget1 = new otPhidget();                                     //Create object to manipulate using the incoming data
  bg = loadImage("Background1.jpg");                               //save the background image in bg
}





void draw()
{
    background(bg);                           //Display background
    xVal = readSerialData();                  //get x value from serial port
   // yVal = readSerialData();                  //get y value from serial port
   // zVal = readSerialData();                  //get z value from serial port
   // println(xVal);
    
    DisplayAngle(xVal, 300, 425, "x");        //Display angle x in the simulation
    DisplayAngle(yVal, 300, 455, "y");        //Display angle y in the simulation
    DisplayAngle(zVal, 300, 485, "z");        //Display angle z in the simulation
    
    pushMatrix();                              //Create a new coordinate frame to maniuplate for Phidget2
      translate(width/2, height/2, 0);         //Translate the created coordinate frame which is occupied by the Phidget2 to 200x, 250y
      rotateX((2*PI/360)*xVal);                //Rotate object to the specified angle in the x-axis created coordinate frame
      rotateY((2*PI/360)*yVal);                //Rotate object to the specified angle in the y-axis in the created coordinate frame
      rotateZ((2*PI/360)*zVal);                //Rotate object to the specified angle in the z-axis in the created coordinate frame
      Phidget1.display();                      //Now that commands to manipulate the object have been specified, display the object in the created coordinate frame
    popMatrix();                               //Return to the original coordinate frame
}
