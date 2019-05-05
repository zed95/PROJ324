

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
int Values;
String oData;
float[] Gyros;



int num = 50;
float[] arrayOfFloats = new float[num];
float[] arrayOfFloats1 = new float[num];


float xx, y, z;
int flag = 0;
int counter = 0;

//-------------Byte2Float------------------//
String[] arrayOfStrings = new String[13];
Byte[] arrayOfBytes = new Byte[13];
Byte[] xBytes = new Byte[4];
Byte[] yBytes = new Byte[4];
Byte[] zBytes = new Byte[4];
float xfloat, yfloat, zfloat;
String hexint;
int arrPointer;
int inOrder;

int cnt = 0;
int timeStart;
int Duration;
//-------------Byte2Float------------------//



////--------------------------------------Read-Data-From-Serial-Port--------------------------------------------
///*
//  -Find a way to not include the serial data that is a null into the csv file as this messes up the data set.
//*/
void processSerialData() {
  if(myPort.available() > 0) {
    oData = myPort.readStringUntil('\n');
      if(oData == null) {                      //Make the current value equal to the previous value when null is received.

      }
      else {
       /*
          -Split the string into parts when a comma is encountered
          -Convert each number string into float
          -store each number converted into an array.
      */
       Gyros = float(split(oData, ','));    
      }
  }
  write2File(Gyros[0], Gyros[1], Gyros[2]);  
}
////--------------------------------------Read-Data-From-Serial-Port--------------------------------------------








void checkTime() {
  Duration = millis() - timeStart;
  if(Duration > 1000) {
      myPort.write(7);
      connectionStatus = "Disconnected";
      timeStart = millis();
  }

}



void setup() {
    size(1500, 1000, P3D);
  //Create CSV file to whicht he data will be saved.
  initArm();
  initFile();  
  serialSetup();
  timeStart = millis();
}

//Place all that in a function
void draw() {
  processSerialData();
  if(flag == 1) {
     //extract the values from a string, convert to a float and place into an array.
     //Clear the new data flag
     Byte_to_Float();
     flag = 0;        
     myPort.write(65);
     timeStart = millis();
     connectionStatus = "Connected";
     
     //Write the received data to file
       
  }
  rotateArm();
  checkTime();
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
