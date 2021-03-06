import processing.serial.*;
Serial myPort;  // Create object from Serial class

//IMU class which stores orientation data
class IMU {
  float x = 0;
  float y = 0;
  float z = 0;
  
  IMU() {
    x = 0;
    y = 0;
    z = 0;    
  }
}

//create IMU objects
IMU IMU1 = new IMU();
IMU IMU2 = new IMU();
IMU IMU3= new IMU();

//=========================================================Serial-Setup======================================================================
void serialSetup() {
  myPort = new Serial(this, "COM1", 115200);                        //Connect to the port which CP2102 is connected to
  myPort.write(65);                                                 //Send first byte to cause the FPGA to send data request
}
//=========================================================Serial-Setup======================================================================

//===============================================Converting-Bytes-Back-To-Floats=============================================================
void Byte_to_Float() {
  
  //Combine the received bytes together and then convert back to float.
  hexint=hex(arrayOfBytes[4])+hex(arrayOfBytes[3])+hex(arrayOfBytes[2])+hex(arrayOfBytes[1]);
  xfloat = Float.intBitsToFloat(unhex(hexint));
  hexint=hex(arrayOfBytes[8])+hex(arrayOfBytes[7])+hex(arrayOfBytes[6])+hex(arrayOfBytes[5]);
  yfloat = Float.intBitsToFloat(unhex(hexint));
  hexint=hex(arrayOfBytes[12])+hex(arrayOfBytes[11])+hex(arrayOfBytes[10])+hex(arrayOfBytes[9]);
  zfloat = Float.intBitsToFloat(unhex(hexint));

  //based on ID received save the data into appropriate IMU object
  switch(arrayOfBytes[0]) {
    case 1:
      IMU1.x = xfloat;
      IMU1.y = yfloat;
      IMU1.z = zfloat;
    break;
   
    case 2:
      IMU2.x = xfloat;
      IMU2.y = yfloat;
      IMU2.z = zfloat; 
    break;
    
    case 3:
      IMU3.x = xfloat;
      IMU3.y = yfloat;
      IMU3.z = zfloat; 
    break;
    
    default:
    break;
  }

  
}//void Byte_to_Float()
//===============================================Converting-Bytes-Back-To-Floats=============================================================

////===============================================Serial-Interrupt-Service-Routine============================================================
//Called when new data arrives from serial port
void serialEvent(Serial p) { 
  
  Values = p.read();    //Save the string number into variable
  //If any of the three Ids are read first then data is in order and can be saved
   if(Values == 1 || Values == 2 || Values == 3) {
    inOrder = 1;
  }
  
  //Store data in array if data received is in order. 
  //This means that ID has to be received first
  if(inOrder == 1) {
    arrayOfBytes[arrPointer] = byte(Values);      //Convert to int then to char and then store in array
    arrPointer++;
  }
  
  //If all 13 samples have been read in then the data can be prcoessed and therefore the flag is raised to notify the program to process data
  if(arrPointer == 13) {
    flag = 1;                           //Raise the new data flag
    arrPointer = 0;                     //reset in arrPointer to prepare to receive another set of data 
    inOrder = 0;                        //reset in order flag to prepare to receive another set of data
  }
  
} 
////===============================================Serial-Interrupt-Service-Routine============================================================
