import processing.serial.*;
Serial myPort;  // Create object from Serial class

//=========================================================Serial-Setup======================================================================
void serialSetup() {
  myPort = new Serial(this, "COM7", 115200);                        //Connect to the port which Nucleo is connected to
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
  //if(xfloat != yfloat || xfloat != zfloat || zfloat != yfloat) {
  //  println("Mismatch"); 
  //}
  if(arrayOfBytes[0] == 2) {
    println(xfloat, yfloat, zfloat);
  }
  
}//void Byte_to_Float()
//===============================================Converting-Bytes-Back-To-Floats=============================================================

//===============================================Serial-Interrupt-Service-Routine============================================================
//Called when new data arrives from serial port
void serialEvent(Serial p) { 
  
  //Values = p.readStringUntil('\n');    //Save the string number into variable x
  Values = p.read();    //Save the string number into variable x
  if(Values == 1 || Values == 2 || Values == 3) {
    inOrder = 1;
    //println("IMU = " + Values);
  }
  
  //Store data in array
  if(inOrder == 1) {
    arrayOfBytes[arrPointer] = byte(Values);      //Convert to int then to char and then store in array
    arrPointer++;
  }
  
  if(arrPointer == 1) {
   //  println("===Start==="); 
  }
  
    //println(Values);
  
  if(arrPointer == 13) {
    flag = 1;                           //Raise the new data flag
    arrPointer = 0;
    inOrder = 0;
  //  println("====END==="); 
  }
  
} 
//===============================================Serial-Interrupt-Service-Routine============================================================
