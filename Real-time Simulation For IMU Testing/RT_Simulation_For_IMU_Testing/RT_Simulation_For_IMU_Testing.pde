

//These are used to store the x, y and z values sent.
float xVal = 0;
float yVal = 0;
float zVal = 0;


PImage bg;

//---------Timer-Variables----------//
int PrevTime = 0;
int CurrTime = 0;
int dt = 0;
//---------Timer-Variables----------//


int Values;
String oData;
float[] Gyros = new float[9];



int num = 50;
float[] arrayOfFloats = new float[num];
float[] arrayOfFloats1 = new float[num];


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



//--------------------------------------Read-Data-From-Serial-Port--------------------------------------------
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
        write2File(Gyros[0], Gyros[1], Gyros[2], Gyros[3], Gyros[4], Gyros[5], Gyros[6], Gyros[7], Gyros[8]);  
      }
  }
}
//--------------------------------------Read-Data-From-Serial-Port--------------------------------------------





void checkTime() {
  Duration = millis() - timeStart;
  if(Duration > 1000) {                    //Id no data has been read in 1 second then the connection is considerred lost
      myPort.write(7);                     //send dummy byte to try to restart the communication
      connectionStatus = "Disconnected";  //Display this in the simulation in the status
      timeStart = millis();               //Start counting again
  }

}


void setup() {
  size(1500, 1000, P3D);
  //Initialise arm objects
  initArm();
  //Create CSV file to whicht he data will be saved.
  initFile();  
  //setup serial communication
  serialSetup();
  //start counting
  timeStart = millis();
}

void draw() {
  //processSerialData();            //Used for saving data to file.
  if(flag == 1) {
     Byte_to_Float();              //convert the received data back to floating point
     flag = 0;                     //clear the new data flag
     myPort.write(65);             //send dummy byte to send another request for data
     timeStart = millis();         //restart the counter which is used to count if 1 second has passed.
     connectionStatus = "Connected";  //if the new data was recevied then the status is considered connected
     
  }
  rotateArm();      //Rotate the arm based on received data
  checkTime();      //check whether more than 1 second has passed
}
